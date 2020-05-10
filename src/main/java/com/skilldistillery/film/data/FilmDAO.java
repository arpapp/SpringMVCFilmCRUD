package com.skilldistillery.film.data;

import java.sql.SQLException;
import java.util.List;
import com.skilldistillery.film.entities.Film;


public interface FilmDAO {
	
	 public Film findFilmById(int filmId) throws SQLException;
	 public Film createFilm(Film newFilm);
	 public boolean deleteFilm(Film byeFilm);
	 public boolean updateFilm(Film film);
	 public List<Film> findFilmsWithSearchKeyWord(String searchKeyword) throws SQLException;
	 
}
