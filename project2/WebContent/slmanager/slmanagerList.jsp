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
	body{
	font-size: 12px;
	}
.tg  {border-collapse:collapse;border-spacing:0;}
.tg td{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  overflow:hidden;padding:10px 5px;word-break:normal;}
.tg th{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  font-weight:normal;overflow:hidden;padding:10px 5px;word-break:normal;}
.tg .tg-0039{background-color:#fcff2f;text-align:center;vertical-align:top}
.tg .tg-lqy6{text-align:right;vertical-align:top}
.tg .tg-0lax{text-align:left;vertical-align:top}
</style>
<script>
function slmanagerDel(num){
	// ������������ ��û(memberDelete.jsp)
	location.href ="/project2/SlManagerDelete.do?slmanager_n="+num;
}
</script>
</head>
<body>
ȸ������Ʈ(MVC: model2��� - JSTL+EL -  FrontController)
<table class="tg" style="undefined;table-layout: fixed; width: 915px">
<colgroup>
<col style="width: 39px">
<col style="width: 111px">
<col style="width: 106px">
<col style="width: 113px">
<col style="width: 157px">
<col style="width: 154px">
<col style="width: 1555x">
<col style="width: 55px">
</colgroup>
<thead>
  <tr>
    <th class="tg-0039">��ȣ</th>
    <th class="tg-0039">���̵�</th>
    <th class="tg-0039">��й�ȣ</th>
    <th class="tg-0039">��å</th>
    <th class="tg-0039">�̸�</th>
    <th class="tg-0039">��ȭ��ȣ</th>
    <th class="tg-0039">�̸���</th>
    <th class="tg-0039">����</th>
  </tr>
</thead>
<tbody>
<!-- HTML�ּ� -->
<%--JSP�ּ� --%>
	<%
		//for(int i =1; i<list.size(); i++){ 
		//MemberVO vo = list.get(i);
	%>
	<c:forEach var= "vo" items= "${list}">	
  <tr>
    <td class="tg-0lax">${vo.slmanager_n}</td>
    <td class="tg-0lax"><a href="SlManagerContent.do?slmanager_n=${vo.slmanager_n}">${vo.slmanager_id}</a></td>
    <td class="tg-0lax">${vo.slmanager_pw}</td>
    <td class="tg-0lax">${vo.slmanager_position}</td>
    <td class="tg-0lax">${vo.slmanager_name}</td>
    <td class="tg-0lax">${vo.slmanager_tel}</td>
    <td class="tg-0lax">${vo.slmanager_mail}</td>
    <td class="tg-0lax"><input type ="button"value="����" onclick="slmanagerDel(${vo.slmanager_n})"/></td>
  </tr>
  	</c:forEach> <% // } %>
  <tr>
    <td class="tg-lqy6" colspan="8"><input type="button" value="ȸ������" onclick="location.href='slmanager/slmanager.html'"/></td>
  </tr>
</tbody>
</table>
</body>
</html>