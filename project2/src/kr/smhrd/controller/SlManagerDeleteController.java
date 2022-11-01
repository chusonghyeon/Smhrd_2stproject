package kr.smhrd.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.smhrd.model.AllDAO;


public class SlManagerDeleteController implements Controller{
	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int num = Integer.parseInt(request.getParameter("slmanager_n"));
		AllDAO dao = new AllDAO();
		int cnt = dao.SlManagerDelete(num);
		String nextpage = null;
		if(cnt>0) {
			nextpage="AllList.do#listManager";
		}else {
			throw new ServletException("error");
		}
		return nextpage;
	}
}
