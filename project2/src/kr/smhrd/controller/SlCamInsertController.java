package kr.smhrd.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.smhrd.model.AllDAO;
import kr.smhrd.model.SlCamVO;


public class SlCamInsertController  implements Controller{
	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		//파라메터수집(VO)
		String slcam_name = request.getParameter("slcam_name");
		String slcam_location = request.getParameter("slcam_location");
		String slcam_status = request.getParameter("slcam_status");
	
		SlCamVO vo = new SlCamVO(slcam_name, slcam_location, slcam_status);
		AllDAO dao = new AllDAO();
		int cnt = dao.SlCamInsert(vo);
		String nextpage = null;
		if(cnt>0) {
			nextpage ="AllList.do#layerID3";
		}else {
			throw new ServletException("error");
		}
		return nextpage;
	}	
}



