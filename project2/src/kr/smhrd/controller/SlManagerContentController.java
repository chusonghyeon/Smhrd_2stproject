package kr.smhrd.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.smhrd.model.AllDAO;
import kr.smhrd.model.SlManagerVO;
import kr.smhrd.model.SlLampVO;


public class SlManagerContentController implements Controller{
	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int num = Integer.parseInt(request.getParameter("slmanager_n"));
		AllDAO dao = new AllDAO();
		SlManagerVO vo = dao.SlManagerContent(num);
		request.setAttribute("vo", vo); 
		
		return "slmanager/slmanagerContent.jsp";
	}

}
