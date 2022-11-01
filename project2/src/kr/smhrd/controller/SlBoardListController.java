package kr.smhrd.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.smhrd.model.AllDAO;
import kr.smhrd.model.SlBoardVO;

public class SlBoardListController implements Controller{
	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		AllDAO dao = new AllDAO();
		ArrayList<SlBoardVO>list = dao.SlBoardAllList();
		request.setAttribute("list", list);
		return "slboard/slboardList.jsp"; 
	}
	

}
