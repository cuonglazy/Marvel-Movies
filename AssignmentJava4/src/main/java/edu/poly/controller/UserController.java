package edu.poly.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import edu.poly.constant.SessionAttr;
import edu.poly.entity.User;
import edu.poly.service.EmailService;
import edu.poly.service.UserService;
import edu.poly.service.impl.EmailServiceImpl;
import edu.poly.service.impl.UserServiceImpl;

@WebServlet(urlPatterns = { "/login", "/logout", "/register", "/forgotPass", "/changePass" })
public class UserController extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = -134202161758647741L;
	private UserService userService = new UserServiceImpl();
	private EmailService emailService = new EmailServiceImpl();
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		String path = request.getServletPath();
		switch (path) {
			case "/login":
				doGetLogin(request, response);
				break;
			case "/register":
				doGetRegister(request, response);
				break;
			case "/logout":
				doGetLogout(session,request, response);
				break;
			case "/forgotPass":
				doGetForgotPass(request, response);
				break;
			case "/changePass":
				doGetChangePass(request, response);
				break;
		}
	}
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		String path = request.getServletPath();
		switch (path) {
			case "/login":
				doPostLogin(session,request, response);
				break;
			case "/register":
				doPostRegister(session,request, response);
				break;	
			case "/forgotPass":
				doPostForgotPass(request,response);
				break;
			case "/changePass":
				doPostChangePass(session,request,response);
				break;
		}
	}
	
	protected void doGetLogin(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher requestDispatcher = request.getRequestDispatcher("/views/user/login.jsp");
		requestDispatcher.forward(request, response);
	}
	
	protected void doGetRegister(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher requestDispatcher = request.getRequestDispatcher("/views/user/login.jsp");
		requestDispatcher.forward(request, response);
	}
	protected void doGetForgotPass(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher requestDispatcher = request.getRequestDispatcher("/views/user/login.jsp");
		requestDispatcher.forward(request, response);
	}
	protected void doGetChangePass(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher requestDispatcher = request.getRequestDispatcher("/views/user/change-password.jsp");
		requestDispatcher.forward(request, response);
	}
	protected void doGetLogout(HttpSession session,HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		session.removeAttribute(SessionAttr.CURRENT_USER);
		response.sendRedirect("index");
	}
	protected void doPostLogin(HttpSession session,HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		
		User user = userService.login(username, password);
		if (user != null) {
			session.setAttribute(SessionAttr.CURRENT_USER, user);
			response.sendRedirect("index");
		}else {
			response.sendRedirect("login");
		}
	}
	
	
	protected void doPostRegister(HttpSession session,HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String email = request.getParameter("email");
		
		User user = userService.register(username, password,email);
		
		if (user != null) {
			emailService.sendEmail(getServletContext(), user, "welcome");
			session.setAttribute(SessionAttr.CURRENT_USER, user);
			response.sendRedirect("index");
		}else {
			response.sendRedirect("register");
		}
	}
	
	protected void doPostForgotPass(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("application/json");
		String email = request.getParameter("email");
		
		User userWithNewPass = userService.resetPassword(email);
		if (userWithNewPass != null) {
			emailService.sendEmail(getServletContext(), userWithNewPass, "forgot");
			response.setStatus(204);
		}else {
			response.setStatus(400);
		}
	}
	protected void doPostChangePass(HttpSession session,HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("application/json");
		String currentPass = request.getParameter("currentPass");
		String newPass = request.getParameter("newPass");
		
		User currenUser = (User) session.getAttribute(SessionAttr.CURRENT_USER);
		
		if (currenUser.getPassword().equals(currentPass)) {
			currenUser.setPassword(newPass);
			User updateUser = userService.update(currenUser);
			if (updateUser != null) {
				session.setAttribute(SessionAttr.CURRENT_USER, updateUser);
				response.sendRedirect("index");
			}else {
				response.sendRedirect("changePass");
			}
		}else {
			response.sendRedirect("changePass");
		}
	}
}
