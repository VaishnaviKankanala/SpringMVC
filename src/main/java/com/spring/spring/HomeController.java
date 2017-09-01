package com.spring.spring;

import javax.swing.JOptionPane;

import org.junit.runner.Request;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.spring.dao.LoginDao;
import com.spring.dao.RegisterDao;
import com.spring.model.Login;
import com.spring.model.Register;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {

	// opening page for application
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String login() {
		return "login";
	}

	// to go from login to register for new users
	@RequestMapping(value = "/linkToRegisterTab", method = RequestMethod.GET)
	public String directingToRegisterTab() {
		return "register";
	}
	
	@Autowired
	RegisterDao registerDao;

	// directing to login page after registration is successful
	@RequestMapping(value = "/registerToLogin", method = RequestMethod.POST)
	public String registeringNewUser(Model model, @ModelAttribute Register reg, BindingResult bind) {
		if (reg.getFirstname().length() <= 2) {
			model.addAttribute("error1", "Firstname is too short");
			return "register";
		} else if (reg.getLastname().length() < 2) {
			model.addAttribute("error2", "Lastname is too short");
			return "register";
		} else if (!reg.getPhonenumber().matches("\\(\\d{3}\\)-\\d{3}-\\d{4}")) {
			model.addAttribute("error3", "Phone number is invalid");
			return "register";
		} else if (!reg.getPassword().matches("(?=.*[0-9])(?=.*[a-z])(?=.*[A-Z])(?=.*[@#$%^&+=])(?=\\S+$).{8,}")) {
			model.addAttribute("error4",
					"Password must have atleast 8 characters with atleast 1 number, one lower and upper case letter, special character");
			return "register";
		}else if(reg.getUsername().length()<=5){
			model.addAttribute("error5", "Username is too short");
			return "register";
		}else if (reg.getPassword() == reg.getConfirmpassword()) {
			model.addAttribute("error6", "confirm password didnot match with password");
			return "register";
		}else if(bind.hasErrors()){
			return "register";
		}
		if(registerDao.RegusterUser(reg)){
			return "login";
		}else{
			model.addAttribute("errormsg", "Registeration Unsuccessful");
			return "register";
		}
	}
	
	@Autowired
	LoginDao logindao;

	// to go home page after user logins successfully
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String directingToHome(Model model, @ModelAttribute("username") Login login, BindingResult bind) {
		if(bind.hasErrors()){
			return "login";
		}if(logindao.VerifyLoginUser(login)){
		model.addAttribute("username", login.getUsername());
		return "home";
		}else{
			model.addAttribute("loginerror", "Invalid credentials");
			return "login";
		}
	}

}
