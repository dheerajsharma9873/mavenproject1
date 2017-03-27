package com.ShoeRack.Service;

import com.ShoeRack.model.Cart;
import com.ShoeRack.model.CartItem;

public interface CartItemService {
	void addCartItem(CartItem cartItem);
	CartItem getCartItem(int cartItemId);
	void removeCartItem(CartItem cartItem);
	void removeAllCartItems(Cart cart);
	
}
