package kr.ac.workproject.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.ac.workproject.model.Mydate;
import kr.ac.workproject.model.Private;
import kr.ac.workproject.service.PrivateService;

@Controller
@RequestMapping("/private")
public class PrivateController {
	@Autowired
	PrivateService service;
	final String path = "private/";

	@GetMapping("/area")
	String area(Model model) {
		List<Private> list = service.list();
		model.addAttribute("list", list);
		List<Private> Viplist = service.VipList();
		if (Viplist.size() > 1) {
			Private item = Viplist.get(1);
			Viplist.remove(item);
			model.addAttribute("vipcol", item);	
			model.addAttribute("viplist", Viplist);
		}else if (Viplist.size() < 1) {
			model.addAttribute("vipcol", null);	
			model.addAttribute("viplist", null);
		}else {
			model.addAttribute("vipcol", Viplist);
			model.addAttribute("viplist", null);
		}
		return path + "area";
	}

	@GetMapping("/field")
	String field(Model model) {
		List<Private> list = service.list();
		model.addAttribute("list", list);
		List<Private> Viplist = service.VipList();
		if (Viplist.size() > 1) {
			Private item = Viplist.get(1);
			Viplist.remove(item);
			model.addAttribute("vipcol", item);	
			model.addAttribute("viplist", Viplist);
		}else if (Viplist.size() < 1) {
			model.addAttribute("vipcol", null);	
			model.addAttribute("viplist", null);
		}else {
			model.addAttribute("vipcol", Viplist);
			model.addAttribute("viplist", null);
		}
		return path + "field";
	}
	@GetMapping("/add")
	String add() {
		return path+ "add";
	}
	@PostMapping("/add")
	String add(Private pri,HttpSession session) {
		Mydate mydate = (Mydate) session.getAttribute("mydate");
		pri.setId(mydate.getId());
		service.add(pri);
		return "/work";
	}
	@ResponseBody
	@GetMapping("/area/{cityName}")
	int city(@PathVariable String cityName) {
		int cityCount = service.cityCount(cityName);
		return cityCount;
		
	}
	@GetMapping("/area/{vipCityName}/viplist")
	String vipCityList(@PathVariable String vipCityName,Model model) {
		List<Private> vipList = service.vipcityList(vipCityName);
		if (vipList.size() == 1) {
			model.addAttribute("vipcol", vipList);
			
		}else if (vipList.size() > 1) {
			Private item = vipList.get(1);
			model.addAttribute("vipcol", item);
			vipList.remove(item);
			model.addAttribute("viplist", vipList);
		}else {
			model.addAttribute("vipcol", null);
			model.addAttribute("viplist", null);
		}
		return path + "vipcomwork";
	}
	@GetMapping("/area/{cityName}/list")
	String cityList(@PathVariable String cityName,Model model) {
		List<Private> list = service.cityList(cityName);
		model.addAttribute("list",list);
		return path + "comwork";
	}
	@GetMapping("/searchcount/{field}")
	@ResponseBody
	int search(@PathVariable String field) {
		int fieldsearch = service.fieldsear(field);
		return fieldsearch;
	}
	@GetMapping("/field/list/{field}")
	String fieldList(@PathVariable String field,Model model) {
		List<Private> list = service.fieldList(field);
		model.addAttribute("list", list);
		return path+"comwork";
	}
	@GetMapping("/field/viplist/{field}")
	String fieldVipList(@PathVariable String field,Model model) {
		List<Private> vipList = service.fieldVipList(field);
		if (vipList.size() == 1) {
			model.addAttribute("vipcol", vipList);
			
		}else if (vipList.size() > 1) {
			Private item = vipList.get(1);
			model.addAttribute("vipcol", item);
			vipList.remove(item);
			model.addAttribute("viplist", vipList);
		}else {
			model.addAttribute("vipcol", null);
			model.addAttribute("viplist", null);
		}
		return path + "vipcomwork";
	}
}
