
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	//	int num = Integer.parseInt(request.getParameter("num"));
//	MemberDAO dao = new MemberDAO();
//	MemberVO vo = dao.memberContent(num);
//	MemberVO vo = (MemberVO)request.getAttribute("vo");
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
.tg .tg-baqh{text-align:center;vertical-align:top}
.tg .tg-0lax{text-align:left;vertical-align:top}
</style>
</head>
<body>
${vo.slmanager_name}�� �󼼺��� ������ 
<form action="/project2/SlManagerUpdate.do" method="post">
<input type ="hidden" name ="slmanager_n" value ="${vo.slmanager_n}"/>
<table class="tg" style="undefined;table-layout: fixed; width: 400px">
<colgroup>
<col style="width: 86px">
<col style="width: 350px">
</colgroup>
<thead>
  <tr>
    <th class="tg-baqh">��ȣ</th>
    <th class="tg-0lax">${vo.slmanager_n}</th>
  </tr>
</thead>
<tbody>
  <tr>
    <td class="tg-baqh">���̵�</td>
    <td class="tg-0lax">${vo.slmanager_id}</td>
  </tr>
  <tr>
    <td class="tg-baqh">��й�ȣ</td>
    <td class="tg-0lax">${vo.slmanager_pw}</td>
  </tr>
  <tr>
    <td class="tg-baqh">��å</td>
    <td class="tg-0lax"><input type ="text" name= "slmanager_position" value="${vo.slmanager_position}"/></td>
  </tr>
  <tr>
    <td class="tg-baqh">�̸�</td>
    <td class="tg-0lax">${vo.slmanager_name}</td>
  </tr>
  <tr>
    <td class="tg-baqh">��ȭ��ȣ</td>
    <td class="tg-0lax"><input type ="text" name= "slmanager_tel" value="${vo.slmanager_tel}"/></td>
  </tr>
  <tr>
    <td class="tg-baqh">�̸���</td>
    <td class="tg-0lax"><input type ="text" name= "slmanager_mail" value="${vo.slmanager_mail}"/></td>
  </tr>
  <tr>
    <td class="tg-baqh" colspan="2">
    	<input type="submit" value="�����ϱ�"/>
    	<input type="reset" value="���"/>
    	<!-- <input type="button" value="����Ʈ" onclick="location.href='/project2/SlManagerList.do'"/> -->
    	<button><a href='/project2/SectionList.do#listManager'" rel="modal:close" >�������</a></button> 
    	<span class="modal_close"><a href="#" rel="modal:close" class="modal_close">X</a></span>
    </td>
  </tr>
</tbody>
</table>
</form>
</body>
</html>