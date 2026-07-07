package controller;

import java.io.IOException;

import dao.UserDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import model.User;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        response.sendRedirect("jsp/login.jsp");

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String login = request.getParameter("login");
        String password = request.getParameter("password");
        request.setAttribute("login", login);

        if (login == null || login.trim().isEmpty()
                || password == null || password.trim().isEmpty()) {

            request.setAttribute("error", "Please fill in all fields.");

            request.getRequestDispatcher("/jsp/login.jsp")
                   .forward(request, response);

            return;
        }

        UserDAO dao = new UserDAO();

        User user = dao.loginUser(login, password);

        if (user != null) {

            HttpSession session = request.getSession();

            session.setAttribute("loggedInUser", user);

            if (user.getRole().equals("admin")) {

                response.sendRedirect(
                        request.getContextPath() + "/jsp/dashboard.jsp");

            } else {

                response.sendRedirect(
                        request.getContextPath() + "/jsp/index.jsp");

            }

        } else {

            request.setAttribute("error",
                    "Invalid username or password.");

            request.getRequestDispatcher("/jsp/login.jsp")
                   .forward(request, response);

        }

    }

}