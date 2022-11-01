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
import kr.smhrd.model.SlLampVO;


public class SlLampInsertController  implements Controller{
	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		//파라메터수집(VO)
		String sllamp_name = request.getParameter("sllamp_name");
		String sllamp_location = request.getParameter("sllamp_location");
		String sllamp_status = request.getParameter("sllamp_status");
		String sllamp_battery = request.getParameter("sllamp_battery");
		String sllamp_broken = request.getParameter("sllamp_broken");
	
		SlLampVO vo = new SlLampVO(sllamp_name, sllamp_location, sllamp_status, sllamp_battery, sllamp_broken);
		AllDAO dao = new AllDAO();
		int cnt = dao.SlLampInsert(vo);
		String nextpage = null;
		if(cnt>0) {
			nextpage ="/project2/AllList.do#layerID1";
		}else {
			throw new ServletException("error");
		}
		return nextpage;
	}	
}



