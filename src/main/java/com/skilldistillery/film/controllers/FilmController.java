package com.skilldistillery.film.controllers;

import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.skilldistillery.film.data.FilmDAO;
import com.skilldistillery.film.entities.Film;

@Controller
public class FilmController {

	 @Autowired
	 private FilmDAO dao;

	@RequestMapping(path = "home.do")
	public ModelAndView homepage() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("views/home");
		return mv;
	}
	@RequestMapping(path = "addFilm.do")
	public ModelAndView addPage() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("views/addFilm");
		return mv;
	}
	@RequestMapping(path = "deleteFilm.do", params = "id")
	public ModelAndView deletePage(int id) {
		ModelAndView mv = new ModelAndView();
		Film film;
		try {
			film = dao.findFilmById(id);
			mv.addObject(film);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		mv.setViewName("views/deleteFilm");
		return mv;
	}
	@RequestMapping(path = "editFilm.do", params = "id")
	public ModelAndView editPage(int id) {
		ModelAndView mv = new ModelAndView();
		Film film;
		try {
			film = dao.findFilmById(id);
			mv.addObject(film);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		mv.setViewName("views/editFilm");
		return mv;
	}

	 @RequestMapping(path = "searchID.do", params = "searchId", method = RequestMethod.GET)
	public ModelAndView pullByID(int searchId) {
		ModelAndView mv = new ModelAndView();
		try {
			Film found = dao.findFilmById(searchId);
			mv.addObject("film",found);
			mv.setViewName("views/resultId");
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return mv;
	}
	 
	 @RequestMapping(path = "addFilmAction.do", method = RequestMethod.POST)
	 public ModelAndView addFilm(Film film, RedirectAttributes redir) {
		 ModelAndView mv = new ModelAndView();
		 Film created = dao.createFilm(film);
		 mv.addObject("film", created);
		 redir.addFlashAttribute("film", film);
		 mv.setViewName("views/resultAdd");
//		 mv.setViewName("redirect:filmCreated.do");
		 return mv;
	 }
	 
	 @RequestMapping(path="filmCreated.do", method = RequestMethod.GET)
	 public ModelAndView filmCreated() {
		 ModelAndView mv = new ModelAndView();
//		 mv.addObject(film);
		 mv.setViewName("views/resultAdd");
		 return mv;
	 }
	 
	 @RequestMapping(path = "deleteFilmAction.do", method = RequestMethod.POST, params = "id")
	public ModelAndView deleteFilm(int id) {
		ModelAndView mv = new ModelAndView();
//		Film film = new Film(id, title, description, releaseYear, languageId, rentalDuration, rentalRate, length, replacementCost, rating, specialFeatures);
		Film film;
		try {
			film = dao.findFilmById(id);
			boolean result = dao.deleteFilm(film);
			if (result == true) {
				String print = "Your film was deleted successfully.";
				mv.addObject("string", print);
			}
			else if (result == false) {
				String print = "Your film was NOT deleted succesfully. Only films with IDs greater than 1000 can be deleted at this time.";
				mv.addObject("string", print);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		mv.setViewName("views/resultsDelete");
		return mv;
	}

	@RequestMapping(path = "editFilmAction.do", method = RequestMethod.POST)
	public ModelAndView editFilm(Film film) {
		ModelAndView mv = new ModelAndView();	
		dao.updateFilm(film);
		mv.addObject("film", film);
		mv.setViewName("views/resultAdd");
		return mv;
	}

	 @RequestMapping(path = "searchKeyword.do", params = "searchKeyword", method = RequestMethod.GET)
	public ModelAndView searchKeywords(String searchKeyword) {
		ModelAndView mv = new ModelAndView();
		try {
			List<Film> listFilm = dao.findFilmsWithSearchKeyWord(searchKeyword);
			mv.addObject("listFilm", listFilm);
			mv.setViewName("views/results");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return mv;
	}

}
