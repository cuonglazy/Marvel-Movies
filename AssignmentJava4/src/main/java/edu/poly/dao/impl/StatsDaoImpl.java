package edu.poly.dao.impl;

import java.util.ArrayList;
import java.util.List;

import edu.poly.dao.AbstractDAO;
import edu.poly.dao.StatsDao;
import edu.poly.dto.VideoLikedInfo;

public class StatsDaoImpl extends AbstractDAO<Object[]> implements StatsDao {

	@Override
	public List<VideoLikedInfo> findVideoLikedInfo() {
//		String sql = "SELECT v.id, v.title, v.href, SUM(CAST(h.isLiked as int)) as totalLike"
//				+ " FROM video v LEFT JOIN history h ON v.id = h.videoId"
//				+ " WHERE v.isActive = 1"
//				+ " GROUP BY v.id, v.title, v.href"
//				+ " ORDER BY SUM(CAST(h.isLiked as int)) DESC";
//		List<Object[]> objects = super.findManyByNativeQuery(sql);
//		// map 
//		List<VideoLikedInfo> result = new ArrayList<>();
//		// duyệt objects
//		objects.forEach(object ->{
//			VideoLikedInfo videoLikedInfo = setDataVideoLikedInfo(object);
//			
//			result.add(videoLikedInfo);
//		});
//		
//		return result;
//	}
//	// tách phần duyệt objects
//	private VideoLikedInfo setDataVideoLikedInfo(Object[] object) {
//		VideoLikedInfo videoLikedInfo = new VideoLikedInfo();
//		videoLikedInfo.setVideoId((Integer)object[0]);
//		videoLikedInfo.setTitle((String)object[1]);
//		videoLikedInfo.setHref((String)object[2]);
//		videoLikedInfo.setTotalLike(object[3] == null ? 0 : (Integer) object[3]);
//		return videoLikedInfo;
//	}	
	String sql = "select v.id, v.title, v.href, sum(cast(h.isLiked as int )) as totalLike"
			+ " from video v left join history h on v.id = h.videoId"
			+ " where v.isActive = 1"
			+ " group by v.id, v.title, v.href"
			+ " order by sum(cast(h.isLiked as int )) desc";
	List<Object[]> objects = super.findManyByNativeQuery(sql);
	List<VideoLikedInfo> result = new ArrayList<>();
	objects.forEach(object -> {
		VideoLikedInfo videoLikedInfo = setDataVideoLikedInfo(object);
		result.add(videoLikedInfo);
	});
	return result;
}
private VideoLikedInfo setDataVideoLikedInfo(Object[] object) {
	VideoLikedInfo videoLikedInfo = new VideoLikedInfo();
	videoLikedInfo.setVideoId((Integer) object[0]);
	videoLikedInfo.setTitle((String) object[1]);
	videoLikedInfo.setHref((String) object[2]);
	videoLikedInfo.setTotalLike(object[3] == null ? 0 : (Integer) object[3]);
	return videoLikedInfo;
}
}

