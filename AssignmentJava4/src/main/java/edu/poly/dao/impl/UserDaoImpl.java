package edu.poly.dao.impl;

import java.util.List;
import java.util.Map;

import edu.poly.constant.NamedStored;
import edu.poly.dao.AbstractDAO;
import edu.poly.dao.UserDao;
import edu.poly.entity.User;

public class UserDaoImpl extends AbstractDAO<User> implements UserDao {

	@Override
	public User findById(Integer id) {
		
		return super.findById(User.class, id);
	}

	@Override
	public User findByEmail(String email) {
		String sql = "SELECT o FROM User o WHERE o.email = ?0";
		return super.findOne(User.class, sql, email);
	}

	@Override
	public User findByUsername(String username) {
		String sql = "SELECT o FROM User o WHERE o.username = ?0";
		return super.findOne(User.class, sql, username);
	}

	@Override
	public User findByUsernameAndPassword(String username, String password) {
		String sql = "SELECT o FROM User o WHERE o.username = ?0 AND o.password = ?1";
		return super.findOne(User.class, sql, username, password);
	}

	@Override
	public List<User> findAll() {
		return super.findAll(User.class, true);
	}
	
//	@Override
//	public List<User> findAll(int pageNumber, int pageSize) {
//		return super.findAll(User.class, false, pageNumber, pageSize);
//	}


	@Override
	public User create(User entity) {
		return super.create(entity);
	}

	@Override
	public User update(User entity) {
		// TODO Auto-generated method stub
		return super.update(entity);
	}

	@Override
	public User delete(User entity) {
		// TODO Auto-generated method stub
		return super.delete(entity);
	}

	@Override
	public List<User> findUsersLikedVideoByVideoHref(Map<String, Object> params) {
		
		return super.callStored(NamedStored.FIND_USERS_LIKED_VIDEO_BY_VIDEO_HREF, params);
	}

	
}
