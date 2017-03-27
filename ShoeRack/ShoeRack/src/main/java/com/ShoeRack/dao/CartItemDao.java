package com.ShoeRack.dao;

import com.ShoeRack.model.Cart;
import com.ShoeRack.model.CartItem;

public interface CartItemDao {
	void addCartItem(CartItem cartItem);
	CartItem getCartItem(int cartItemId);
	void removeCartItem(CartItem cartItem);
	void removeAllCartItems(Cart cart);

}
