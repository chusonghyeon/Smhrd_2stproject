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
function sllampDel(num){
	// 삭제페이지를 요청(memberDelete.jsp)
	location.href ="SlLampDelete.do?SLLAMP_n="+num;
}
</script>
</head>
<body>
가로등 리스트(MVC: model2방식 - JSTL+EL -  FrontController)
<table class="tg" style="undefined;table-layout: fixed; width: 534px">
<colgroup>
<col style="width: 50px">
<col style="width: 67px">
<col style="width: 159px">
<col style="width: 76px">
<col style="width: 101px">
<col style="width: 60px">
<col style="width: 60px">
</colgroup>
<thead>
  <tr>
    <th class="tg-0lax">번호</th>
    <th class="tg-0lax">명칭</th>
    <th class="tg-0lax">위치</th>
    <th class="tg-0lax">상태</th>
    <th class="tg-0lax">배터리잔량</th>
    <th class="tg-0lax">고장유무</th>
   <th class="tg-0lax">삭제</th>
  </tr>
</thead>
<tbody>
  <c:forEach var= "vo" items= "${list}">	
  <tr>
    <td class="tg-0lax">${vo.sllamp_n}</td>
    <td class="tg-0lax"><a href="/project2/SlLampContent.do?SLLAMP_n=${vo.sllamp_n}">${vo.sllamp_name}</a></td>
    <td class="tg-0lax">${vo.sllamp_location}</td>
    <td class="tg-0lax">${vo.sllamp_status}</td>
    <td class="tg-0lax">${vo.sllamp_battery}</td>
    <td class="tg-0lax">${vo.sllamp_broken}</td>
    <td class="tg-0lax"><input type="button" value="삭제" onclick="sllampDel(${vo.sllamp_n})"/></td>
  </tr>
  	</c:forEach> <% // } %>
  	
  	<tr>
    <td class="tg-0lax" colspan="7">
    <input type="button" value="추가" onclick="location.href='sllamp/sllamp.html'"/>
   
  	</td>
  </tr>
</tbody>
</table>
</body>
</html>