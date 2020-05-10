package com.skilldistillery.film.data;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.skilldistillery.film.entities.Actor;
import com.skilldistillery.film.entities.Film;

public class FilmDAOImpl implements FilmDAO {

	private String URL = "jdbc:mysql://localhost:3306/sdvid?useSSL=false&useLegacyDatetimeCode=false&serverTimezone=MST";	
	private final String user = "student";
	private final String pass = "student";
	static {
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	}

	// User Story 1
	// A user can enter a Film's ID and see
	// the details of the film in a web page.
	// If the film is not found, they see an
	// appropriate message.

	public Film findFilmById(int filmId) throws SQLException {

		Connection conn = DriverManager.getConnection(URL, user, pass);

		Film film = null;
		// SELECT film.title, film.rating, category.name, language.name
		// FROM film
		// JOIN film_category ON film.id = film_category.film_id
		// JOIN category ON category.id = film_category.category_id
		// 
		if (filmId <= 1000) {
		String sql = "SELECT film.title, film.rating, category.name, language.name\n" + "FROM film \n"
				+ "JOIN film_category ON film.id = film_category.film_id\n"
				+ "JOIN category ON category.id = film_category.category_id\n"
				+ "JOIN language ON language.id = film.language_id WHERE film.id = ?";
		PreparedStatement stmt = conn.prepareStatement(sql);
		stmt.setInt(1, filmId);
		ResultSet filmResult = stmt.executeQuery();
		if (filmResult.next()) {
			film = new Film();
			film.setTitle(filmResult.getString("title"));
			film.setRating(filmResult.getString("rating"));
			film.setCategory(filmResult.getString("category.name"));
			film.setLanguage(filmResult.getString("language.name"));
			film.setFilmActors(findActorsByFilmId(filmId));
			
			filmResult.close();
			stmt.close();
			conn.close();
		}
		return film; }
		else {
			String sql = "SELECT * FROM film WHERE id = ?";
			PreparedStatement stmt = conn.prepareStatement(sql);
			stmt.setInt(1, filmId);
			ResultSet filmResult = stmt.executeQuery();
			if (filmResult.next()) {
				film = new Film();
				film.setTitle(filmResult.getString("title"));
				film.setDescription(filmResult.getString("description"));
				film.setRating(filmResult.getString("rating"));
				film.setLanguage(findLanguageByFilmId(filmId));
				film.setCategory("New Release");
				
				filmResult.close();
				stmt.close();
				conn.close();
			
		}
	return film;
	}
	}
	// User Story 2
	// A user can choose to add a new film.
	// They can enter all the properties of the film.
	// Their input will be used to create Film object,
	// which the DAO implementation will save in the database.
	// If the insert fails, the user is informed of this.

	public Film createFilm(Film film) {
		Connection conn = null;
		try {
			conn = DriverManager.getConnection(URL, user, pass);
			conn.setAutoCommit(false); // START TRANSACTION
			String sql = "INSERT INTO film (title, description, release_year, language_id, rental_duration, rental_rate, length, replacement_cost, rating) VALUES (?,?,?,?,?,?,?,?,?)";
			PreparedStatement stmt = conn.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
			stmt.setString(1, film.getTitle());
			stmt.setString(2, film.getDescription());
			stmt.setInt(3, film.getReleaseYear());
			stmt.setInt(4, film.getLanguageId());
			stmt.setInt(5, film.getRentalDuration());
			stmt.setDouble(6, film.getRentalRate());
			stmt.setInt(7, film.getLength());
			stmt.setDouble(8, film.getReplacementCost());
			stmt.setString(9, film.getRating());
			int updateCount = stmt.executeUpdate();
			if (updateCount == 1) {
				ResultSet keys = stmt.getGeneratedKeys();
				if (keys.next()) {
					int newFilmId = keys.getInt(1);
					film.setId(newFilmId);
				}
			} else {
				film = null;
			}
			conn.commit();
		} catch (

		SQLException sqle) {
			sqle.printStackTrace();
			if (conn != null) {
				try {
					conn.rollback();
				} catch (SQLException sqle2) {
					System.err.println("Error trying to rollback");
				}
			}
			throw new RuntimeException("Error inserting film " + film);
		}
		return film;
	}

	// User Story 3
	// When a user retrieves a film, they have the option of deleting it.
	// If they delete the film, it is removed from the database. If the
	// delete fails (such as, due to child records), the user is informed
	// of this.
	public boolean deleteFilm(Film film) {
		Connection conn = null;
		try {
			conn = DriverManager.getConnection(URL, user, pass);
			conn.setAutoCommit(false); // START TRANSACTION
			String sql = "DELETE FROM film WHERE film.id = ?";
			PreparedStatement stmt = conn.prepareStatement(sql);
			stmt.setInt(1, film.getId());
			stmt.executeUpdate();
			conn.commit(); // COMMIT TRANSACTION
		} catch (SQLException sqle) {
			sqle.printStackTrace();
			if (conn != null) {
				try {
					conn.rollback();
				} catch (SQLException sqle2) {
					System.err.println("Error trying to rollback");
				}
			}
			return false;
		}
		return true;
	}

