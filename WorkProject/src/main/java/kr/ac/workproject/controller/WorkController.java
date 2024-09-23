package kr.ac.workproject.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class WorkController {
final String path = "work/";
@GetMapping("/work")
String work() {
	return path+"work";	
}
}
