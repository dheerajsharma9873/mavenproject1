package com.ShoeRack.Service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ShoeRack.dao.CartItemDao;
import com.ShoeRack.model.CartItem;
@Service
public class CartItemServiceImpl implements CartItemService{
	@Autowired
	private CartItemDao cartItemDao;
		public void addCartItem(CartItem cartItem) {
		  cartItemDao.addCartItem(cartItem);
			
		}

}
