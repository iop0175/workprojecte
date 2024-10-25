package kr.ac.workproject.controller;

import java.io.File;
import java.io.IOException;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import kr.ac.workproject.model.Company;
import kr.ac.workproject.model.Mydate;
import kr.ac.workproject.service.MyadteService;

@Controller
public class LoginController {
	final String path = "login/";
	final String IMGPATH = "d:/upload/ComLogo";
	@Autowired
	MyadteService service;

	@GetMapping("/login")
	String login() {
		return path + "login";
	}
	@ResponseBody
	@GetMapping("/login_check/{id}/{password}")
	String login_check(@PathVariable String id,@PathVariable String password,Mydate item ,HttpSession session) {
		item.setId(id);
		item.setPassword(password);
		if (service.loginCheck(item)) {
			session.setAttribute("mydate", item);
			return "ok";
		}return "fail";
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
	@PostMapping("/signup")
	String signup(Mydate item) {
		service.signup(item);
		return "redirect:.";
	}
	@GetMapping("/mypage/{id}")
	String mypage(@PathVariable String id) {
		return path +"mypage";
		
	}
	@ResponseBody
	@GetMapping("id_check/{id}")
	String idCheck(@PathVariable String id) {
		if (service.idCheck(id)) {
			return "ok";
		}return "fail";
	}
	@GetMapping("/comadd")
	String comadd() {
		return path+"comadd";
		
	}
	@PostMapping("/comadd")
	String comadd(Company item,HttpSession session,MultipartFile comlogo) {
		Mydate mydate = (Mydate) session.getAttribute("mydate");
		String comname = item.getCeoname();
		if (comlogo != null && comlogo.getSize() > 0) {
			String logoImgName = comname + "_Logo" + comlogo.getOriginalFilename();
			try {
				comlogo.transferTo(new File(IMGPATH + logoImgName));
				item.setComLogo(logoImgName);
			} catch (IllegalStateException | IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		item.setId(mydate.getId());
		
		service.comadd(item);
		return "redirect:.";
	}
}
