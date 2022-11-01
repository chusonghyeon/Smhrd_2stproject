package kr.smhrd.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.smhrd.model.AllDAO;
import kr.smhrd.model.SlCamVO;


public class SlCamContentController implements Controller{
	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int num = Integer.parseInt(request.getParameter("SLCAM_n"));
		AllDAO dao = new AllDAO();
		SlCamVO vo = dao.SlCamContent(num);
		request.setAttribute("vo", vo); 
		
		return "slcam/slcamContent.jsp";
	}
	
}
