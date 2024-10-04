package kr.ac.workproject.controller;


import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.ac.workproject.model.Mydate;
import kr.ac.workproject.model.Work;
import kr.ac.workproject.service.WorkService;
@RequestMapping("/work")
@Controller
public class WorkController {
final String path = "work/";
@Autowired
WorkService service;
@GetMapping("")
String work(Model model) {
	List<Work> list = service.workList();
	model.addAttribute("list", list);
	return path+"work";	
}
@GetMapping("/search/{item}")
String search(@PathVariable String item, Model model) {
	List<Work> list = service.workList();
	model.addAttribute("list", list);
	List<Work> searchlist = service.searchList(item);
	model.addAttribute("searchlist", searchlist);
	return path+"work";		
}
@GetMapping("/add")
String add() {
	return path+"add";
}
@PostMapping("/add")
String add(Work workItem,HttpSession session) {
	Mydate mydate=(Mydate) session.getAttribute("mydate"); 
	workItem.setComName(mydate.getComName());
	workItem.setComNum(mydate.getComNum());
	System.out.println(workItem.getWorkDate());
	service.add(workItem);
	return "redirect:../work";
}
}
