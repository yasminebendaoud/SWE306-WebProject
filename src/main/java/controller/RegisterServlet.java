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
		
		if (username == null || username.trim().isEmpty()
		        || email == null || email.trim().isEmpty()
		        || password == null || password.trim().isEmpty()) {

		    response.getWriter().println("Please fill in all required fields.");
		    return;
		}

		User user = new User();
		user.setUsername(username);
		user.setEmail(email);
		user.setPassword(password);
		user.setRole("customer");

		UserDAO dao = new UserDAO();

		if (dao.emailExists(email)) {
			response.getWriter().println("Email already exists!");
		} else {

			if (dao.registerUser(user)) {

			    response.sendRedirect(request.getContextPath() + "/jsp/login.jsp");

			} else {

			    response.getWriter().println("Registration Failed!");

			}

		}
	}

}