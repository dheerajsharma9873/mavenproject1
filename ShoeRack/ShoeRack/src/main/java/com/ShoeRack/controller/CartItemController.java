package com.ShoeRack.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.User;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import com.ShoeRack.Service.CartItemService;
import com.ShoeRack.Service.CustomerService;
import com.ShoeRack.Service.ProductService;
import com.ShoeRack.model.Cart;
import com.ShoeRack.model.CartItem;
import com.ShoeRack.model.Customer;
import com.ShoeRack.model.Product;

@Controller
	public class CartItemController {
		@Autowired
		private CartItemService cartItemService;
		@Autowired
		private CustomerService customerService;
		@Autowired
		private ProductService productService;
	@RequestMapping("ShoeRack/cart/addCartItem/{pid}")
	public void addCartItem(@PathVariable(value="pId") int productId){
		
		System.out.println("add cart method called");
		User user=
				(User)SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		
		String username=user.getUsername();
		Customer customer=customerService.getCustomerByUsername(username);//from Users where username=?
		Cart cart=customer.getCart();
		List<CartItem> cartItems= cart.getCartItems();
		
		Product  product = productService.getProductById(productId);
		System.out.println("add cart method called in  mid");
		for (int i = 0; i <cartItems.size(); i++) {
			System.out.println("add cart method called in  for ");
			CartItem cartItem=cartItems.get(i);
			Product p=cartItem.getProduct();
			     //1    ==  1
			if(p.getpId()==productId){
				cartItem.setQuantity(cartItem.getQuantity() + 1);//increment the quantity
				cartItem.setTotalPrice(cartItem.getQuantity() * p.getpPrice()); //update the total price
				cartItemService.addCartItem(cartItem);//update the quantity in the cartitem
				//return;
			}	
		}
		System.out.println("add cart method called in  mid 22");
		CartItem cartItem=new CartItem();
		cartItem.setQuantity(1);
		cartItem.setTotalPrice(cartItem.getQuantity() * product.getpPrice());
		cartItem.setProduct(product); //set product id
		cartItem.setCart(cart);//set cart id
		cartItemService.addCartItem(cartItem); //insert query	
		System.out.println("add cart method called at end");
	}
	}


