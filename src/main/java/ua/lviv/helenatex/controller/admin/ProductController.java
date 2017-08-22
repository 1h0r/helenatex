package ua.lviv.helenatex.controller.admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import ua.lviv.helenatex.entity.Product;
import ua.lviv.helenatex.services.CategoryServise;
import ua.lviv.helenatex.services.ProductServise;

import java.io.File;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.nio.charset.Charset;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;


@Controller
@RequestMapping(value = "/admin", method = RequestMethod.POST)
public class ProductController {

    @Autowired
    private ProductServise productServise;
    @Autowired
    private CategoryServise categoryServise;

    public String encodeString(String encodeString) throws UnsupportedEncodingException {
        return new String(encodeString.getBytes("iso-8859-1"), "UTF-8");
    }

    @GetMapping("/products")
    public String adminProducts(Model model) {
        model.addAttribute("category", categoryServise.findAll());
        model.addAttribute("products", productServise.findAllProductWithCategory());
        return "products";
    }

//    /admin/products/save
///admin/products/save


    @PostMapping("/products/addProduct")
    public String addProduct(@RequestParam("productName") String productName,
                             @RequestParam("slag") String slag,
                             @RequestParam("description") String description,
                             @RequestParam("category") int category,
                             @RequestParam("generalProductImage") MultipartFile generalProductImage,
                             @RequestParam("images") List<MultipartFile> images) {


        DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm");
        Date date = new Date();
        DateFormat format = new SimpleDateFormat("yyyy-MM-dd_");
        String dataString = String.valueOf(format.format(date));
        String realPath = System.getProperty("user.home") + File.separator + "upload\\";
        String general = "GENERAL_";
        try {
            generalProductImage.transferTo(new File(realPath + dataString + general + generalProductImage.getOriginalFilename()));
        } catch (IOException e) {
            e.printStackTrace();
        }


        try {
            for (MultipartFile image : images) {
                image.transferTo(new File(realPath + dataString + image.getOriginalFilename()));
            }
        } catch (IOException e) {
            e.printStackTrace();
        }

        try {
            Product product = new Product();
            product.setProductName(encodeString(productName));
            product.setDescription(encodeString(description));
            product.setCategory(categoryServise.findOne(category));
            product.setDate(String.valueOf(dateFormat.format(date)));
            product.setSlag(slag);

            List<String> imageList = new ArrayList<String>();
            for (MultipartFile image : images) {

                imageList.add(encodeString("\\productImage\\" + dataString + image.getOriginalFilename()));
            }
            product.setImages(imageList);

            product.setGeneralProductImage(encodeString("\\productImage\\" + dataString + general + generalProductImage.getOriginalFilename()));


            System.out.println(product);
            productServise.saveProduct(product);
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        }


        return "redirect:/admin/products";
    }

    @PostMapping("/products/save")
    public String editProduct(@RequestParam("productName") String productName,
                              @RequestParam("slag") String slag,
                              @RequestParam("description") String description,
                              @RequestParam("category") int category,
                              @RequestParam("generalProductImage") MultipartFile generalProductImage,
                              @RequestParam("images") List<MultipartFile> images) {


        DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm");
        Date date = new Date();
        DateFormat format = new SimpleDateFormat("yyyy-MM-dd_");
        String dataString = String.valueOf(format.format(date));
        String realPath = System.getProperty("user.home") + File.separator + "upload\\";
        String general = "GENERAL_";
        try {
            generalProductImage.transferTo(new File(realPath + dataString + general + generalProductImage.getOriginalFilename()));
        } catch (IOException e) {
            e.printStackTrace();
        }


        try {
            for (MultipartFile image : images) {
                image.transferTo(new File(realPath + dataString + image.getOriginalFilename()));
            }
        } catch (IOException e) {
            e.printStackTrace();
        }

        try {
            Product product = new Product();
            product.setProductName(encodeString(productName));
            product.setDescription(encodeString(description));
            product.setCategory(categoryServise.findOne(category));
            product.setDate(String.valueOf(dateFormat.format(date)));
            product.setSlag(slag);

            List<String> imageList = new ArrayList<String>();
            for (MultipartFile image : images) {

                imageList.add(encodeString("\\productImage\\" + dataString + image.getOriginalFilename()));
            }
            product.setImages(imageList);

            product.setGeneralProductImage(encodeString("\\productImage\\" + dataString + general + generalProductImage.getOriginalFilename()));


            System.out.println(product);
            productServise.saveProduct(product);
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        }


        return "redirect:/admin/products";
    }


    @GetMapping("/products/edit-{idProduct}")
    public String editProduct(@PathVariable("idProduct") Integer id, Model model) {
        model.addAttribute("product", productServise.findOne(id));
        model.addAttribute("category", categoryServise.findAll());

        return "edit-product";
    }


    @GetMapping("/products/delete-{idProduct}")
    public String deleteProduct(@PathVariable("idProduct") Integer id, Model model) {
        productServise.delete(id);
        return "redirect:/admin/products";
    }
}
