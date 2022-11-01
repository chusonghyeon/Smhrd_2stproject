/*package kr.smhrd.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.smhrd.model.AllDAO;
import kr.smhrd.model.SlBoardVO;
import kr.smhrd.model.SlCamVO;
import kr.smhrd.model.SlLampVO;
import kr.smhrd.model.SlManagerVO;

// POJO
public class AllListController implements Controller{
	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		AllDAO dao = new AllDAO();
		
		ArrayList<SlManagerVO>listManager = dao.SlManagerAllList();
		request.setAttribute("listManager", listManager);
		ArrayList<SlBoardVO>listBoard = dao.SlBoardAllList();
		request.setAttribute("listBoard", listBoard);
		ArrayList<SlLampVO>listLamp = dao.SlLampAllList();
		request.setAttribute("listLamp", listLamp);
		ArrayList<SlCamVO>listCam = dao.SlCamAllList();
		request.setAttribute("listCam", listCam);
		return "index.jsp"; //next page
	}
	

}*/



package kr.smhrd.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.smhrd.model.AllDAO;
import kr.smhrd.model.SlBoardVO;
import kr.smhrd.model.SlCamVO;
import kr.smhrd.model.SlLampVO;
import kr.smhrd.model.SlManagerVO;

// POJO
public class AllListController implements Controller{
   @Override
   public String requestHandler(HttpServletRequest request, HttpServletResponse response)
         throws ServletException, IOException {
      AllDAO dao = new AllDAO();
      
      
     // 총관리자 리스트  (admin)

     HttpSession session=request.getSession();
     String id = (String)session.getAttribute("slmanager_id");

      String slmanager_id = id;
 
   
      SlManagerVO vo1 = new SlManagerVO(slmanager_id);
   
                        
     ArrayList<SlBoardVO>listBoard = dao.SlBoardSectionList(vo1);
     request.setAttribute("listBoard", listBoard);
     
     ArrayList<SlLampVO>listLamp = dao.SlLampSectionList(vo1);
     request.setAttribute("listLamp", listLamp); 
     
     ArrayList<SlCamVO>listCam = dao.SlCamSectionList(vo1);
     request.setAttribute("listCam", listCam); 
      
      
      ArrayList<SlManagerVO>listManager = dao.SlManagerAllList();
     request.setAttribute("listManager", listManager);
      
  
      
      return "index_spmgr.jsp"; //next page
   }
   

}