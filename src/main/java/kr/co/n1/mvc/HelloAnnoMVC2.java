package kr.co.n1.mvc;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("member")
public class HelloAnnoMVC2 {

	@RequestMapping("regist")
	public ModelAndView regist() {
		return new ModelAndView("hello", "msg", "회원 가입");
	}
	@RequestMapping("info")
	public ModelAndView info() {
		return new ModelAndView("hello", "msg", "자기 정보 보기");
	}
	@RequestMapping("update")
	public ModelAndView update() {
		return new ModelAndView("hello", "msg", "자기 정보 수정");
	}
	@RequestMapping("expire")
	public ModelAndView expire() {
		return new ModelAndView("hello", "msg", "회원 탈퇴");
	}

	
	
	
}
