package vn.hodanit.laptopshop.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import vn.hodanit.laptopshop.domain.User;
import vn.hodanit.laptopshop.service.UserService;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class UserController {
    private final UserService userService;

    public UserController(UserService userService) {
        this.userService = userService;
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
        System.out.println("check: " + list);
        model.addAttribute("list", list);
        return "/admin/user/table-user";
    }

    @RequestMapping("/admin/user/create")
    public String getCreateUserPage(Model model) {
        model.addAttribute("newUser", new User());
        return "admin/user/create";
    }

    @RequestMapping(value = "/admin/user/create", method = RequestMethod.POST)
    public String createUserPage(Model model, @ModelAttribute("newUser") User envidi) {
        this.userService.handleSaveUser(envidi);
        return "redirect:/admin/user";
    }

}