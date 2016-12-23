package swathi.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import swathi.model.Product;
import swathi.service.ProductService;

import java.io.IOException;
import java.util.List;


@Controller
@RequestMapping("/product")
public class ProductController {

    @Autowired
    private ProductService productService;

    @RequestMapping("/productList/beauty")
    public String getbeautyProducts(Model model) {
        List<Product> products = productService.getbeautyProductList();
        model.addAttribute("products", products);

        return "productList";
    }
    @RequestMapping("/productList/health")
    public String gethealthProducts(Model model) {
        List<Product> products = productService.gethealthProductList();
        model.addAttribute("products", products);

        return "productList";
    }

    @RequestMapping("/productList/Other")
    public String getotherProducts(Model model) {
        List<Product> products = productService.getotherProductList();
        model.addAttribute("products", products);

        return "productList";
    }
    
    @RequestMapping("/product/addProduct")
    public String addProduct(Model model) {
        Product product = new Product();
        model.addAttribute("product", product);

        return "addProduct";
    }

    @RequestMapping("/viewProduct/{productId}")
    public String viewProduct(@PathVariable int productId, Model model) throws IOException {
        Product product=productService.getProductById(productId);
        model.addAttribute("product", product);

        return "viewProduct";
    }

    }
