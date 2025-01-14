package vn.hodanit.laptopshop.service;

import java.util.List;

import org.springframework.stereotype.Service;

import vn.hodanit.laptopshop.domain.User;
import vn.hodanit.laptopshop.repository.UserRepository;

@Service
public class UserService {
    private final UserRepository userRepository;

    public UserService(UserRepository userRepository) {
        this.userRepository = userRepository;
    }

    public String handleHello() {
        return "Hello from service";
    }

    public User handleSaveUser(User user) {
        User newUser = this.userRepository.save(user);
        System.out.println(newUser);
        return newUser;
    }

    public List<User> getAllUsers() {
        return this.userRepository.findAll();
    }

    public User getUserById(long id) {
        return this.userRepository.findById(id);
    }

    public User getDeteleUserById(long id) {
        return this.userRepository.deleteById(id);
    }

    public List<User> getAllUsersByEmail(String email) {
        return this.userRepository.findByEmail(email);
    }

}
