package com.ShoeRack.Service;

import com.ShoeRack.model.Customer;

public interface CustomerService {
	void saveCustomer(Customer customer);
	public Customer getCustomerByUsername(String username);
}
