package vn.hodanit.laptopshop.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import vn.hodanit.laptopshop.domain.User;

@Repository
public interface UserRepository extends CrudRepository<User, Integer> {
    User save(User envidi);
}
