package com.nt.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.nt.daos.AdminDao;
import com.nt.entitys.Admin;

@Controller
@RequestMapping("/admin")
public class AdminController {

	@Autowired
	private AdminDao aDao;

	@RequestMapping("/loginUser")
	public String goLoginPage() {

		return "LoginUser";
	}

	@RequestMapping("registerUser")
	public String goRegisterUser() {

		return "RegisterUser";
	}

	@RequestMapping("/home")
	public String gotoHome() {

		return "forward:/";
	}

	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public String insertAdmindata(@ModelAttribute Admin admin, HttpSession session) throws IOException {

		System.out.println(admin);

		CommonsMultipartFile file = admin.getImage_name();

		String imagename = file.getOriginalFilename();
		byte[] image = file.getBytes();
		String path = session.getServletContext().getRealPath("/") + "WEB-INF" + File.separator + "resources"
				+ File.separator + "image" + File.separator + file.getOriginalFilename();
		FileOutputStream fos = new FileOutputStream(path);
		System.out.println(path);
		fos.write(image);
		aDao.registerAdmin(admin, imagename);
		return "LoginUser";
	}

	@RequestMapping(value = "verify-user", method = RequestMethod.POST)
	public ModelAndView checkValidAdmin(@RequestParam String email, @RequestParam String password, Model model,
			HttpSession session) {

		boolean iftrue = aDao.verifyAdmin(email, password);
		ModelAndView redirect = new ModelAndView();

		if (iftrue) {
			session.setAttribute("useremail", email);
			System.out.println("true");
			redirect.setViewName("redirect:/user/dashboard");
		} else {
			redirect.setViewName("forward:loginUser");
			redirect.addObject("error", "Invalid email or password");
		}
		return redirect;
	}

}
