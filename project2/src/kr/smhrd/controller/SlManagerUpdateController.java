package kr.smhrd.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.smhrd.model.AllDAO;
import kr.smhrd.model.SlManagerVO;

public class SlManagerUpdateController implements Controller {
	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int num = Integer.parseInt(request.getParameter("slmanager_n"));
		String slmanager_position = request.getParameter("slmanager_position");
		String slmanager_tel = request.getParameter("slmanager_tel");
		String slmanager_mail = request.getParameter("slmanager_mail");

		SlManagerVO vo = new SlManagerVO();
		vo.setSlmanager_n(num);
		vo.setSlmanager_position(slmanager_position);
		vo.setSlmanager_tel(slmanager_tel);
		vo.setSlmanager_mail(slmanager_mail);

		AllDAO dao = new AllDAO();
		int cnt = dao.SlManagerUpdate(vo);
		String nextpage = null;
		if (cnt > 0) {
			nextpage = "/project2/AllList.do#listManager";
		} else {
			throw new ServletException("error");
		}

		return nextpage;
	}

}
