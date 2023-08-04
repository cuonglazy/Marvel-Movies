package edu.poly.controller.admin;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.fasterxml.jackson.databind.ObjectMapper;

import edu.poly.constant.SessionAttr;
import edu.poly.dto.UserDto;
import edu.poly.dto.VideoLikedInfo;
import edu.poly.entity.User;

import edu.poly.service.StatsService;
import edu.poly.service.UserService;
import edu.poly.service.impl.StatsServiceImpl;
import edu.poly.service.impl.UserServiceImpl;

@WebServlet(urlPatterns = { "/admin", "/favories" }, name = "HomeControllerOfAdmin")
public class HomeController extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 8128958094080393649L;

	private StatsService statsService = new StatsServiceImpl();
	private UserService userService = new UserServiceImpl();
	
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session = req.getSession();
		User currentUser = (User) (User) session.getAttribute(SessionAttr.CURRENT_USER);

		if (currentUser != null && currentUser.getIsAdmin() == Boolean.TRUE) {
			String path = req.getServletPath();
			switch (path) {
			case "/admin":
				doGetAdmin(req, resp);
				break;
			case "/favories":
				doGetFavorites(req, resp);
				break;
			}

		} else {
			resp.sendRedirect("index");
		}
	}

	private void doGetAdmin(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		List<VideoLikedInfo> videos = statsService.findVideoLikedInfo();
		req.setAttribute("videos", videos);
		RequestDispatcher requestDispatcher = req.getRequestDispatcher("/views/admin/home.jsp");
		requestDispatcher.forward(req, resp);
	}
	// localhost: 8080/assignment/admin/favorite?href={videoHref}
	private void doGetFavorites(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		PrintWriter out = resp.getWriter();
		resp.setCharacterEncoding("UTF-8");
		resp.setContentType("application/json");
		String videoHref = req.getParameter("href");
		List<UserDto> users = userService.findUsersLikedVideoByVideoHref(videoHref);
		if (users.isEmpty()) {
			resp.setStatus(400);
		}else {
			// map tu object  - try String
			ObjectMapper mapper = new ObjectMapper();
			String dataResponse = mapper.writeValueAsString(users);
			resp.setStatus(200);
			out.print(dataResponse);
			out.flush();
		}
	}
	
}