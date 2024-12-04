package kr.ac.workproject.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.ac.workproject.model.Company;
import kr.ac.workproject.model.Mydate;
import kr.ac.workproject.model.Signcom;
import kr.ac.workproject.model.Work;
import kr.ac.workproject.service.CompanyService;

@RequestMapping("/company")
@Controller
public class CompanyController {
	@Autowired
	CompanyService service;
	final String path = "company/";

	@GetMapping("/major")
	String major(Model model) {
		List<Work> list = service.workListmajor();
		model.addAttribute("list", list);
		List<Work> Viplist = service.workVipListmajor();
		if (Viplist.size() > 1) {
			Work item = Viplist.get(1);
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
		return path + "major";
	}

	@GetMapping("/small")
	String small(Model model) {
		List<Work> list = service.workListsmall();
		model.addAttribute("list", list);
		List<Work> Viplist = service.workVipListsmall();
		if (Viplist.size() > 1) {
			Work item = Viplist.get(1);
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
		return path + "small";
	}

	@GetMapping("/area")
	String area() {
		return path + "area";
	}
	@ResponseBody
	@GetMapping("/area/{cityName}")
	int city(@PathVariable String cityName) {
		int cityCount = service.cityCount(cityName);
		return cityCount;
		
	}
	@GetMapping("/area/{vipCityName}/viplist")
	String vipCityList(@PathVariable String vipCityName,Model model) {
		List<Work> vipList = service.vipcityList(vipCityName);
		if (vipList.size() == 1) {
			model.addAttribute("vipcol", vipList);
			
		}else if (vipList.size() > 1) {
			Work item = vipList.get(1);
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
		List<Work> list = service.cityList(cityName);
		model.addAttribute("list",list);
		return path + "comwork";
	}
	@GetMapping("/field")
	String field() {
		return path + "field";
	}
	@ResponseBody
	@GetMapping("/checkcon")
	Long comBrn(Company company,HttpSession session) {
		Mydate mydate = (Mydate) session.getAttribute("mydate");
		Long comBrn =  service.comBrn(mydate.getComName());
		return comBrn;
		
		
	}
	@GetMapping("/mycompany")
	String mycom(HttpSession session,Model model) {
		Mydate mydate = (Mydate) session.getAttribute("mydate");
		Company list = service.mycom(mydate.getComName());
		model.addAttribute("list", list);
		return path + "mycompany";
	}
	@GetMapping("/mycompany/add/com/{id}")
	@ResponseBody
	String addcom(@PathVariable String id,HttpSession session,Signcom signcom) {
		Mydate mydate = (Mydate) session.getAttribute("mydate");
		signcom.setId(id);
		signcom.setComname(mydate.getComName());
		service.addcom(signcom);
		return "ok";
	}
	@GetMapping("/mycompany/del/com/{id}")
	@ResponseBody
	String delcom(@PathVariable String id,HttpSession session,Signcom signcom) {
		Mydate mydate = (Mydate) session.getAttribute("mydate");
		signcom.setId(id);
		signcom.setComname(mydate.getComName());
		service.delcom(signcom);
		return "ok";
	}
	@GetMapping("/searchcount/{field}")
	@ResponseBody
	int search(@PathVariable String field) {
		int fieldsearch = service.fieldsear(field);
		return fieldsearch;
	}
	@GetMapping("/field/list/{field}")
	String fieldList(@PathVariable String field,Model model) {
		List<Work> list = service.fieldList(field);
		model.addAttribute("list", list);
		return path+"comwork";
	}
	@GetMapping("/field/viplist/{field}")
	String fieldVipList(@PathVariable String field,Model model) {
		List<Work> vipList = service.fieldVipList(field);
		if (vipList.size() == 1) {
			model.addAttribute("vipcol", vipList);
			
		}else if (vipList.size() > 1) {
			Work item = vipList.get(1);
			model.addAttribute("vipcol", item);
			vipList.remove(item);
			model.addAttribute("viplist", vipList);
		}else {
			model.addAttribute("vipcol", null);
			model.addAttribute("viplist", null);
		}
		return path + "vipcomwork";
	}
	@GetMapping("/view/{company}")
	String view(@PathVariable String company,Model model) {
		Company list = service.view(company);
		model.addAttribute("list", list);
		return path + "mycompany";
	}
	@GetMapping("/workemp")
	String workemp(HttpSession session,Model model) {
		Mydate mydate = (Mydate) session.getAttribute("mydate");
		String comname = mydate.getComName();
		List<Work> work = service.mywork(comname);
		List<Signcom> signcom = service.mysign(comname);
		model.addAttribute("work", work);
		model.addAttribute("signcom", signcom);
		return path + "worksign";
	}
}
