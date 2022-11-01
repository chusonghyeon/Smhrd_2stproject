package kr.smhrd.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.smhrd.model.AllDAO;
import kr.smhrd.model.SlBoardVO;


public class SlBoardContentController implements Controller{
	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int num = Integer.parseInt(request.getParameter("SLBOARD_n"));
		AllDAO dao = new AllDAO();
		SlBoardVO vo = dao.SlBoardContent(num);
		request.setAttribute("vo", vo); 
		
		return "slboard/slboardContent.jsp";
	}
	
}
