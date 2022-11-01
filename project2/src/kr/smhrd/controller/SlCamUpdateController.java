package kr.smhrd.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.smhrd.model.AllDAO;
import kr.smhrd.model.SlCamVO;

public class SlCamUpdateController implements Controller {
	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int num = Integer.parseInt(request.getParameter("slcam_n"));
		String slcam_name = request.getParameter("slcam_name");
		String slcam_location = request.getParameter("slcam_location");
		String slcam_status = request.getParameter("slcam_status");

		
		SlCamVO vo = new SlCamVO();
		vo.setSlcam_n(num);
		vo.setSlcam_name(slcam_name);
		vo.setSlcam_location(slcam_location);
		vo.setSlcam_status(slcam_status);
		
		
		AllDAO dao = new AllDAO();
		int cnt = dao.SlCamUpdate(vo);
		String nextpage = null;
		if (cnt > 0) {
			nextpage = "AllList.do#layerID3";
		} else {
			throw new ServletException("error");
		}

		return nextpage;
	}

}
