package com.sharecampus.community;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sharecampus.Result;

public class CommunityFrontController extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doProcess(req, resp);
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doProcess(req, resp);
	}
	protected void doProcess(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String target = req.getRequestURI().substring(req.getContextPath().length());
		Result result = null;
		
		if(target.equals("/community/listDs.co")) {
			result = new CommunityListController().execute(req, resp);
		}else if(target.equals("/community/listDi.co")) {
			result = new CommunityAddController().execute(req, resp);
		}else if(target.equals("/community/listDd.co")) {
			result = new CommunityDeleteController().execute(req, resp);
		}else if(target.equals("/community/listDu.co")) {
			result = new CommunityUpdateController().execute(req, resp);
		}else if(target.equals("/community/listDuOK.co")) {
		result = new CommunityUpdateOKController().execute(req, resp);
		}
		
		if(result != null) {
			if(result.isRedirect()) {
				resp.sendRedirect(result.getPath());
				
			}else {
				req.getRequestDispatcher(result.getPath()).forward(req, resp);
			}
			
		}
		
	}
}
