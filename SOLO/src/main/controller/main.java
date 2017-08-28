package main.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class main {
	@RequestMapping("/")
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

}
