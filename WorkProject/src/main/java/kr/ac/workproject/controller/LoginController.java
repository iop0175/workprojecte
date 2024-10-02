package kr.ac.workproject.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import kr.ac.workproject.model.Mydate;
import kr.ac.workproject.service.MyadteService;

@Controller
public class LoginController {
	final String path = "login/";
	@Autowired
	MyadteService service;

	@GetMapping("/login")
	String login() {
		return path + "login";
	}

	@PostMapping("/login")
	String login(Mydate item, HttpSession session) {
		if (service.login(item)) {
			session.setAttribute("mydate", item);
			return "redirect:work";
		} else {
			return "redirect:login";
		}
	}

	@GetMapping("/logout")
	String logout(HttpSession session) {
		session.invalidate();
		return "redirect:work";
	}

	@GetMapping("/signup")
	String signup() {
		return path + "signup";
	}
	@GetMapping("/mypage/{id}")
	String mypage(@PathVariable String id) {
		return path +"mypage";
		
	}
}
