package controller;

import java.io.IOException;

import dao.UserDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.User;

@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
	        throws ServletException, IOException {

	    response.sendRedirect("jsp/register.jsp");

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String username = request.getParameter("username");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		String phoneNumber = request.getParameter("phoneNumber");
		
		if (username == null || username.trim().isEmpty()
		        || email == null || email.trim().isEmpty()
		        || password == null || password.trim().isEmpty()) {

		    request.setAttribute("error", "Please fill in all required fields.");

		    request.getRequestDispatcher("/jsp/register.jsp")
		           .forward(request, response);

		    return;
		}

		User user = new User();
		user.setUsername(username);
		user.setEmail(email);
		user.setPassword(password);
		user.setPhoneNumber(phoneNumber);
		user.setRole("customer");
		
		request.setAttribute("username", username);
		request.setAttribute("email", email);
		request.setAttribute("phoneNumber",
		        request.getParameter("phoneNumber"));

		UserDAO dao = new UserDAO();
		

		if (dao.emailExists(email)) {
			request.setAttribute("error", "Email already exists.");

			request.getRequestDispatcher("/jsp/register.jsp")
			       .forward(request, response);
		} else {

			if (dao.registerUser(user)) {

			    request.setAttribute("success",
			            "Registration successful! Please sign in.");

			    request.getRequestDispatcher("/jsp/login.jsp")
			           .forward(request, response);

			} else {

			    request.setAttribute("error", "Registration failed. Please try again.");

			    request.getRequestDispatcher("/jsp/register.jsp")
			           .forward(request, response);

			}

		}
	}

}