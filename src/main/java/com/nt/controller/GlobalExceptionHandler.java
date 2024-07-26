package com.nt.controller;

import org.springframework.http.HttpStatus;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.NoHandlerFoundException;

@ControllerAdvice
public class GlobalExceptionHandler {

	@ResponseStatus(value = HttpStatus.MOVED_PERMANENTLY)
	@ExceptionHandler(value = NoHandlerFoundException.class)
	public ModelAndView AllException(Exception e , Model model) {
	e.printStackTrace();
	System.out.println("here is exception");

		 return new ModelAndView("redirect:/");
	}
	@ResponseStatus(value = HttpStatus.BAD_REQUEST)
	@ExceptionHandler(value = Exception.class)
	public String somethingwentWrong( Exception exception, Model model) {
		model.addAttribute("msg","opps something went wrong");
		exception.printStackTrace();
		return "404ErrorPage";
	}
}
