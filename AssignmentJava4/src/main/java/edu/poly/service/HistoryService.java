package edu.poly.service;

import java.util.List;

import edu.poly.entity.History;
import edu.poly.entity.User;
import edu.poly.entity.Video;

public interface HistoryService {
	List<History> findByUser(String username);
	List<History> findByUserAndIsLiked(String username);
	History findByUserIdAndVideoId(Integer userId, Integer videoId);
	History create(User user, Video video);
	boolean updateLikeOrUnlike(User user, String videoHref);
}
