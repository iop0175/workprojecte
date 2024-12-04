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
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttribute;

import kr.ac.workproject.model.Contract;
import kr.ac.workproject.model.Mydate;
import kr.ac.workproject.model.Vendor;
import kr.ac.workproject.service.ContractService;

@Controller
@RequestMapping("/contract")
public class ContractController {
	@Autowired
	ContractService service;
	final String path = "contract/";
@PostMapping("/vendor/{workNum}")
String vendor(Vendor vendor,HttpSession session ,@PathVariable String workNum ) {
	Mydate mydate = (Mydate) session.getAttribute("mydate");
	vendor.setId(mydate.getId());
	vendor.setComName(mydate.getComName());
	vendor.setWorkNum(workNum);
	service.vendor(vendor);
	return "redirect:../../work";
}
@GetMapping("/my/{workNum}")
String mycon(HttpSession session,Model model,@PathVariable String workNum) {
	List<Vendor> list = service.mycon(workNum);
	model.addAttribute("list", list);
	return path+"mycon";
}
@ResponseBody
@GetMapping("/final/{vendorNum}")
String fianl(@PathVariable String vendorNum,HttpSession session,Contract contract) {
	 Vendor vendor = (Vendor) service.fianl(vendorNum);
	 Mydate mydate = (Mydate) session.getAttribute("mydate");
	 contract.setBuyerComname(mydate.getComName());
	 contract.setBuyerId(mydate.getId());
	 if (vendor.getInfo() == null) {
		 contract.setInfo(vendor.getPay()+"가 적정가 인듯합니다.");
	}else {
		 contract.setInfo(vendor.getInfo());
	}
	 contract.setVendorComname(vendor.getComName());
	 contract.setVendorId(vendor.getId());
	 contract.setVendorNum(vendor.getVendorNum());
	 contract.setVendorPrice(vendor.getPay());
	 if (!vendor.getWorkNum().equals(null)) {
		 contract.setWorkNum(vendor.getWorkNum());
	}else {
		contract.setMatNum(vendor.getMatNum());
	}
	 service.fianlcon(contract);
	return "ok";
}
@GetMapping("/view/{workNum}")
String view(@PathVariable String workNum,Model model) {
	Contract contract = service.view(workNum);
	model.addAttribute("item", contract);
	return path +"view";
};
}
