package edu.poly.service.impl;

import java.util.List;

import edu.poly.dao.StatsDao;
import edu.poly.dao.impl.StatsDaoImpl;
import edu.poly.dto.VideoLikedInfo;
import edu.poly.service.StatsService;

public class StatsServiceImpl implements StatsService{
	
	private StatsDao statsDao;
	
	public StatsServiceImpl() {
		statsDao = new StatsDaoImpl();
	}
	@Override
	public List<VideoLikedInfo> findVideoLikedInfo() {
		
		return statsDao.findVideoLikedInfo();
	}

}
