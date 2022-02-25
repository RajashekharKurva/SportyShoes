package com.sportshoes.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.sportshoes.entity.Products;

public interface ProductsRepository extends CrudRepository<Products, Long> {
	
	List<Products> findBybrandName(String brandName);

}
