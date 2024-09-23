package kr.ac.workproject.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/private")
public class PrivateController {
	final String path = "private/";
@GetMapping("/area")
String area() {
	return path+"area";
}
@GetMapping("/field")
String field() {
	return path+"field";
}
}
