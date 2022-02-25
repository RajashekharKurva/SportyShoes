package com.sportshoes.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.sportshoes.entity.OrderHistory;

public interface OrderRepository extends CrudRepository<OrderHistory, Long> {
	
	List<OrderHistory> findByemail(String email);

}
