package kr.ac.workproject.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;


@Controller
public class OrderController {
	final String path ="order/";
@GetMapping("/order")
String order() {
	return path+"order";
}
@GetMapping("/myorder")
String myorder() {
	return path +"myorder";
}
@GetMapping("/apply/{workid}")
String apply() {
	return "apply";
}
}
