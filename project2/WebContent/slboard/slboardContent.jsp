
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style type="text/css">
</style>
<link rel="stylesheet" href="css/style.css">
</head>
<body>
${vo.sllamp_name}�� �󼼺��� ������
<form action="/project2/SlBoardUpdate.do" method="post">
<input type ="hidden" name ="slboard_n" value ="${vo.slboard_n}"/>
<table class="tg" style="undefined;table-layout: fixed; width: 400px">
<colgroup>
<col style="width: 86px">
<col style="width: 350px">
</colgroup>
<thead>
  <tr>
    <th class="tg-baqh" style="height: 5vh; width: 15vh; text-align: center; background-color: #FFED86;">�����ȣ</th>
    <th class="tg-0lax">${vo.slboard_n}</th>
  </tr>
</thead>
<tbody>
  <tr>
    <td class="tg-baqh" style="height: 5vh; width: 15vh; text-align: center; background-color: #FFED86;">���ε��Ī</td>
    <td class="tg-0lax"><input type ="text" style="height: 5vh; width: 35vh;" name= "sllamp_name" value="${vo.sllamp_name}"/></td>
  </tr>
    <tr>
    <td class="tg-baqh" style="height: 5vh; width: 15vh; text-align: center; background-color: #FFED86;">���ε���ġ</td>
    <td class="tg-0lax"><input type ="text" style="height: 5vh; width: 35vh;" name= "sllamp_location" value="${vo.sllamp_location}"/></td>
  </tr>
  <tr>
    <td class="tg-baqh" style="height: 5vh; width: 15vh; text-align: center; background-color: #FFED86;">����</td>
    <td class="tg-0lax"><input type ="text" style="height: 5vh; width: 35vh;" name= "slboard_status" value="${vo.slboard_status}"/></td>
  </tr>
  <tr>
    <td class="tg-baqh" style="height: 5vh; width: 15vh; text-align: center; background-color: #FFED86;">���ú�</td>
    <td class="tg-0lax"><input type ="text" style="height: 5vh; width: 35vh;" name= "slboard_decibel" value="${vo.slboard_decibel}"/></td>
  </tr>
  <tr>
    <td class="tg-baqh" style="height: 5vh; width: 15vh; text-align: center; background-color: #FFED86;">��ȭ</td>
    <td class="tg-0lax"><input type ="text" style="height: 5vh; width: 35vh;" name= "slboard_rec" value="${vo.slboard_rec}"/></td>
  </tr>
  <tr>
    <td class="tg-baqh" style="height: 5vh; width: 15vh; text-align: center; background-color: #FFED86;">date</td>
    <td class="tg-0lax"><input type ="text" style="height: 5vh; width: 35vh;" name= "slboard_date" value="${vo.slboard_date}"/></td>
  </tr>
  <tr>
    <td class="tg-baqh" colspan="2">
    <br>
    	<input type="submit" value="�����ϱ�"/>
    	<input type="reset" value="���"/>
    	<!-- <input type="button" value="����Ʈ" onclick="location.href='/project2/SlBoardList.do'"/> -->
    	<button><a href='/project2/SectionList.do#layerID2' rel="modal:close" >�������</a></button> 
    	<span class="modal_close"><a href="#" rel="modal:close" class="modal_close">X</a></span>
    </td>
  </tr>
</tbody>
</table>
</form>
</body>
</html>