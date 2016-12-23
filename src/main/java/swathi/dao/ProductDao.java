package swathi.dao;



import java.util.List;

import swathi.model.Product;

public interface ProductDao {

    List<Product> getProductList();

    Product getProductById(int id);

    void addProduct(Product product);

    void editProduct(Product product);

    void deleteProduct(Product product);
    List<Product> getbeautyProductList();
    List<Product> gethealthProductList();
    List<Product> getotherProductList();

}
