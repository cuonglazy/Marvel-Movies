package edu.poly.service;

import java.util.List;

import edu.poly.dto.VideoLikedInfo;

public interface StatsService {
	List<VideoLikedInfo> findVideoLikedInfo();
}
