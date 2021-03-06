package com.ShoeRack.Service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ShoeRack.dao.CartDao;
import com.ShoeRack.model.Cart;

@Service
public class CartServiceImpl implements CartService{
	@Autowired
	private CartDao cartDao;
		public Cart getCart(int cartId) {
		return cartDao.getCart(cartId);
		}

}
