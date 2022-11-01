package kr.smhrd.frontcontroller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//import kr.smhrd.controller.AllListController;
import kr.smhrd.controller.AllListController;
import kr.smhrd.controller.SectionListController;
import kr.smhrd.controller.Controller;
import kr.smhrd.controller.SlBoardContentController;
import kr.smhrd.controller.SlBoardDeleteController;
import kr.smhrd.controller.SlBoardInsertController;
import kr.smhrd.controller.SlBoardListController;
//import kr.smhrd.controller.SlBoardListController;
import kr.smhrd.controller.SlBoardUpdateController;
import kr.smhrd.controller.SlCamContentController;
import kr.smhrd.controller.SlCamDeleteController;
import kr.smhrd.controller.SlCamInsertController;
//import kr.smhrd.controller.SlCamListController;
import kr.smhrd.controller.SlCamUpdateController;
import kr.smhrd.controller.SlManagerContentController;
import kr.smhrd.controller.SlManagerDeleteController;
import kr.smhrd.controller.SlManagerInsertController;
import kr.smhrd.controller.SlManagerListController;
import kr.smhrd.controller.SlManagerUpdateController;
import kr.smhrd.controller.SlLampContentController;
import kr.smhrd.controller.SlLampDeleteController;
import kr.smhrd.controller.SlLampInsertController;
//import kr.smhrd.controller.SlLampListController;
import kr.smhrd.controller.SlLampUpdateController;
import kr.smhrd.model.AllDAO;
import kr.smhrd.model.SlManagerVO;

@WebServlet("*.do")
public class AllController extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("euc-kr"); 
		String reqpath = request.getRequestURI();
		String contextpath = request.getContextPath();
		String command = reqpath.substring(contextpath.length());
		System.out.println(command);

		AllDAO dao = new AllDAO(); 
		Controller controller = null;
		String nextpage = null;
		
			if (command.equals("/AllList.do")) {
			controller = new AllListController();
			nextpage = controller.requestHandler(request, response);
			RequestDispatcher rd = request.getRequestDispatcher(nextpage);
			rd.forward(request, response);
			
		}	else if (command.equals("/SectionList.do")) {
			controller = new SectionListController();
			nextpage = controller.requestHandler(request, response);
			RequestDispatcher rd = request.getRequestDispatcher(nextpage);
			rd.forward(request, response);
			
		}	else if (command.equals("/SlManagerList.do")) {
			controller = new SlManagerListController();
			nextpage = controller.requestHandler(request, response);
			RequestDispatcher rd = request.getRequestDispatcher(nextpage);
			rd.forward(request, response);

		} else if (command.equals("/SlManagerInsert.do")) {
			controller = new SlManagerInsertController();
			nextpage = controller.requestHandler(request, response);
			response.sendRedirect(nextpage);

		} else if (command.equals("/SlManagerDelete.do")) {
			controller = new SlManagerDeleteController();
			nextpage = controller.requestHandler(request, response);
			response.sendRedirect(nextpage);

		} else if (command.equals("/SlManagerContent.do")) {
			controller = new SlManagerContentController();
			nextpage = controller.requestHandler(request, response);
			RequestDispatcher rd = request.getRequestDispatcher(nextpage);
			rd.forward(request, response); 
		
		} else if (command.equals("/SlManagerUpdate.do")) {
			controller = new SlManagerUpdateController();
			nextpage = controller.requestHandler(request, response);
			response.sendRedirect(nextpage);
			
		} else if (command.equals("/SlLampInsert.do")) {
			controller = new SlLampInsertController();
			nextpage = controller.requestHandler(request, response);
			response.sendRedirect(nextpage);

		} else if (command.equals("/SlLampDelete.do")) {
			controller = new SlLampDeleteController();
			nextpage = controller.requestHandler(request, response);
			response.sendRedirect(nextpage);

		} else if (command.equals("/SlLampContent.do")) {
			controller = new SlLampContentController();
			nextpage = controller.requestHandler(request, response);
			RequestDispatcher rd = request.getRequestDispatcher(nextpage);
			rd.forward(request, response); 

		} else if (command.equals("/SlLampUpdate.do")) {
			controller = new SlLampUpdateController();
			nextpage = controller.requestHandler(request, response);
			response.sendRedirect(nextpage);
			
		} else if (command.equals("/SlCamInsert.do")) {
			controller = new SlCamInsertController();
			nextpage = controller.requestHandler(request, response);
			response.sendRedirect(nextpage);

		} else if (command.equals("/SlCamDelete.do")) {
			controller = new SlCamDeleteController();
			nextpage = controller.requestHandler(request, response);
			response.sendRedirect(nextpage);

		} else if (command.equals("/SlCamContent.do")) {
			controller = new SlCamContentController();
			nextpage = controller.requestHandler(request, response);
			RequestDispatcher rd = request.getRequestDispatcher(nextpage);
			rd.forward(request, response); 

		} else if (command.equals("/SlCamUpdate.do")) {
			controller = new SlCamUpdateController();
			nextpage = controller.requestHandler(request, response);
			response.sendRedirect(nextpage);
			
		}  	else if (command.equals("/SlBoardList.do")) {
			controller = new SlBoardListController();
			nextpage = controller.requestHandler(request, response);
			RequestDispatcher rd = request.getRequestDispatcher(nextpage);
			rd.forward(request, response);
			
		} else if (command.equals("/SlBoardInsert.do")) {
			controller = new SlBoardInsertController();
			nextpage = controller.requestHandler(request, response);
			response.sendRedirect(nextpage);

		} else if (command.equals("/SlBoardDelete.do")) {
			controller = new SlBoardDeleteController();
			nextpage = controller.requestHandler(request, response);
			response.sendRedirect(nextpage);

		} else if (command.equals("/SlBoardContent.do")) {
			controller = new SlBoardContentController();
			nextpage = controller.requestHandler(request, response);
			RequestDispatcher rd = request.getRequestDispatcher(nextpage);
			rd.forward(request, response); 

		} else if (command.equals("/SlBoardUpdate.do")) {
			controller = new SlBoardUpdateController();
			nextpage = controller.requestHandler(request, response);
			response.sendRedirect(nextpage);
		}
		
	}
}
