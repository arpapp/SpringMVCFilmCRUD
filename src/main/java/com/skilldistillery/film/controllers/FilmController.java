package com.skilldistillery.film.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class FilmController {

	// @Autowired
	// private FilmDAO dao;

	 @RequestMapping(path = "home.do")
	public ModelAndView homepage() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("WEB-INF/views/home.jsp");
		return mv;
	}

	// @RequestMapping("something.do")
	public ModelAndView pullByID() {
		ModelAndView mv = new ModelAndView();
		return mv;
	}

	// @RequestMapping("something.do")
	public ModelAndView addFilm() {
		ModelAndView mv = new ModelAndView();
		return mv;
	}

	// @RequestMapping("something.do")
	public ModelAndView deleteFilm() {
		ModelAndView mv = new ModelAndView();
		return mv;
	}

	// @RequestMapping("something.do")
	public ModelAndView editFilm() {
		ModelAndView mv = new ModelAndView();
		return mv;
	}

	// @RequestMapping("something.do")
	public ModelAndView search() {
		ModelAndView mv = new ModelAndView();
		return mv;
	}

}
