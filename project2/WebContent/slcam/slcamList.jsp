<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import ="java.util.*" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	//MemberDAO dao = new MemberDAO();
	//	ArrayList<MemberVO> list = dao.memberAllList();
	//ArrayList<MemberVO> list = (ArrayList<MemberVO>)request.getAttribute("list");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style type="text/css">
.tg  {border-collapse:collapse;border-spacing:0;}
.tg td{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  overflow:hidden;padding:10px 5px;word-break:normal;}
.tg th{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  font-weight:normal;overflow:hidden;padding:10px 5px;word-break:normal;}
.tg .tg-0lax{text-align:left;vertical-align:top}
</style>
<script>
function slcamDel(num){
	// ������������ ��û(memberDelete.jsp)
	location.href ="SlCamDelete.do?SLCAM_n="+num;
}
</script>
</head>
<body>
ī�޶� ����Ʈ(MVC: model2��� - JSTL+EL -  FrontController)
<table class="tg" style="undefined;table-layout: fixed; width: 534px">
<colgroup>
<col style="width: 50px">
<col style="width: 67px">
<col style="width: 159px">
<col style="width: 76px">
<col style="width: 101px">
<col style="width: 60px">
</colgroup>
<thead>
  <tr>
    <th class="tg-0lax">��ȣ</th>
    <th class="tg-0lax">��Ī</th>
    <th class="tg-0lax">��ġ</th>
    <th class="tg-0lax">����</th>
    <th class="tg-0lax">����</th>
  </tr>
</thead>
<tbody>
  <c:forEach var= "vo" items= "${list}">	
  <tr>
    <td class="tg-0lax">${vo.slcam_n}</td>
    <td class="tg-0lax"><a href="/project2/SlCamContent.do?SLCAM_n=${vo.slcam_n}">${vo.slcam_name}</a></td>
    <td class="tg-0lax">${vo.slcam_location}</td>
    <td class="tg-0lax">${vo.slcam_status}</td>
    <td class="tg-0lax"><input type="button" value="����" onclick="slcamDel(${vo.slcam_n})"/></td>
  </tr>
  	</c:forEach> <% // } %>
  	<tr>
    <td class="tg-0lax" colspan="5">
    <input type="button" value="�߰�" onclick="location.href='slcam/slcam.html'"/>
   
  	</td>
  </tr>
</tbody>
</table>
</body>
</html>