package com.skilldistillery.film.controllers;

import java.sql.SQLException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
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

	 @RequestMapping(path = "searchID.do", params = "searchId", method = RequestMethod.GET)
	public ModelAndView pullByID(int searchId) {
		ModelAndView mv = new ModelAndView();
		try {
			Film found = dao.findFilmById(searchId);
			mv.addObject("film",found);
			mv.setViewName("views/results");
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return mv;
	}

	@RequestMapping(path = "addFilmAction.do", method = RequestMethod.POST, params = { "title", "description", "releaseYear", "languageId", 
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

	 @RequestMapping(path = "deleteFilmAction.do", params = { "title", "description", "releaseYear", "languageId", 
				"rentalDuration", "rentalRate", "length", "replacementCost", "rating", "specialFeatures"})
	public ModelAndView deleteFilm(int id, String title, String description, int releaseYear, int languageId, int rentalDuration,
			double rentalRate, int length, double replacementCost, String rating, String specialFeatures) {
		ModelAndView mv = new ModelAndView();
		Film film = new Film(id, title, description, releaseYear, languageId, rentalDuration, rentalRate, length, replacementCost, rating, specialFeatures);
		dao.deleteFilm(film);
		mv.addObject("film", film);
		mv.setViewName("views/results");
		return mv;
	}

	@RequestMapping(path = "editFilmAction.do", method = RequestMethod.POST, params = { "title", "description", "releaseYear", "languageId", 
			"rentalDuration", "rentalRate", "length", "replacementCost", "rating", "specialFeatures"})
	public ModelAndView editFilm(int id, String title, String description, int releaseYear, int languageId, int rentalDuration,
			double rentalRate, int length, double replacementCost, String rating, String specialFeatures) {
		ModelAndView mv = new ModelAndView();
		Film film = new Film(id, title, description, releaseYear, languageId, rentalDuration, rentalRate, length, replacementCost, rating, specialFeatures);
		dao.updateFilm(film);
		mv.addObject("film", film);
		mv.setViewName("views/results");
		return mv;
	}

	 @RequestMapping(path = "searchKeyword.do", params = "searchKeyword")
	public ModelAndView searchKeywords(String searchKeyword) {
		ModelAndView mv = new ModelAndView();
		try {
			mv.addObject("listFilm", dao.findFilmsWithSearchKeyWord(searchKeyword));
			mv.setViewName("views/results");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return mv;
	}

}
