package com.knotspot.service;

import java.sql.Connection;
import java.sql.SQLException;

import com.knotspot.config.DBConfig;

public class LoginService {
	
	
	private Connection dbCon;	//Declare a variable to store the sql connection imported from config class
	private boolean isConnError = false;	//set connection to false in beginning
	
	
	/**
	 * A constructor to handle database connection 
	 * checks whether database is successfully connected 
	 */
	public LoginService() {
		try {
			dbCon = DBConfig.getDbConnection();
		}
		catch(SQLException | ClassNotFoundException e) {
			System.out.println(e.toString());
			e.printStackTrace(); //helps to trace the line where exception occurred
		}
	}
	
	
	
}
