package edu.poly.service;

import javax.servlet.ServletContext;

import edu.poly.entity.User;

public interface EmailService {
	void sendEmail(ServletContext context, User recipient, String type);
}
