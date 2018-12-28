package com.springsecurity.web.Repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.ui.Model;

import com.springsecurity.web.domain.CustomerDetails;



public interface CustomerRepository extends JpaRepository<CustomerDetails, Integer>{
	

	public CustomerDetails findByCustomerCode(Integer customerCode);
	//public CustomerDetails deleteByCustomerCode(Integer customerCode);
	
	
}
