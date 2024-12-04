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
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.multipart.MultipartFile;

import com.fasterxml.jackson.annotation.JsonCreator.Mode;

import kr.ac.workproject.model.Company;
import kr.ac.workproject.model.Mydate;
import kr.ac.workproject.model.Work;
import kr.ac.workproject.service.WorkService;

@RequestMapping("/work")
@Controller
public class WorkController {
	final String path = "work/";
	final String IMGPATH = "d:/upload/";
	@Autowired
	WorkService service;

	@GetMapping("")
	String work(Model model,HttpSession session) {
		Mydate mydate = (Mydate) session.getAttribute("mydate");
		if (mydate != null) {
			if (mydate.getComName() != null) {
				String comName = mydate.getComName();
				List<Work> myWork = service.myWork(comName);
				model.addAttribute("myWork", myWork);
			}else {
				model.addAttribute("myWork", null);
			}
			
		}
		List<Work> list = service.workList();
		model.addAttribute("list", list);
		List<Work> Viplist = service.workVipList();
		if (Viplist.size() > 1) {
			Work item = Viplist.get(1);
			Viplist.remove(item);
			model.addAttribute("vipcol", item);	
			model.addAttribute("viplist", Viplist);
		}else if (Viplist.size() < 1) {
			model.addAttribute("vipcol", null);	
			model.addAttribute("viplist", null);
		}else {
			model.addAttribute("vipcol", Viplist);
			model.addAttribute("viplist", null);
		}
		
		
		return path + "work";
	}

	@GetMapping("/search/{item}")
	String search(@PathVariable String item, Model model) {
		List<Work> Viplist = service.workVipList();
		if (Viplist.size() > 1) {
			Work item1 = Viplist.get(1);
			Viplist.remove(item1);
			model.addAttribute("vipcol", item1);	
			model.addAttribute("viplist", Viplist);
		}else if (Viplist.size() < 1) {
			model.addAttribute("vipcol", null);	
			model.addAttribute("viplist", null);
		}else {
			model.addAttribute("vipcol", Viplist);
			model.addAttribute("viplist", null);
		}
		List<Work> searchlist = service.searchList(item);
		model.addAttribute("list", searchlist);
		return path + "work";
	}

	@GetMapping("/add")
	String add() {
		return path + "add";
	}

	@PostMapping("/add")
	String add(Work workItem, HttpSession session) {
		Mydate mydate = (Mydate) session.getAttribute("mydate");
		workItem.setComName(mydate.getComName());
		workItem.setComNum(mydate.getComNum());
		workItem.setUploadName(mydate.getId());
		workItem.setSituation("공고중");
		service.add(workItem);
		return "redirect:../work";
	}

	@PostMapping("/vipadd")
	String vipadd(Work vipwork, HttpSession session, MultipartFile mainImg, MultipartFile benerImg) {
		Mydate mydate = (Mydate) session.getAttribute("mydate");
		String comname = mydate.getComName();
		String workname = vipwork.getWorkName();
		if (mainImg != null && mainImg.getSize() > 0) {
			String mainImgName = comname + "_main"+ workname + mainImg.getOriginalFilename();
			try {
				mainImg.transferTo(new File(IMGPATH + mainImgName));
				vipwork.setMainImgName(mainImgName);
			} catch (IllegalStateException | IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		if (benerImg != null && benerImg.getSize() > 0) {
			String benerImgName = comname + "_main"+ workname + benerImg.getOriginalFilename();
			try {
				benerImg.transferTo(new File(IMGPATH + benerImgName));
				vipwork.setBenerImgName(benerImgName);
			} catch (IllegalStateException | IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

		}
		vipwork.setSituation("공고중");
		vipwork.setVipNum(mydate.getVipNum());
		vipwork.setComName(mydate.getComName());
		vipwork.setComNum(mydate.getComNum());
		vipwork.setUploadName(mydate.getId());
		service.vipadd(vipwork);
		return "redirect:../work";
	}
	@GetMapping("/view/{workid}")
	String view (@PathVariable String workid,Model model) {
		Work list = service.view(workid);
		List<Work> sidework = service.seide(workid);
		model.addAttribute("side", sidework);
		Company com = service.com(workid);
		model.addAttribute("com", com);
		model.addAttribute("list", list);
		return path + "view";
	}

	@GetMapping("/apply/{comName}")
	@ResponseBody
	String apply(HttpSession session,@PathVariable String comName) {
		Mydate mydate = (Mydate) session.getAttribute("mydate");
		String mycomName = mydate.getComName();
		System.out.println(mycomName);
		System.out.println(comName);
		 if(comName.equals(mycomName)){
			return "samecom";
		}else if(!comName.equals(mycomName) && mydate.getId().length() >1){
			return "ok";
		}else {
			return "fail";
		}
	}
}
