package kr.smhrd.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.smhrd.model.AllDAO;
import kr.smhrd.model.SlBoardVO;

public class SlBoardUpdateController implements Controller {
	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int num = Integer.parseInt(request.getParameter("slboard_n"));
		String sllamp_name = request.getParameter("sllamp_name");
		String sllamp_location = request.getParameter("sllamp_location");
		String slboard_status = request.getParameter("slboard_status");
		String slboard_decibel = request.getParameter("slboard_decibel");
		String slboard_rec = request.getParameter("slboard_rec");
		String slboard_date = request.getParameter("slboard_date");
	
		
		
		SlBoardVO vo = new SlBoardVO();
		vo.setSlboard_n(num);
		vo.setSllamp_name(sllamp_name);
		vo.setSllamp_location(sllamp_location);
		vo.setSlboard_status(slboard_status);
		vo.setSlboard_decibel(slboard_decibel);
		vo.setSlboard_rec(slboard_rec);
		vo.setSlboard_date(slboard_date);

		AllDAO dao = new AllDAO();
		int cnt = dao.SlBoardUpdate(vo);
		String nextpage = null;
		if (cnt > 0) {
			nextpage = "AllList.do#layerID2";
		} else {
			throw new ServletException("error");
		}

		return nextpage;
	}

}
