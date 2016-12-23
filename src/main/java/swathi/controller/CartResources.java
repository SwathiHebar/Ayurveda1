package swathi.controller;

import swathi.model.Cart;
import swathi.model.CartItem;
import swathi.model.Customer;
import swathi.model.Product;
import swathi.service.CartItemService;
import swathi.service.CartService;
import swathi.service.CustomerService;
import swathi.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.web.bind.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.List;



@Controller
@RequestMapping("/rest/cart")
public class CartResources {

    @Autowired
    private CartService cartService;

    @Autowired
    private CartItemService cartItemService;

    @Autowired
    private CustomerService customerService;

    @Autowired
    private ProductService productService;

    @RequestMapping("/{cartId}")
    public @ResponseBody
    Cart getCartById (@PathVariable(value = "cartId") int cartId) {
        return cartService.getCartById(cartId);
    }

    @RequestMapping(value = "/add/{productId}", method = RequestMethod.PUT)
    @ResponseStatus(value = HttpStatus.NO_CONTENT)
    public void addItem (@PathVariable(value ="productId") int productId, @AuthenticationPrincipal User activeUser) {
    System.out.println("Hello Before Cart Add");
    	try{
    	System.out.println(1);
        Customer customer = customerService.getCustomerByUsername(activeUser.getUsername());
        System.out.println(1);
        Cart cart = customer.getCart();
        System.out.println(2);
        Product product = productService.getProductById(productId);
        System.out.println("Product Id : " + product.getProductId());
        System.out.println(3);
        List<CartItem> cartItems = cart.getCartItems();
        System.out.println(4);

        for (int i=0; i<cartItems.size(); i++) {
        	System.out.println(5);
            if(product.getProductId()==cartItems.get(i).getProduct().getProductId()){
            	System.out.println(6);
                CartItem cartItem = cartItems.get(i);
                cartItem.setQuantity(cartItem.getQuantity()+1);
                cartItem.setTotalPrice(product.getProductPrice()*cartItem.getQuantity());
                cartItemService.addCartItem(cartItem);
                System.out.println(7);
                return;
            }
        }

        CartItem cartItem = new CartItem();
        cartItem.setProduct(product);
        cartItem.setQuantity(1);
        cartItem.setTotalPrice(product.getProductPrice()*cartItem.getQuantity());
        cartItem.setCart(cart);
        cartItemService.addCartItem(cartItem);
    }catch(Exception ex)
    {
    	System.out.println("Exception : " + ex.getMessage());
    }
    }

    @RequestMapping(value = "/remove/{productId}", method = RequestMethod.PUT)
    @ResponseStatus(value = HttpStatus.NO_CONTENT)
    public void removeItem (@PathVariable(value = "productId") int productId) {
        CartItem cartItem = cartItemService.getCartItemByProductId(productId);
        cartItemService.removeCartItem(cartItem);

    }

    @RequestMapping(value = "/{cartId}", method = RequestMethod.DELETE)
    @ResponseStatus(value = HttpStatus.NO_CONTENT)
    public void clearCart(@PathVariable(value = "cartId") int cartId) {
        Cart cart = cartService.getCartById(cartId);
        cartItemService.removeAllCartItems(cart);
    }

    }
