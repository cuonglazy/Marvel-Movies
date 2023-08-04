package edu.poly.service.impl;

import java.sql.Timestamp;
import java.util.List;


import edu.poly.dao.HistoryDao;
import edu.poly.dao.impl.HistoryDaoImpl;
import edu.poly.entity.History;
import edu.poly.entity.User;
import edu.poly.entity.Video;
import edu.poly.service.HistoryService;
//import edu.poly.service.UserService;
import edu.poly.service.VideoService;

public class HistoryServiceImpl implements HistoryService {

	private HistoryDao dao;
	private VideoService videoService = new VideoServiceImpl();
//	private UserService userService = new UserServiceImpl();
	public HistoryServiceImpl() {
		dao = new HistoryDaoImpl();
	}
	@Override
	public List<History> findByUser(String username) {
		return dao.findByUser(username);
	}

	@Override
	public List<History> findByUserAndIsLiked(String username) {
		// TODO Auto-generated method stub
		return dao.findByUserAndIsLiked(username);
	}

	@Override
	public History findByUserIdAndVideoId(Integer userId, Integer videoId) {
		return dao.findByUserIdAndVideoId(userId, videoId);
			
	}

	@Override
	public History create(User user, Video video) {
	    History existHistory = findByUserIdAndVideoId(user.getId(), video.getId());
	    if (existHistory == null) {
	        existHistory = new History();
	        existHistory.setUser(user);
	        existHistory.setVideo(video);
	        existHistory.setViewedDate(new Timestamp(System.currentTimeMillis()));
	        existHistory.setIsLiked(Boolean.FALSE);
	        existHistory = dao.create(existHistory);
	    }
	    return existHistory;
	}

	@Override
	public boolean updateLikeOrUnlike(User user, String videoHref) {
		// TODO Auto-generated method stub
		Video video = videoService.findByHref(videoHref);
		History existHistory = findByUserIdAndVideoId(user.getId(), video.getId());
		
		if (existHistory.getIsLiked() == Boolean.FALSE) {
			existHistory.setIsLiked(Boolean.TRUE);
			existHistory.setLikedDate(new Timestamp(System.currentTimeMillis()));
		} else {
			existHistory.setIsLiked(Boolean.FALSE);
			existHistory.setLikedDate(null);
		}
		History updateHistory = dao.update(existHistory);
		return updateHistory != null ? true : false;
	}

}