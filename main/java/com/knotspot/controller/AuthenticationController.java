package com.knotspot.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.time.LocalDate;
import java.time.Period;
import java.time.format.DateTimeParseException; 

import com.knotspot.model.UserModel;
import com.knotspot.service.RegisterService;
import com.knotspot.util.ValidationUtil;

/**
 * Servlet implementation class Authentication
 */
@WebServlet(asyncSupported = true, urlPatterns = { "/authentication", "/" })
public class AuthenticationController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("WEB-INF/pages/auth.jsp").forward(request,response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String formAction = request.getParameter("register");

		if("register".equals(formAction)) {
			
			//calling the register logic method
			handleRegister(request, response);
			
		}
		
	}

	private boolean isValidInputs(HttpServletRequest request, HttpServletResponse response, String firstName, String lastName, String dob, String gender, String contact, String email, String username, String password, String retypePassword)  throws ServletException, IOException {
		boolean isValid = true;
		
		isValid &= checkInputField(request, "firstname", firstName, "first name");
		isValid &= checkInputField(request, "lastname", lastName, "last name");
		isValid &= checkInputField(request, "dob", dob, "Age");
		isValid &= checkInputField(request, "gender", gender, "gender");
		isValid &= checkInputField(request, "contact", contact, "Phone number");
		isValid &= checkInputField(request, "email", email, "Email");
		isValid &= checkInputField(request, "username", username, "Username");
		isValid &= checkPasswordField(request, password, retypePassword, "Password", username);
		System.out.println("Validation is checked");
		
		return isValid;
	}
	
	private void handleRegister(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		
			String firstName = request.getParameter("firstname");
			String lastName = request.getParameter("lastname");
			String stringDob = request.getParameter("birthday");
			LocalDate dob = null;
			
			try {
				ValidationUtil.isValidDate(stringDob, "Calendar");
				dob = LocalDate.parse(stringDob);
			}
			catch(NullPointerException  | DateTimeParseException e) {
				System.out.println("Calendar must be in proper format");
			}
			
			
			int age = Period.between(dob, LocalDate.now()).getYears();
			String gender = request.getParameter("gender");
			String address = request.getParameter("city");
			String contact = request.getParameter("contact");
			String email = request.getParameter("email");
			String username = request.getParameter("username");
			String password = request.getParameter("password");
			String retypePassword = request.getParameter("retypePassword");
			System.out.println("Retrieved data");
			boolean isValid = isValidInputs(request, response, firstName, lastName, stringDob, gender, contact, email, username, password, retypePassword);
				
			if(isValid) {
				System.out.println("All data is valid");
				//making an object of user to assign the values
				UserModel users = new UserModel(firstName,null,lastName, age, gender, address, contact, email, username, password );
				RegisterService registerService = new RegisterService();
				UserModel createdUser = registerService.addUsers(users);
				System.out.println("Reacher here 1");
				if (createdUser != null) {
					System.out.println("Reacher here 2");
						
				}
			}
			else {
				request.setAttribute("showRegister", true);
				request.getRequestDispatcher("/WEB-INF/pages/auth.jsp").forward(request, response);
			}
			
			
	}
	
	//a try-catch for validationfield 
	public static boolean checkInputField(HttpServletRequest request, String field, String value, String attribute) {
		boolean isValid = true;
		
		try {
			getInputField(field, value, attribute);
		}
		catch(NullPointerException | IndexOutOfBoundsException | IllegalArgumentException e) {
			request.setAttribute(field+"Error", e.getMessage());
			isValid = false;
		}
		return isValid;
	}
	
	//a try-catch for validationfield 
		public static boolean checkPasswordField(HttpServletRequest request, String password, String retypePassword, String attribute, String username) {
			boolean isValid = true;
			
			try {
				ValidationUtil.doPasswordsMatch(password, retypePassword, attribute, username);
			}
			catch(NullPointerException | IndexOutOfBoundsException | IllegalArgumentException e) {
				request.setAttribute("passwordError", e.getMessage());
				isValid = false;
			}
			return isValid;
		}
	
	
	//to differentiate methods for each fields
	public static void getInputField(String field, String value, String attribute) {
		if(field.equalsIgnoreCase("firstname") || field.equalsIgnoreCase("lastname")) {
			ValidationUtil.isValidName(value, attribute);
		}
		else if(field.equalsIgnoreCase("dob")) {
			ValidationUtil.isValidEntryAge(LocalDate.parse(value), attribute);
		}
		else if(field.equalsIgnoreCase("gender")) {
			ValidationUtil.isValidGender(value, attribute);
		}
		else if(field.equalsIgnoreCase("contact")) {
			ValidationUtil.isValidContact(value, attribute);		
		}
		else if(field.equalsIgnoreCase("email")) {
			ValidationUtil.isValidEmail(value, attribute);
		}
		else if(field.equalsIgnoreCase("username")) {
			ValidationUtil.isValidUserName(value, attribute);
		}
	}

	

}
