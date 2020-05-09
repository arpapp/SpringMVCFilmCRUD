package com.skilldistillery.film.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
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

	// @RequestMapping("somethign.do")
	public ModelAndView pullByID() {
		ModelAndView mv = new ModelAndView();
		return mv;
	}

	@RequestMapping(path = "addFilmAction.do", params = { "title", "description", "releaseYear", "languageId", 
			"rentalDuration", "rentalRate", "length", "replacementCost", "rating", "specialFeatures"})
	public ModelAndView addFilm(String title, String description, int releaseYear, int languageId, int rentalDuration,
			double rentalRate, int length, double replacementCost, String rating, String specialFeatures) {
		ModelAndView mv = new ModelAndView();
		Film film = new Film();
		film.setTitle(title);
		film.setDescription(description);
		film.setReleaseYear(releaseYear);
		film.setLanguageId(languageId);
		film.setRentalDuration(rentalDuration);
		film.setRentalRate(rentalRate);
		film.setLength(length);
		film.setReplacementCost(replacementCost);
		film.setRating(rating);
		film.setSpecialFeatures(specialFeatures);
		Film created = dao.createFilm(film);
		mv.addObject("film", created);
		mv.setViewName("views/results");
		return mv;
	}

	// @RequestMapping("something.do")
	public ModelAndView deleteFilm() {
		ModelAndView mv = new ModelAndView();
		return mv;
	}

	@RequestMapping(path = "editFilmAction.do", params = { "title", "description", "releaseYear", "languageId", 
			"rentalDuration", "rentalRate", "length", "replacementCost", "rating", "specialFeatures"})
	public ModelAndView editFilm(String title, String description, int releaseYear, int languageId, int rentalDuration,
			double rentalRate, int length, double replacementCost, String rating, String specialFeatures) {
		ModelAndView mv = new ModelAndView();
		Film film = new Film();
		film.setTitle(title);
		film.setDescription(description);
		film.setReleaseYear(releaseYear);
		film.setLanguageId(languageId);
		film.setRentalDuration(rentalDuration);
		film.setRentalRate(rentalRate);
		film.setLength(length);
		film.setReplacementCost(replacementCost);
		film.setRating(rating);
		film.setSpecialFeatures(specialFeatures);
		Film created = dao.createFilm(film);
		mv.addObject("film", created);
		mv.setViewName("views/results");
		return mv;
	}

	// @RequestMapping("something.do")
	public ModelAndView search() {
		ModelAndView mv = new ModelAndView();
		return mv;
	}

}
