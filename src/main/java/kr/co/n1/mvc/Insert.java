package kr.co.n1.mvc;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import kr.co.n1.mvc.ArticleDTO;

@Controller
@RequestMapping("article")
public class Insert {
	private static Logger logger = LoggerFactory.getLogger(Insert.class);
	@RequestMapping(value = "insert", method=RequestMethod.GET)
	public ModelAndView insert() {
		return new ModelAndView("article/insert");
	}
	
	@RequestMapping(value = "insert", method=RequestMethod.POST)
	public ModelAndView insert(ArticleDTO articleDTO) {
		
		
		logger.info(articleDTO.toString());

		return new ModelAndView("article/insert");
	}
}
