package com.iot.sp.test;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/test") 
public class TestController { 
 
	@RequestMapping(value="/test1" , method=RequestMethod.POST) 	
	public @ResponseBody ModelMap postTest(ModelMap map, @RequestBody Map hm){ 
		map.put("test", "test");
		return map;    
	}
	@RequestMapping(value="/test1" , method=RequestMethod.GET)	
	public @ResponseBody ModelMap getTest(ModelMap map, @RequestParam(value="exam") 
	String exam){
		System.out.println	(exam);
		map.put("test", exam);
		return map;   
	}
	
	@RequestMapping("/write") 	
	public String write(HttpServletRequest request, Model map){
		return "test/write";   
	}
	@RequestMapping("/modify") 	
	public String modify(HttpServletRequest request, Model map){
		return "test/modify";  
	}
	@RequestMapping("/delete") 	
	public String delete(HttpServletRequest request, Model map){
		return "test/delete";  
	}
	@RequestMapping("/t")   
	public String test2(HttpServletRequest request, @RequestParam(value="ttt",required=false)String ttt){
	System.out.println(ttt); 
	String test = request.getParameter("test");
	System.out.println(test);
	return "test";
}
}
