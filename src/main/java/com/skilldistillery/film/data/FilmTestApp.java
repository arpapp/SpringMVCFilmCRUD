package com.skilldistillery.film.data;

import java.sql.SQLException;

import com.skilldistillery.film.entities.Film;

public class FilmTestApp {

	FilmDAO dao = new FilmDAOImpl();
	
	public static void main(String[] args) throws SQLException {
		// TODO Auto-generated method stub
		FilmTestApp app = new FilmTestApp();
		
		app.test();
	}
	
	public void test() throws SQLException {
		Film find = dao.findFilmById(2);
		System.out.println(find);
	}

}
