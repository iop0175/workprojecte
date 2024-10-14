package kr.ac.workproject.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.ac.workproject.service.CompanyService;

@RequestMapping("/company")
@Controller
public class CompanyController {
	@Autowired
	CompanyService service;
	final String path = "company/";

	@GetMapping("/major")
	String major() {
		return path + "major";
	}

	@GetMapping("/small")
	String small() {
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

	@GetMapping("/field")
	String field() {
		return path + "field";
	}
}
