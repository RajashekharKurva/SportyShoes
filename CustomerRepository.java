package com.sportshoes.repository;


import org.springframework.data.repository.CrudRepository;

import com.sportshoes.entity.CustomerRegistration;

public interface CustomerRepository extends CrudRepository<CustomerRegistration, Long> {

	CustomerRegistration findByemail(String email);
}
