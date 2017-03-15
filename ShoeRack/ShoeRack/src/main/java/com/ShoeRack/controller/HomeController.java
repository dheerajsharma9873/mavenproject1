package com.ShoeRack.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.ShoeRack.Service.CategoryService;
@Controller
public class HomeController {
	@Autowired
	private CategoryService categoryService;	

	
	public HomeController(){
		System.out.println("Creating instance for home controller");
		
	}
	@RequestMapping("/home")
	public String home(HttpSession session) 
	{
		session.setAttribute("categories", categoryService.getCategories());
		
	return "home";
	}
	@RequestMapping("/AboutUs")
	public String aboutUs() 
	{
	return "About Us";
	}
	@RequestMapping("/all/product/home")
	public String home1() 
	{
	return "home";
	}
	@RequestMapping("/ContactUs")
	public String contactUs() 
	{
	return "Contact Us";
	}
	@RequestMapping("/login")
	public String logIn(@RequestParam(value="error",required=false)  String error,
			@RequestParam(value="logout",required=false) String logout,
			Model model){
		if(error!=null)
			model.addAttribute("error","Invalid UserName or Password.. Please enter valid username and password");
		if(logout!=null)
			model.addAttribute("logout","Loggedout successfully..");

	return "Login";
	}
}
