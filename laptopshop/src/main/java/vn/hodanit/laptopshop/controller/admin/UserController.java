package vn.hodanit.laptopshop.controller.admin;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import vn.hodanit.laptopshop.domain.User;
import vn.hodanit.laptopshop.service.UserService;
import org.springframework.web.bind.annotation.RequestMethod;

import jakarta.servlet.ServletContext;

import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class UserController {
    private final UserService userService;

    private final ServletContext servletContext;

    public UserController(UserService userService, ServletContext servletContext) {
        this.userService = userService;
        this.servletContext = servletContext;
    }

    @RequestMapping("/")
    public String getHomeString(Model model) {
        List<User> arrUsers = this.userService.getAllUsersByEmail("cathe.rin.eada.ms71.9@googlemail.com");
        System.out.println(arrUsers);
        model.addAttribute("envidi", "test");
        model.addAttribute("newUser", "from controller");
        return "hello";
    }

    @RequestMapping("/admin/user")
    public String getUserPage(Model model) {
        List<User> list = this.userService.getAllUsers();
        model.addAttribute("list", list);
        return "/admin/user/show";
    }

    @RequestMapping("/admin/user/{id}")
    public String getViewUser(Model model, @PathVariable long id) {
        User viewUser = this.userService.getUserById(id);
        model.addAttribute("id", id);
        model.addAttribute("view", viewUser);
        return "admin/user/detail";
    }

    @GetMapping("/admin/user/create")
    public String getCreateUserPage(Model model) {
        model.addAttribute("newUser", new User());
        return "admin/user/create";
    }

    @RequestMapping(value = "/admin/user/create", method = RequestMethod.POST)
    public String createUserPage(Model model, @ModelAttribute("newUser") User envidi) {
        // this.userService.handleSaveUser(envidi);
        return "redirect:/admin/user";
    }

    @RequestMapping("/admin/user/update/{id}")
    public String getUpdateUserPage(Model model, @PathVariable int id) {
        User viewUser = this.userService.getUserById(id);
        model.addAttribute("newUser", viewUser);
        return "admin/user/update";
    }

    // @PostMapping("/admin/user/update")
    @RequestMapping(value = "/admin/user/update", method = RequestMethod.POST)
    public String postUpdateUserPage(Model model, @ModelAttribute("newUser") User user) {
        User currUser = this.userService.getUserById(user.getId());
        if (currUser != null) {
            currUser.setAddress(user.getAddress());
            currUser.setFullName(currUser.getFullName());
            currUser.setPhone(currUser.getPhone());

            this.userService.handleSaveUser(user);// phải để là currUser vì nó có sắn các dữ liệu mà k nhập
        }
        return "redirect:/admin/user";
    }

    @GetMapping("/admin/user/delete/{id}")
    public String getUserDelete(Model model, @PathVariable int id) {
        // User user = new User();
        // user.setId(id);
        model.addAttribute("id", id);
        model.addAttribute("newUser", new User());
        return "admin/user/delete";
    }

    @PostMapping("/admin/user/delete")
    public String postUserDelete(Model model, @ModelAttribute("newUser") User user) {
        this.userService.getDeteleUserById(user.getId());
        return "redirect:/admin/user";
    }

}
