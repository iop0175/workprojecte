package kr.ac.workproject.controller;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import kr.ac.workproject.model.Company;
import kr.ac.workproject.model.Mydate;
import kr.ac.workproject.model.Payment;
import kr.ac.workproject.model.Signcom;
import kr.ac.workproject.service.MyadteService;

@Controller
public class LoginController {
	final String path = "login/";
	final String IMGPATH = "d:/upload/ComLogo/";
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
		}else {
			return "fail";
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
		String comname = item.getComname();
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
		mydate.setComName(item.getComname());
		return "redirect:.";
	}
	@GetMapping("/oldcomadd")
	String old() {
		return path+"oldcomadd";
	}
	@GetMapping("/oldaddch")
	@ResponseBody
	String oldaddch(HttpSession session) {
		Mydate mydate = (Mydate) session.getAttribute("mydate");
		String id = mydate.getId();
		if (service.oldaddch(id)) {
			return "ok";
		}else {
			return "fail";
		}
		
	}
	@PostMapping("/oldcomadd")
	String old(Signcom signcom,HttpSession session) {
		Mydate mydate = (Mydate) session.getAttribute("mydate");
		signcom.setId(mydate.getId());
		service.old(signcom);
		return "redirect:.";
	}
	@GetMapping("/company/mycompany/sign")
	String signcom(Signcom signcom,HttpSession session,Model model) {
		Mydate mydate = (Mydate) session.getAttribute("mydate");
		List<Signcom> list = service.signcom(mydate.getComName());
		model.addAttribute("list", list);
		return path+"comaddsign";
	}
	@GetMapping("/comadd/check/{comname}")
	@ResponseBody
	String comcheck(@PathVariable String comname) {
		if (service.comcheck(comname) == true) {
			return "ok";
		}else {
			return "fail";
		}
	}
	@GetMapping("/vipcheck")
	@ResponseBody
	String vipcheck(HttpSession session) {
		Mydate mydate = (Mydate) session.getAttribute("mydate");
		int vipNum = mydate.getVipNum();
		if (vipNum > 0) {
			return "ok";
		}else {
			return "fail";
		}
	}
	@GetMapping("/addvip")
	String addvip() {
		return path+"addvip";
	}
	@GetMapping("/payment/{months}")
	String payment(@PathVariable int months){

		return "/payment/payment";
	}
	@GetMapping("/payment/{months}/{type}")
	String type(@PathVariable String type) {
		
		return "/payment/"+type;
			
	}
	@GetMapping("/payment/{month}/pay/{type}")
	@ResponseBody
	String pay(@PathVariable int month,@PathVariable String type,Payment payment,HttpSession session) {
		Mydate mydate = (Mydate) session.getAttribute("mydate");
		
		if (mydate.getId() != null) {
			if (month == 13) {
				payment.setPay(12 * 8000);
				payment.setMonth(month);
			}else if (month == 6) {
				payment.setPay(6 * 10000);
				payment.setMonth(month);
			}else {
				payment.setPay(15000);
				payment.setMonth(month);
			}
			payment.setComName(mydate.getComName());
			payment.setId(mydate.getId());
			service.addvip(payment);
			mydate.setVipNum(payment.getVipNum());
			return "ok";
		}else {
			return "fail";
		}
	}
}
