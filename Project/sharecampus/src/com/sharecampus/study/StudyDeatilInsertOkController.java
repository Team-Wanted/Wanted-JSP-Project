package com.sharecampus.study;

import java.io.IOException;
import java.rmi.ServerException;
import java.util.Enumeration;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sharecampus.Execute;
import com.sharecampus.Result;
import com.sharecampus.study.dao.StudyDAO;
import com.sharecampus.study.vo.StudyVO;

public class StudyDeatilInsertOkController implements Execute {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServerException {
		req.setCharacterEncoding("UTF-8");
		System.out.println("오류발생1");
		
		Result result = new Result();
		StudyDAO studyDAO = new StudyDAO();
		StudyVO studyVO = new StudyVO();
		
		 int studyNum = 0; 
//		 int memberNum = 0; 
//		 boolean studyIng = true;
//		
		
//		int memberNum = (Integer)req.getSession().getAttribute("memberNum");
//		studyVO.setMemberNum(memberNum);
		try {
			studyVO.setStudyNum(Integer.valueOf(req.getParameter("studyNum")));
			studyVO.setMemberNum(Integer.valueOf(req.getParameter("memberNum")));
			studyVO.setStudyPeople(Integer.valueOf(req.getParameter("studyPeople")));
		} catch (NumberFormatException e) {
			System.out.println("오류발생2");
			e.printStackTrace();
		}
		
		
		studyVO.setStudyTitle(req.getParameter("studyTitle"));
		studyVO.setStudyIntro(req.getParameter("studyIntro"));
		studyVO.setStudyArea(req.getParameter("studyArea"));
		studyVO.setStudyRegistDate(req.getParameter("studyRegistDate"));
//		try {
//			studyVO.setStudyIng(Boolean.parseBoolean(req.getParameter("studyIng")));
//		} catch (Exception e) {
//			System.out.println("boolean오류!!");
//			e.printStackTrace();
//		}
		studyVO.setStudyDepart(req.getParameter("studyDepart"));
		studyVO.setStudyContact(req.getParameter("studyContact"));
		
		
		studyDAO.insert(studyVO);
		
		studyNum = studyDAO.getSequence();
		System.out.println("추가됨");
//		studyNum = StudyDAO.getSequence();
		
//		Enumeration<String> fileNames = multipartRequest.getFileNames();
		
//		while(fileNames.hasMoreElements()) {
//			String fileName = fileNames.nextElement();
//			String fileOriginalName = multipartRequest.getOriginalFileName(fileName);
//			String fileSystemName = multipartRequest.getFilesystemName(fileName);
//			
//			if(fileOriginalName == null) {continue;}
//			
//			FileVO fileVO = new FileVO();
//			fileVO.setFileOriginalName(fileOriginalName);
//			fileVO.setFileSystemName(fileSystemName);
//			fileVO.setBoardNumber(boardNumber);
//			
//			fileDAO.insert(fileVO);
//		}
//		result.setPath("/study/studyDetailInsertOk.su");
		
		result.setPath("/study/list.su");
		return result;
	}

}
