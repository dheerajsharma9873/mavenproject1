package com.ShoeRack.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ShoeRack.dao.ProductDao;
import com.ShoeRack.model.Product;

@Service
public class ProductServiceImpl implements ProductService{
	@Autowired
	private ProductDao productDao;
	public ProductServiceImpl()
	{
		System.out.println("Creating instance for productservice");
	}
    public Product saveProduct(Product product) {
		// TODO Auto-generated method stub
		return productDao.saveProduct(product);
	}
    public List<Product> getAllProducts() {
		return productDao.getAllProducts();
	}
	public Product getProductById(int id) {
		return productDao.getProductById(id);
	}

	public void deleteProduct(int id) {
		productDao.deleteProduct(id);
	}

	public void updateProduct(Product product) {
		productDao.updateProduct(product);
		
	}

}
	