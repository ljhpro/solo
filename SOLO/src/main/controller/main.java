package main.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class main {
	@RequestMapping("/zzz")
	public ModelAndView home() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("p:body");			
		return mav;
	}
	
	@RequestMapping("/start")
	public ModelAndView home2() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("p:header/body/footer");			
		return mav;
	}
	@RequestMapping("/")
	public ModelAndView home3() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("p:header/1/footer");			
		return mav;
	}


}
