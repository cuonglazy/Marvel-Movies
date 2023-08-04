package edu.poly.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

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

@WebServlet(urlPatterns = {"/index","/favorites","/history"})
public class HomeController extends HttpServlet{

	private static final long serialVersionUID = 1517115637537021552L;
//	private static final int VIDEO_MAX_PAGE_SIZE = 4; 
	private VideoService videoService = new VideoServiceImpl();
	private HistoryService historyService = new HistoryServiceImpl();
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		HttpSession session = request.getSession();
		String path = request.getServletPath();
		switch (path) {
			case "/index":
				doGetIndex(request, response);
				break;
			case "/favorites":
				doGetFavorites(session,request, response);
				break;
			case "/history":
				doGetHistory(session,request, response);
				break;
		}
		
	}
	protected void doGetIndex(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
	
		List<Video> videos = videoService.findAll();
//		int maxPage = (int)Math.ceil(countVideo.size() /(double) VIDEO_MAX_PAGE_SIZE);
//		request.setAttribute("maxPage", maxPage);
//	
//		List<Video> videos;
//		String pageNumber = request.getParameter("page");
//		if (pageNumber == null) {
//			 videos = videoService.findAll(1, VIDEO_MAX_PAGE_SIZE);	
//			 request.setAttribute("currentPage", 1);
//		}else {
//			videos = videoService.findAll(Integer.valueOf(pageNumber),VIDEO_MAX_PAGE_SIZE);
//			request.setAttribute("currentPage", pageNumber);
//		}
//		
		
		request.setAttribute("videos", videos);
		RequestDispatcher requestDispatcher = request.getRequestDispatcher("/views/user/index.jsp");
		requestDispatcher.forward(request, response);
	}
	protected void doGetFavorites(HttpSession session,HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		User user = (User) session.getAttribute(SessionAttr.CURRENT_USER);
		List<History> histories = historyService.findByUserAndIsLiked(user.getUsername());
		List<Video> videos = new ArrayList<>();
		histories.forEach(item -> videos.add(item.getVideo()));
		/*
		 for (int i = 0; i< histories.size(); i++){
		 	videos.add(histories.get(i).geetVideo())
		 }
		 * */
		
		request.setAttribute("videos", videos);
		RequestDispatcher requestDispatcher = request.getRequestDispatcher("/views/user/movie-favourite.jsp");
		requestDispatcher.forward(request, response);
	}
	
	protected void doGetHistory(HttpSession session,HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		User user = (User) session.getAttribute(SessionAttr.CURRENT_USER);
		List<History> histories = historyService.findByUser(user.getUsername());
		List<Video> videos = new ArrayList<>();
		histories.forEach(item -> videos.add(item.getVideo()));

		request.setAttribute("videos", videos);
		RequestDispatcher requestDispatcher = request.getRequestDispatcher("/views/user/movie-history.jsp");
		requestDispatcher.forward(request, response);
	}
}
