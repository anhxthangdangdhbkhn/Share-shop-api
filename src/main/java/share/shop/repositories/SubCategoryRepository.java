package share.shop.repositories;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import share.shop.models.SubCategory;

import java.util.Optional;

@Repository
public interface SubCategoryRepository extends JpaRepository<SubCategory,Long> {
    SubCategory save(SubCategory subCategory);
    boolean existsByName(String name);
    Optional<SubCategory> findById(Long id);
    Optional<SubCategory> findByName(String name);
    Page<SubCategory> findAllByCategoryIdAndEnable(Long id,boolean enable, Pageable pageable);
    Page<SubCategory> findAllByCategorySearch(String search, Pageable pageable);
}
