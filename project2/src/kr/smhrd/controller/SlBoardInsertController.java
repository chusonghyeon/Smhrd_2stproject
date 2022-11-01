package kr.smhrd.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.smhrd.model.AllDAO;
import kr.smhrd.model.SlBoardVO;
import kr.smhrd.model.SlCamVO;

public class SlBoardInsertController implements Controller {
   @Override
   public String requestHandler(HttpServletRequest request, HttpServletResponse response)
         throws ServletException, IOException {
      // �Ķ���ͼ���(VO)
      String sllamp_name = request.getParameter("sllamp_name");
      String slboard_decibel = request.getParameter("slboard_decibel");

      String sllamp_location = null;

      switch (sllamp_name.charAt(0)) {
      case 'A':
         sllamp_location = "A����";
         break;
      case 'B':
         sllamp_location = "B����";
         break;
      case 'C':
         sllamp_location = "C����";
         break;
      default:
         sllamp_location = "�����ȵ�";
         break;
      }

      String decibeldata = "";
      decibeldata += slboard_decibel.charAt(0);
      decibeldata += slboard_decibel.charAt(1);
      decibeldata += slboard_decibel.charAt(2);
      decibeldata += slboard_decibel.charAt(3);
      decibeldata += slboard_decibel.charAt(4);
      System.out.println(decibeldata);
      String slboard_status = "����";
      if (Float.parseFloat(decibeldata) >= 100) {
         slboard_status = "���";
      }

      SlBoardVO vo = new SlBoardVO(sllamp_name, sllamp_location, slboard_status, decibeldata);
      AllDAO dao = new AllDAO();
      int cnt = dao.SlBoardInsert(vo);
      String nextpage = null;
      if (cnt > 0) {
    	  nextpage ="/project2/AllList.do#layerID2";
      } else {
         throw new ServletException("error");
      }
      return nextpage;
   }
}

