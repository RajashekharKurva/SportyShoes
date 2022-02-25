package com.sportshoes.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.sportshoes.entity.CartData;
import com.sportshoes.entity.Products;

public interface CartRepository extends CrudRepository<CartData, Integer>   {

	List<CartData> findBybrandName(String brandName);
}
