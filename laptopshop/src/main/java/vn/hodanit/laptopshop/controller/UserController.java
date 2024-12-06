package vn.hodanit.laptopshop.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import vn.hodanit.laptopshop.domain.User;
import vn.hodanit.laptopshop.repository.UserRepository;
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
        model.addAttribute("envidi", "test");
        model.addAttribute("newUser", "from controller");
        return "hello";
    }

    @RequestMapping("/admin/user")
    public String getUserPage(Model model) {
        model.addAttribute("newUser", new User());
        return "admin/user/create";
    }

    @RequestMapping(value = "/admin/user/create", method = RequestMethod.POST)
    public String createUserPage(Model model, @ModelAttribute("newUser") User envidi) {
        System.out.println("run here" + envidi);
        this.userService.handleSaveUser(envidi);
        return "hello";
    }

}
