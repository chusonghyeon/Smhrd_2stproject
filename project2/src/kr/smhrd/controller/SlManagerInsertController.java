package kr.smhrd.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.smhrd.model.AllDAO;
import kr.smhrd.model.SlManagerVO;


public class SlManagerInsertController  implements Controller{
	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		//파라메터수집(VO)
		String slmanager_id = request.getParameter("slmanager_id");
		String slmanager_pw = request.getParameter("slmanager_pw");
		String slmanager_position = request.getParameter("slmanager_position");
		String slmanager_name = request.getParameter("slmanager_name");
		String slmanager_tel = request.getParameter("slmanager_tel");
		String slmanager_mail = request.getParameter("slmanager_mail");
	
		SlManagerVO vo = new SlManagerVO(slmanager_id, slmanager_pw, slmanager_position, slmanager_name, slmanager_tel, slmanager_mail);
		AllDAO dao = new AllDAO();
		int cnt = dao.SlManagerInsert(vo);
		String nextpage = null;
		if(cnt>0) {
			nextpage ="/project2/AllList.do#listManager";
		}else {
			throw new ServletException("error");
		}
		return nextpage;
	}	
}



