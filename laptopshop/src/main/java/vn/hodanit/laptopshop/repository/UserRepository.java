package vn.hodanit.laptopshop.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import vn.hodanit.laptopshop.domain.User;

@Repository
public interface UserRepository extends JpaRepository<User, Long> {
    User save(User envidi);

    List<User> findByEmail(String email);

    User findById(long id);

    User deleteById(long id);
}
