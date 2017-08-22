package ua.lviv.helenatex.controller;

//import com.helenatex.services.UserServise;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import ua.lviv.helenatex.entity.Product;
import ua.lviv.helenatex.services.CategoryServise;
import ua.lviv.helenatex.services.ProductServise;

import javax.servlet.http.HttpServletResponse;
import java.security.Principal;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
public class MainController {


    @Autowired
    private CategoryServise categoryServise;
    @Autowired
    private ProductServise productServise;

    @GetMapping("/")
    public String index(ModelMap model) {

        model.addAttribute("title", "Main - helenatex");
        model.addAttribute("categories", categoryServise.findAll());

        return "index";
    }


    @GetMapping("/allProducts")
    public String products(ModelMap model) {
        model.addAttribute("title", "Products - helenatex");
        List<Product> products = productServise.findAll();
        String message = "На даний момент ваш каталог порожній";
        model.addAttribute("products", products);
        model.addAttribute("categories", categoryServise.findAll());

//        model.addAttribute("products", products == null ?  message : products);
//        if (products==null){
//         model.addAttribute("emptyProducts", message);
//        }
//        else {
//        }


        return "productsPage";
    }

    @GetMapping("/admin")
    public String adminPage(ModelMap model, Principal principal) {
        model.addAttribute("principal", principal);
        model.addAttribute("category", categoryServise.findAll());
        model.addAttribute("products", productServise.findAllProductWithCategory());
        model.addAttribute("title", "Admin panel");
        return "admin";
    }


    @GetMapping("/login")
    public String loginPage(ModelMap model) {
        model.addAttribute("title", "login");
        return "login";
    }

    @GetMapping("/product-{idProduct}")
    public String product(@PathVariable("idProduct") Integer id, Model model) {
        model.addAttribute("product", productServise.findOneProduct(id));
//        categoryServise.
        return "simpleProduct";
    }


    @GetMapping("/category-{idCategory}")
    public String category(@PathVariable("idCategory") Integer id, Model model) {
        model.addAttribute("category", categoryServise.findCategoryWithProducts(id));

        return "categoriesPage";
    }


}