	// User Story 4
	// When a user retrieves a film, they have the option of editing it.
	// If they choose this, all the film's current properties are
	// displayed in a form, allowing them to change any property except
	// the film's ID. When they submit the form, that film's record is
	// updated in the database. If the update fails, the user is
	// informed of this.

	public boolean updateFilm(Film film) {
		Connection conn = null;
		try {
			conn = DriverManager.getConnection(URL, user, pass);
			conn.setAutoCommit(false);

			String sql = "UPDATE film SET title=?, description=?, language_id =?, rental_duration=?, rental_rate=?, replacement_cost=?, rating=?, special_features=? WHERE id=?";
			PreparedStatement stmt = conn.prepareStatement(sql);
			stmt.setString(1, film.getTitle());
			stmt.setString(2, film.getDescription());
			stmt.setInt(3, film.getLanguageId());
			stmt.setInt(4, film.getRentalDuration());
			stmt.setDouble(5, film.getRentalRate());
			stmt.setDouble(6, film.getReplacementCost());
			stmt.setString(7, film.getRating());
			stmt.setString(8, film.getSpecialFeatures());
			stmt.setInt(9, film.getId());
			stmt.executeUpdate();
			conn.commit(); // COMMIT TRANSACTION
		} catch (SQLException sqle) {
			sqle.printStackTrace();
			if (conn != null) {
				try {
					conn.rollback();
				} // ROLLBACK TRANSACTION ON ERROR
				catch (SQLException sqle2) {
					System.err.println("Error trying to rollback");
				}
			}
			return false;
		}
		return true;
	}
	// User Story 5
	// A user can search for films by keyword/pattern in title or
	// description. From the resulting list of films, the user can
	// choose to update or delete a record.

	public List<Film> findFilmsWithSearchKeyWord(String userSearchKw) throws SQLException {
		List<Film> filmsWithUserSearchKw = new ArrayList<>();
		Connection conn = DriverManager.getConnection(URL, user, pass);

//		SELECT film.title, film.rating, category.name, language.name\n" + 
//		"FROM film \n" + 
//		"JOIN film_category ON film.id = film_category.film_id\n" + 
//		"JOIN category ON category.id = film_category.category_id\n" + 
//		"JOIN language ON language.id = film.language_id WHERE film.id = ?";
		// String sql = "SELECT film.id, film.title, film.description,
		// film.release_year, film.rating, language.name FROM film JOIN language ON
		// language.id = film.language_id WHERE film.title LIKE ? OR film.description
		// LIKE ?";
		Film film = null;
		String sql = "SELECT film.title, film.description, film.rating, category.name, language.name FROM film JOIN film_category ON film.id = film_category.film_id JOIN category ON category.id = film_category.category_id JOIN language ON language.id = film.language_id WHERE film.title LIKE ? OR film.description LIKE ?";

		PreparedStatement stmt = conn.prepareStatement(sql);
		stmt.setString(1, "%" + userSearchKw + "%");
		stmt.setString(2, "%" + userSearchKw + "%");

		ResultSet rs = stmt.executeQuery();

		while (rs.next()) {
			film = new Film();
			film.setTitle(rs.getString("title"));
			film.setDescription(rs.getString("description"));
			film.setRating(rs.getString("rating"));
			film.setCategory(rs.getString("category"));
			film.setLanguage(rs.getString("language.name"));
			film.setFilmActors(findActorsByFilmId(rs.getInt("id")));

			filmsWithUserSearchKw.add(film);
		}
		rs.close();
		stmt.close();
		conn.close();
		return filmsWithUserSearchKw;

	}

	// User Story 6
	// When a film's details are displayed, its actors and
	// categories are also listed.
	public List<Actor> findActorsByFilmId(int filmId) throws SQLException {
		List<Actor> actors = new ArrayList<>();
		Connection conn = DriverManager.getConnection(URL, user, pass);
		Actor actor = null;
		String sql = "SELECT actor.first_name, actor.last_name, film_actor.film_id FROM actor JOIN film_actor ON film_actor.actor_id = actor.id JOIN film ON film.id = film_actor.film_id WHERE film_id = ?";
		PreparedStatement stmt = conn.prepareStatement(sql);
		stmt.setInt(1, filmId);
		ResultSet rs = stmt.executeQuery();
		while (rs.next()) {
			actor = new Actor();
			actor.setId(rs.getInt("film_id"));
			actor.setFirstName(rs.getString("first_name"));
			actor.setLastName(rs.getString("last_name"));

			actors.add(actor);
		}
		rs.close();
		stmt.close();
		conn.close();

		return actors;
	}
	
	public String findLanguageByFilmId(int filmId) throws SQLException {
		Connection conn = DriverManager.getConnection(URL, user, pass);
		String language = null;
		String sql = "SELECT * FROM film JOIN language ON language.id = film.language_id WHERE film.id = ?";
		PreparedStatement stmt = conn.prepareStatement(sql);
		stmt.setInt(1, filmId);
		ResultSet rs = stmt.executeQuery();
		while (rs.next()) {
			language = rs.getString("language.name");
		}
		rs.close();
		stmt.close();
		conn.close();
		return language;
	}

}
