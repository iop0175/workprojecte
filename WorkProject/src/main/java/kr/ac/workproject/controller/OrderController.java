package kr.ac.workproject.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;


@Controller
public class OrderController {
@GetMapping("/order")
String order() {
	return "order";
}
@GetMapping("/myorder")
String myorder() {
	return "myorder";
}
}
