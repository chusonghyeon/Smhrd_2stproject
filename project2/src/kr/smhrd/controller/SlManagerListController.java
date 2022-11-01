package kr.smhrd.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.smhrd.model.AllDAO;
import kr.smhrd.model.SlManagerVO;

// POJO
public class SlManagerListController implements Controller{
	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		AllDAO dao = new AllDAO();
		ArrayList<SlManagerVO>list = dao.SlManagerAllList();
		request.setAttribute("list", list);
		return "slmanager/slmanagerList.jsp"; //next page
	}
	

}
