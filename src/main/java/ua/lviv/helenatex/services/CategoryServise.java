package ua.lviv.helenatex.services;


import ua.lviv.helenatex.entity.Category;
import ua.lviv.helenatex.entity.Product;

import java.util.List;

public interface CategoryServise {
    void saveCategory(Category category);
    List<Category> findAll();
    Category findOne(int id);
    void delete(int id);
    void delete(Category category);

    Category findByCategoryName(String nameCategory);
    Category findCategoryWithProducts(int id);

}
