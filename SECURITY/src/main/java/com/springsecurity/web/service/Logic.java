package com.springsecurity.web.service;

import java.util.List;

import org.omg.CORBA.PUBLIC_MEMBER;
import org.springframework.ui.Model;

import com.springsecurity.web.domain.CustomerDetails;



public interface Logic {

public void fromUI(CustomerDetails customerDetails);
public  List<CustomerDetails> details(Model model);
public void  update(Model model,CustomerDetails customerDetails);
public void search(Model model,CustomerDetails customerDetails);
public void delete(Model model,CustomerDetails customerDetails);

}
