
package com.nt.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.nt.daos.CoustomerDao;
import com.nt.daos.Dashboarddao;
import com.nt.entitys.Admin;
import com.nt.entitys.Coustmer;

@Controller
@RequestMapping("/user")
public class TailorShopController {

	@Autowired
	private CoustomerDao dao;
	@Autowired
	private Dashboarddao dashboarddao;

	@RequestMapping("/cm")
	public String sendToLandingPage(Model model) {

		model.addAttribute("msg", "Welcome ");
		model.addAttribute("render", "none");
		return "CoustmerPage";

	}

	@RequestMapping("/getdata")
	public String getData(@ModelAttribute Coustmer c, Model model, HttpSession session) {
		String name = (String) session.getAttribute("useremail");
		dao.insertCoustomer(c, name);
		System.out.println(c);

		model.addAttribute("render", "block");

		return "CoustmerPage";
	}

	@RequestMapping("/dashboard")
	public String admindashboard( HttpSession session ,Model model) {
		System.out.println(session.getAttribute("useremail"));
		String name = (String) session.getAttribute("useremail");
		int count = dashboarddao.showUserCount(name);
		int ordercount = dashboarddao.showOrderCount(name);
		List<Coustmer> coustmers = dashboarddao.getAllCustomers(name);
		Map<String, Float> revenueData = dashboarddao.getMonthlyRevenue(name);
		Admin admin = dashboarddao.getAdmins(name);
		model.addAttribute("admin", admin);
		model.addAttribute("revenueData", revenueData);
		model.addAttribute("customers", coustmers);
		model.addAttribute("ordercount", ordercount);
		model.addAttribute("count", count);
		return "Dashboard";
	}

	@RequestMapping("/viewdetails")
	public String viewDetails(@RequestParam int id, Model model) {
		List<Coustmer> coustmers = dashboarddao.getCustomerById(id);
		model.addAttribute("customer",coustmers);
		System.out.println(coustmers);

		return "viewCoustomerDetails";
	}

	@RequestMapping("/logout")
	public String logout(HttpSession session) {

		session.setAttribute("useremail", null);

		return "redirect:/";
	}

}
