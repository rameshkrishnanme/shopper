package com.blacksystems.spring.boot.microservices.shopper.respository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.data.rest.core.annotation.RestResource;

import com.blacksystems.spring.boot.microservices.shopper.domain.Product;

public interface ProductRepository extends JpaRepository<Product, Integer> {

	@RestResource(path = "findByCat", rel = "findByCat")
	@Query("SELECT p FROM Product p WHERE lower(p.productCategoryName) LIKE lower('%'+ :searchTerm +'%')")
	public List<Product> findByCategory(@Param("searchTerm") String searchTerm);

	@RestResource(path = "fullSearch", rel = "fullSearch")
	@Query("SELECT p FROM Product p WHERE lower(p.productCategoryName) LIKE lower('%'+ :searchTerm +'%') OR  lower(p.productName) LIKE lower('%'+ :searchTerm +'%')")
	public List<Product> fullSearch(@Param("searchTerm") String searchTerm);

	@RestResource(path = "randomProducts", rel = "randomProducts")
	@Query(value = "SELECT * FROM Product ORDER BY rand() LIMIT 4", nativeQuery = true)
	public List<Product> randomProducts();


}
