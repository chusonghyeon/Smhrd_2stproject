package kr.smhrd.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.smhrd.model.AllDAO;
import kr.smhrd.model.SlLampVO;

public class SlLampUpdateController implements Controller {
	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int num = Integer.parseInt(request.getParameter("sllamp_n"));
		String sllamp_name = request.getParameter("sllamp_name");
		String sllamp_location = request.getParameter("sllamp_location");
		String sllamp_status = request.getParameter("sllamp_status");
		String sllamp_battery = request.getParameter("sllamp_battery");
		String sllamp_broken = request.getParameter("sllamp_broken");

		
		SlLampVO vo = new SlLampVO();
		vo.setSllamp_n(num);
		vo.setSllamp_name(sllamp_name);
		vo.setSllamp_location(sllamp_location);
		vo.setSllamp_status(sllamp_status);
		vo.setSllamp_battery(sllamp_battery);
		vo.setSllamp_broken(sllamp_broken);
		
		
		AllDAO dao = new AllDAO();
		int cnt = dao.SlLampUpdate(vo);
		String nextpage = null;
		if (cnt > 0) {
			nextpage = "AllList.do#layerID1";
		} else {
			throw new ServletException("error");
		}

		return nextpage;
	}

}
