package kr.ac.workproject.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/company")
@Controller
public class CompanyController {
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

	@GetMapping("/field")
	String field() {
		return path + "field";
	}
}
