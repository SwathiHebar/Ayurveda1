package swathi.service;

import swathi.model.Cart;

public interface CartService {

    Cart getCartById (int cartId);

    void update(Cart cart);
}
