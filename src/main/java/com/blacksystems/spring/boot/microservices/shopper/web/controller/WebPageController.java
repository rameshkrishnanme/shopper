package com.blacksystems.spring.boot.microservices.shopper.web.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.blacksystems.spring.boot.microservices.shopper.domain.Product;
import com.blacksystems.spring.boot.microservices.shopper.respository.ProductRepository;

@Controller
public class WebPageController {
	
	@Autowired
	ProductRepository productRepository;
	
	@RequestMapping("/")
	public String getHomePage() {
		return "index";
	}
	
	@RequestMapping("/checkout/{prodId}")
	public ModelAndView getCheckout(ModelAndView model, @PathVariable("prodId") Integer prodId) {
		Product product = productRepository.findOne(prodId);
		model.addObject("productId", product.getIdProduct());
		model.setViewName("checkout");
		return model;
	}
	
}