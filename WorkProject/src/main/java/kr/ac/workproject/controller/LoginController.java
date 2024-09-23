package kr.ac.workproject.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class LoginController {
	final String path = "login/";

	@GetMapping("/login")
	String login() {
		return path + "login";

	}
	@GetMapping("/signup")
	String signup() {
		return path + "signup";
	}
}
