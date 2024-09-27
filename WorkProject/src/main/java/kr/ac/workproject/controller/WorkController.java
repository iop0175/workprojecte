package kr.ac.workproject.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import kr.ac.workproject.model.Work;
import kr.ac.workproject.service.WorkService;

@Controller
public class WorkController {
final String path = "work/";
@Autowired
WorkService service;
@GetMapping("/work")
String work(Model model) {
	List<Work> list = service.workList();
	model.addAttribute("list", list);
	return path+"work";	
}
}
