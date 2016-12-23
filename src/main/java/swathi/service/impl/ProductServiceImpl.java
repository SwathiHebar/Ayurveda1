package swathi.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import swathi.dao.ProductDao;
import swathi.model.Product;
import swathi.service.ProductService;

import java.util.List;


@Service
public class ProductServiceImpl implements ProductService {

    @Autowired
    private ProductDao productDao;

    public Product getProductById (int productId) {
        return productDao.getProductById(productId);
    }

    public List<Product> getProductList () {
        return productDao.getProductList();
    }

    public void addProduct(Product product) {
        productDao.addProduct(product);
    }

    public void editProduct(Product product) {
        productDao.editProduct(product);
    }

    public void deleteProduct(Product product) {
        productDao.deleteProduct(product);
    }

	public List<Product> getbeautyProductList() {
		
		return productDao.getbeautyProductList();
	}

	public List<Product> gethealthProductList() {
		// TODO Auto-generated method stub
		return productDao.gethealthProductList();
	}

	public List<Product> getotherProductList() {
		// TODO Auto-generated method stub
		return productDao.getotherProductList();
	}
    
	
	
}
