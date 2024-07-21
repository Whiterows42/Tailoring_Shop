
package com.nt.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.nt.daos.CoustomerDao;
import com.nt.daos.Dashboarddao;
import com.nt.entitys.Coustmer;

@Controller
public class TailorShopController {

	@Autowired
	private CoustomerDao dao;
	@Autowired
	private Dashboarddao dashboarddao;

	@RequestMapping("/coustomer")
	public String sendToLandingPage(Model model) {

		model.addAttribute("msg", "Welcome ");
		model.addAttribute("render", "none");
		return "CoustmerPage";

	}

	@RequestMapping("/getdata")
	public String getData(@ModelAttribute Coustmer c, Model model) {

		dao.insertCoustomer(c);
		System.out.println(c);

		model.addAttribute("render", "block");

		return "CoustmerPage";
	}

	@RequestMapping("/dashboard")
	public String admindashboard(Model model) {
		int count = dashboarddao.showUserCount();
		int ordercount = dashboarddao.showOrderCount();
		List<Coustmer> coustmers = dashboarddao.getAllCustomers();
//	System.out.println(coustmers);
		Map<String, Float> revenueData = dashboarddao.getMonthlyRevenue();
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
}
