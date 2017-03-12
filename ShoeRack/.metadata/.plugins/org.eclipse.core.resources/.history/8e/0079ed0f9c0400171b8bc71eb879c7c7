package com.ShoeRack.Service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ShoeRack.dao.CustomerDao;
import com.ShoeRack.model.Customer;

@Service
public class CustomerServiceImpl implements CustomerService{
	@Autowired
	private CustomerDao customerDao;
		public void saveCustomer(Customer customer) {
			customerDao.saveCustomer(customer);
		}
}
