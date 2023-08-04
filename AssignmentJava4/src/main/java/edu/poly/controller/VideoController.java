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
import edu.poly.entity.History;
import edu.poly.entity.User;
import edu.poly.entity.Video;
import edu.poly.service.HistoryService;
import edu.poly.service.VideoService;
import edu.poly.service.impl.HistoryServiceImpl;
import edu.poly.service.impl.VideoServiceImpl;

@WebServlet(urlPatterns = "/video")
public class VideoController extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = -292532292966466769L;

	private VideoService videoService = new VideoServiceImpl();
	private HistoryService historyService = new HistoryServiceImpl();

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String actionParam = req.getParameter("action");
		String href = req.getParameter("id");
		HttpSession session = req.getSession();

		switch (actionParam) {
		case "watch":
			doGetWatch(session, href, req, resp);
		case "like":
			doGetLike(session, href, req, resp);
		}
	}

	// localhost:8080/AsssignmentJava4/video?action=watch*id={href}
	private void doGetWatch(HttpSession session, String href, HttpServletRequest req, HttpServletResponse resp)
			throws IOException, ServletException {
		Video video = videoService.findByHref(href);
		req.setAttribute("video", video);

		User currentUser = (User) session.getAttribute(SessionAttr.CURRENT_USER);
		if (currentUser != null) {
			History history = historyService.create(currentUser, video);
			req.setAttribute("flagLikedBtn", history.getIsLiked());
		}

		RequestDispatcher requestDispatcher = req.getRequestDispatcher("/views/user/movie-details.jsp");
		requestDispatcher.forward(req, resp);
	}

	// localhost:8080/AsssignmentJava4/video?action=like*id={href}
	private void doGetLike(HttpSession session, String href, HttpServletRequest req, HttpServletResponse resp)
			throws IOException, ServletException {
		resp.setContentType("application/json");
		User currentUser = (User) session.getAttribute(SessionAttr.CURRENT_USER);
		boolean result = historyService.updateLikeOrUnlike(currentUser, href);
		if (result == true) {
			resp.setStatus(204);// succeed but no response data
		} else {
			resp.setStatus(400);
		}
	}
}
