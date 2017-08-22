package ua.lviv.helenatex.services.impl;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import ua.lviv.helenatex.dao.CategoryDAO;
//import ua.lviv.helenatex.dto.CategoryDTO;
import ua.lviv.helenatex.entity.Category;
import ua.lviv.helenatex.entity.Product;
import ua.lviv.helenatex.services.CategoryServise;

import java.util.List;

@Service
@Transactional
public class CategoryServiceImpl implements CategoryServise {
    @Autowired
    private CategoryDAO categoryDAO;

    @Override
    public void saveCategory(Category category) {
        categoryDAO.save(category);
    }
    @Override
    public List<Category> findAll() {
        return categoryDAO.findAll();
    }
    @Override
    public Category findOne(int id) {
        return categoryDAO.findOne(id);
    }
    @Override
    public void delete(int id) {
        categoryDAO.delete(id);
    }
    @Override
    public void delete(Category category) {
        categoryDAO.delete(category);
    }

    @Override
    public Category findByCategoryName(String nameCategory) {
        return categoryDAO.findByCategoryName(nameCategory);
    }

    @Override
    public Category findCategoryWithProducts(int id) {
        return categoryDAO.findCategoryWithProducts(id);
    }


}
