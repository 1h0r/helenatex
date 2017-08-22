package ua.lviv.helenatex.services.impl;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import ua.lviv.helenatex.dao.ProductDAO;
import ua.lviv.helenatex.entity.Product;
import ua.lviv.helenatex.services.ProductServise;

import java.util.List;

@Service
@Transactional
public class ProductServiceImpl implements ProductServise {
    @Autowired
    private ProductDAO productDAO;

    public void saveProduct(Product product) {
        productDAO.save(product);
    }

    public Product findOne(int id) {
        return productDAO.findOne(id);
    }

    public List<Product> findAll() {
        return productDAO.findAll();
    }

    public void delete(Product product) {
        productDAO.delete(product);
    }

    public void delete(int id) {
        productDAO.delete(id);
    }

    @Override
    public List<Product> findAllProductWithCategory() {
        return productDAO.findAllProductWithCategory();
    }

    @Override
    public List<Product> findProductWithImages() {
        return productDAO.findProductWithImages();
    }

    @Override
    public Product findOneProduct(int id) {
        return productDAO.findOne(id);
    }


}
