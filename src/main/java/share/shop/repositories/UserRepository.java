package share.shop.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import share.shop.models.User;

import java.util.Optional;

@Repository
public interface UserRepository extends JpaRepository<User, Long> {
    Optional<User> findByEmail(String email);
    Optional<User> findByUsername(String name);


    Optional<User> findByCreateToken(String token);
    Optional<User>findByEmailAndPassword(String email,String password);

    Boolean existsByEmail(String email);
}
