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
function slboardDel(num){
	// ������������ ��û(memberDelete.jsp)
	location.href ="SlBoardDelete.do?SLBOARD_n="+num;
}
</script>
</head>
<body>
���ε� ����Ʈ(MVC: model2��� - JSTL+EL -  FrontController)
<table class="tg" style="undefined;table-layout: fixed; width: 534px">
<colgroup>
<col style="width: 50px">
<col style="width: 67px">
<col style="width: 159px">
<col style="width: 76px">
<col style="width: 101px">
<col style="width: 101px">
<col style="width: 80px">
<col style="width: 60px">
</colgroup>
<thead>
  <tr>
    <th class="tg-0lax">�����ȣ</th>
    <th class="tg-0lax">���ε��Ī</th>
    <th class="tg-0lax">���ε���ġ</th>
    <th class="tg-0lax">����</th>
    <th class="tg-0lax">���ú�</th>
    <th class="tg-0lax">��ȭ</th>
    <th class="tg-0lax">date</th>
    <th class="tg-0lax">����</th>
  </tr>
</thead>
<tbody>
  <c:forEach var= "vo" items= "${list}">	
  <tr>
    <td class="tg-0lax">${vo.slboard_n}</td>
    <td class="tg-0lax"><a href="/project2/SlBoardContent.do?SLBOARD_n=${vo.slboard_n}">${vo.sllamp_name}</a></td>
    <td class="tg-0lax">${vo.sllamp_location}</td>
    <td class="tg-0lax">${vo.slboard_status}</td>
    <td class="tg-0lax">${vo.slboard_decibel}</td>
    <td class="tg-0lax">${vo.slboard_rec}</td>
    <td class="tg-0lax">${vo.slboard_date}</td>
    <td class="tg-0lax"><input type="button" value="����" onclick="slboardDel(${vo.slboard_n})"/></td>
  </tr>
  	</c:forEach> <% // } %>
  	<tr>
    <td class="tg-0lax" colspan="8">
    <input type="button" value="�߰�" onclick="location.href='slboard/slboard.html'"/>
   
  	</td>
  </tr>
</tbody>
</table>
</body>
</html>