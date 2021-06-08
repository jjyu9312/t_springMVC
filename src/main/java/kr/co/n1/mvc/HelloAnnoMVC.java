package kr.co.n1.mvc;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HelloAnnoMVC {
	
	@RequestMapping(value = "/hello", method = {
			RequestMethod.GET,
			RequestMethod.POST
	})
	public ModelAndView helloAnno() {
		return new ModelAndView("hello", "msg", "Hello @MVC");
	} 

	@GetMapping("/getAnno")
	public ModelAndView getAnno() {
		return new ModelAndView("hello", "msg", "GET @MVC");
	} 
	@PostMapping("/postAnno")
	public ModelAndView postAnno() {
		return new ModelAndView("hello", "msg", "POST @MVC");
	} 
	@GetMapping("/test/anno")
	public ModelAndView testAnno() {
		return new ModelAndView("hello", "msg", "test/anno @MVC");
	} 
}
