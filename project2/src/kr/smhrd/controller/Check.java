package kr.smhrd.controller;
import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.smhrd.model.AllDAO;
import kr.smhrd.model.SlLampVO;

/**
 * Servlet implementation class Jason
 */
@WebServlet("/Check")
public class Check extends HttpServlet {
   protected void doGet(HttpServletRequest request, HttpServletResponse response)
         throws ServletException, IOException {

      AllDAO dao = new AllDAO();
      ArrayList<SlLampVO> list = dao.lampStatus();

      String arduino = "/{";

      for (int i = 0; i < list.size(); i++) {
         SlLampVO vo = list.get(i);
         arduino += "\""+vo.getSllamp_name() + "\":" + vo.getSllamp_status();

         if (i != list.size() - 1) {
            arduino += ",";
         }

      } 
      arduino += "}/";
System.out.println(arduino);
      response.getWriter().print(arduino);

   }

   protected void doPost(HttpServletRequest request, HttpServletResponse response)
         throws ServletException, IOException {
      doGet(request, response);
   }

}