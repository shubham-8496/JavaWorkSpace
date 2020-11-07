package com.cdac.valid;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.springframework.stereotype.Service;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;


import com.cdac.dto.User;
@Service
public class UserValidator implements Validator {

	@Override
	public boolean supports(Class<?> clazz) {
		return clazz.equals(User.class);
	}

	@Override
	public void validate(Object target, Errors errors) {
		//ValidationUtils.rejectIfEmptyOrWhitespace(errors, "userName","unmKey", "*user name required");
	//	ValidationUtils.rejectIfEmptyOrWhitespace(errors, "userPass", "passKey","*password required");
//		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "firstName", "psKey","sirst name required");
//		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "lastName", "pasKey","last name required");
//		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "mobileNo", "assKey","mobile no required");
		
User user = (User) target;
		
		if(!user.getUserName().isEmpty())
		{
			String mail=user.getUserName();
			
			String emailRegex="^[A-Z0-9._%+-]+@[A-Z0-9.-]+\\.[A-Z]{2,6}$";
			Pattern emailPat=Pattern.compile(emailRegex,Pattern.CASE_INSENSITIVE);
			Matcher matcher=emailPat.matcher(mail);
			if(!matcher.find())
			{
				System.out.println("=======================================");
				errors.rejectValue("userName", "unmKey", "email is invalid");
			}
		}else {
			
			System.out.println("+++++++++++++++++++++++++++++++++++++++++");
			errors.rejectValue("userName", "unmKey", "email is required");
		}
		
		

		
		if(!user.getUserPass().isEmpty())
		{
			String pass=user.getUserPass();
			
			String passRegex="(?=.*\\d)(?=.*[a-z])(?=.*[A-Z]).{8,}";
			Pattern emailPat=Pattern.compile(passRegex);
			Matcher matcher=emailPat.matcher(pass);
			if(!matcher.matches())
			{
				System.out.println("=======================================");
				errors.rejectValue("userPass", "passKey", "password is invalid");
			}
		}else {
			
			System.out.println("+++++++++++++++++++++++++++++++++++++++++");
			errors.rejectValue("userPass", "passKey1", "password is required");
		}
		
		
	}
}
