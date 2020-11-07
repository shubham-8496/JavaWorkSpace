package com.cdac.cntr;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.MailSender;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.support.SessionStatus;

import com.cdac.dto.User;
import com.cdac.service.UserService;
import com.cdac.valid.RegValidator;
import com.cdac.valid.UserValidator;

@Controller
public class UserController {
	@Autowired
	private UserService userService;
	
	@Autowired
	private UserValidator userValidator;
	
	@Autowired
	private RegValidator regValidator;
	@Autowired
	private MailSender mailSender;
	
	@RequestMapping (value = "/prep_reg_form.htm" ,method = RequestMethod.GET)
	public String prepRegForm(ModelMap map) {
		map.put("user", new User());
		return "reg_form";
	}
	@RequestMapping(value = "/reg.htm" ,method = RequestMethod.GET)
	public String register(@ModelAttribute User user,BindingResult result,ModelMap map) {
		regValidator.validate(user, result);
		if(result.hasErrors()) {
			map.put("user", user);
			return "reg_form";
		}else {
		userService.addUser(user);
		return "prep_log_form";
		}
	}
	@RequestMapping (value = "/prep_log_form.htm" ,method = RequestMethod.GET)
	public String prepForm(ModelMap map) {
		map.put("user", new User());
		return "prep_log_form";
	}
	
	@RequestMapping(value = "/login.htm",method = RequestMethod.GET)
	public String login(@ModelAttribute User user,BindingResult result,ModelMap map,HttpSession session,SessionStatus status) {
		if(!status.isComplete() ) {
		userValidator.validate(user, result);
		if(result.hasErrors()) {
			return "prep_log_form";
		}
		
		boolean b = userService.findUser(user);
		if(b) {
			session.setAttribute("user", user); 
			System.out.println(user);
			return "home";
		}else {
			map.put("user", new User());
			return "prep_log_form";
		}
	}else {
		session.setAttribute("user", new User()); 
		map.put("user", user);
		return "prep_log_form";
	}

		
}
	
	@RequestMapping(value = "/forgot_password.htm",method = RequestMethod.GET)
	public String forgotPassword(@RequestParam String userName,ModelMap map) {		
		String pass = userService.forgotPassword(userName);
		String msg = "you are not registered";
		if(pass!=null) {	
			
			SimpleMailMessage message = new SimpleMailMessage();  
	        message.setFrom("shubham.sonawane8496@gmail.com");  
	        message.setTo(userName);  
	        message.setSubject("Your password");  
	        message.setText(pass);  
	        //sending message   
	        mailSender.send(message);
			msg = "check the mail for password";
		}
		map.put("msg", msg);
		return "info";
	}
}