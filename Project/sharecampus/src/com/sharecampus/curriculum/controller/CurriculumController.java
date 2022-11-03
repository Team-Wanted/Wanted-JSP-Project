package com.sharecampus.curriculum.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sharecampus.curriculum.command.Command;
import com.sharecampus.curriculum.command.ListCommand;
import com.sharecampus.curriculum.command.ViewCommand;
import com.sharecampus.curriculum.command.WriteCommand;

/**
 * Servlet implementation class GetList
 */
@WebServlet("*.do")
public class CurriculumController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public CurriculumController() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		actionDo(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		actionDo(request, response); 
	}
	
	protected void actionDo(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		Command command = null;	// 어떠한 로직을 수행할지
		String viewPage = null;	// 어떠한 페이지를 보여줄지
		
		// URL로부터 command 분리
		String uri = request.getRequestURI();
		String conPath = request.getContextPath();
		String com = uri.substring(conPath.length());
		System.out.println(com);
		switch(com) {
		case "/curriculum/curriculum.do":
			command = new ListCommand();
			command.execute(request, response);
			viewPage = "curriculum.jsp";
			break;
		case "/curriculum/view.do":
			command = new ViewCommand();
			command.execute(request, response);
			viewPage = "curriculum_detail.jsp";
			break;
		case "/curriculum/curriculum_regist.do":
			viewPage = "curriculum_regist.jsp";
			break;
		case "/curriculum/writeOk.do":
			command = new WriteCommand();
			command.execute(request, response);
			break;
		case "/curriculum/update.do":
			// TODO
			break;
		case "/curriculum/updateOk.do":
			// TODO
			break;
		case "/curriculum/deleteOk.do":
			// TODO
			break;
		}
		
		// view page로 forward
		if (viewPage != null) {
			RequestDispatcher dispatcher = 
					request.getRequestDispatcher("/curriculum/" + viewPage);
			dispatcher.forward(request, response);
		}
	}

}
