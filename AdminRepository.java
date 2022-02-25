package com.sportshoes.repository;

import org.springframework.data.repository.CrudRepository;

import com.sportshoes.entity.AdminDetails;

public interface AdminRepository extends CrudRepository<AdminDetails, Integer> {

	AdminDetails findByuserName(Object object);
}
