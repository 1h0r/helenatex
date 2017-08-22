package ua.lviv.helenatex.controller.admin;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import ua.lviv.helenatex.entity.Category;

import ua.lviv.helenatex.services.CategoryServise;
//import ua.lviv.helenatex.services.ParentCategoryServise;
//import ua.lviv.helenatex.services.SubCategoryServise;

import javax.servlet.http.HttpServletRequest;
import java.awt.*;
import java.io.File;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@Controller
@RequestMapping(value = "/admin", method = RequestMethod.POST)
public class CategoryController {

    @Autowired
    private CategoryServise categoryServise;

    public String encodeString(String s) throws UnsupportedEncodingException {
        return new String(s.getBytes("iso-8859-1"), "UTF-8");
    }

    @GetMapping("/pages")
    public String adminPages() {
        return "pages";
    }

    //
    @GetMapping("/categories")
    public String adminCategories(Model model) {
        model.addAttribute("categories", categoryServise.findAll());
        return "categories";
    }


    @PostMapping("/categories/createCategory")
    public String addCategory(@RequestParam("categoryName") String categoryName,
                              @RequestParam("slag") String slag,
                              @RequestParam("parrent") int parent,
                              @RequestParam("descriptionCategory") String descriptionCategory,
                              @RequestParam("categoryImage") MultipartFile categoryImage) {

        System.out.println("test");
        String realPath = System.getProperty("user.home") + File.separator + "upload\\";
        try {
            categoryImage.transferTo(new File(realPath + categoryImage.getOriginalFilename()));
        } catch (IOException e) {
            e.printStackTrace();
        }

        DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
        Date date = new Date();
        int status = -1;
        try {
            Category category = new Category();
            category.setCategoryName(encodeString(categoryName));
            category.setSlag(encodeString(slag));
            category.setDate(String.valueOf(dateFormat.format(date)));
            category.setCategoryImage("\\categoryImage\\" + categoryImage.getOriginalFilename());
            category.setDescriptionCategory(encodeString(descriptionCategory));

            if (parent == status) {
                category.setSubCategoryName(null);
            } else {


                System.out.println(encodeString(categoryServise.findOne(parent).getCategoryName()));
                category.setSubCategoryName(encodeString(categoryName));
//                category.setSubCategoryName(categoryName);

            }

            System.out.println(category);
            categoryServise.saveCategory(category);
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        }


        return "redirect:/admin/categories";
    }


    @GetMapping("/categories/edit-{idCategory}")
    public String editProduct(@PathVariable("idProduct") Integer id, Model model) {
        model.addAttribute("category", categoryServise.findAll());

        return "edit-category";
    }


    @GetMapping("/categories/delete-{idCategory}")
    public String deleteProduct(@PathVariable("idCategory") Integer id, Model model) {
        categoryServise.delete(id);
        return "redirect:/admin/categories";
    }


    @PostMapping("/categories/save")
    public String editCategory(@RequestParam("categoryName") String categoryName,
                               @RequestParam("slag") String slag,
                               @RequestParam("parrent") int parent,
                               @RequestParam("descriptionCategory") String descriptionCategory,
                               @RequestParam("categoryImage") MultipartFile categoryImage) {

        System.out.println("test");
        String realPath = System.getProperty("user.home") + File.separator + "upload\\";
        try {
            categoryImage.transferTo(new File(realPath + categoryImage.getOriginalFilename()));
        } catch (IOException e) {
            e.printStackTrace();
        }

        DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
        Date date = new Date();
        int status = -1;
        try {
            Category category = new Category();
            category.setCategoryName(encodeString(categoryName));
            category.setSlag(encodeString(slag));
            category.setDate(String.valueOf(dateFormat.format(date)));
            category.setCategoryImage("\\categoryImage\\" + categoryImage.getOriginalFilename());
            category.setDescriptionCategory(encodeString(descriptionCategory));

            if (parent == status) {
                category.setSubCategoryName(null);
            } else {


//                String name=categoryServise.findOne(parent).getCategoryName();
//                System.out.println(name);
                System.out.println(encodeString(categoryServise.findOne(parent).getCategoryName()));
                category.setSubCategoryName(categoryServise.findOne(parent).getCategoryName());

            }

            System.out.println(category);
            categoryServise.saveCategory(category);
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        }


        return "redirect:/admin/categories";
    }

}
