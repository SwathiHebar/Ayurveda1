package swathi.dao.impl;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import swathi.dao.ProductDao;
import swathi.model.Product;

import java.util.List;


@Repository
@Transactional
public class ProductDaoImpl implements ProductDao {

    @Autowired
    private SessionFactory sessionFactory;

    public Product getProductById (int id) {
        Session session = sessionFactory.getCurrentSession();
        Product product = (Product) session.get(Product.class, id);
        session.flush();

        return product;
    }

    public List<Product> getProductList() {
        Session session = sessionFactory.getCurrentSession();
        Query query = session.createQuery("from Product");
        List<Product> productList = query.list();
        session.flush();

        return productList;
    }

    public void addProduct (Product product) {
        Session session = sessionFactory.getCurrentSession();
        session.saveOrUpdate(product);
        session.flush();
    }

    public void editProduct (Product product) {
        Session session = sessionFactory.getCurrentSession();
        session.saveOrUpdate(product);
        session.flush();
    }

    public void deleteProduct (Product product) {
        Session session = sessionFactory.getCurrentSession();
        session.delete(product);
        session.flush();
    }

	public List<Product> getProductList1() {
		Session session = sessionFactory.getCurrentSession();
        Query query = session.createQuery("from Product where productCategory='Health'");
        List<Product> productList = query.list();
        session.flush();

        return productList;
 

	}

	public List<Product> getbeautyProductList() {

		Session session = sessionFactory.getCurrentSession();
        Query query = session.createQuery("from Product where productCategory='Skin'");
        List<Product> productList = query.list();
        session.flush();

        return productList;

	}

	public List<Product> gethealthProductList() {
 
		Session session = sessionFactory.getCurrentSession();
        Query query = session.createQuery("from Product where productCategory='Health'");
        List<Product> productList = query.list();
        session.flush();

        return productList;

	}

	public List<Product> getotherProductList() {
	
	
		Session session = sessionFactory.getCurrentSession();
        Query query = session.createQuery("from Product where productCategory='Other'");
        List<Product> productList = query.list();
        session.flush();

        return productList;
	
	}

}
