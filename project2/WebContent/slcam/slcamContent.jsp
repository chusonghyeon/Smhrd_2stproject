
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
${vo.slcam_name}�� �󼼺��� ������ 
<form action="/project2/SlCamUpdate.do" method="post">
<input type ="hidden" name ="slcam_n" value ="${vo.slcam_n}"/>
<table class="tg" style="undefined;table-layout: fixed; width: 400px">
<colgroup>
<col style="width: 86px">
<col style="width: 350px">
</colgroup>
<thead>
  <tr>
    <th class="tg-baqh" style="height: 5vh; width: 15vh; text-align: center; background-color: #FFED86;">��ȣ</th>
    <th class="tg-0lax">${vo.slcam_n}</th>
  </tr>
</thead>
<tbody>
  <tr>
    <td class="tg-baqh" style="height: 5vh; width: 15vh; text-align: center; background-color: #FFED86;">��Ī</td>
    <td class="tg-0lax"><input type ="text" style="height: 5vh; width: 35vh;" name= "slcam_name" value="${vo.slcam_name}"/></td>
  </tr>
  <tr>
    <td class="tg-baqh" style="height: 5vh; width: 15vh; text-align: center; background-color: #FFED86;">��ġ</td>
    <td class="tg-0lax"><input type ="text" style="height: 5vh; width: 35vh;" name= "slcam_location" value="${vo.slcam_location}"/></td>
  </tr>
    <tr>
    <td class="tg-baqh" style="height: 5vh; width: 15vh; text-align: center; background-color: #FFED86;">����</td>
    <td class="tg-0lax"><input type ="text" style="height: 5vh; width: 35vh;" name= "slcam_status" value="${vo.slcam_status}"/></td>
  </tr>
  <tr>
    <td class="tg-baqh" colspan="2">
    <br>
    	<input type="submit" value="�����ϱ�"/>
    	<input type="reset" value="���"/>
    	<!-- <input type="button" value="����Ʈ" onclick="location.href='/project2/SlCamList.do'"/> -->
    	<button><a href='/project2/SectionList.do#layerID3'" rel="modal:close" >�������</a></button> 
    	<span class="modal_close"><a href="#" rel="modal:close" class="modal_close">X</a></span>
    
    </td>
  </tr>
</tbody>
</table>
</form>
</body>
</html>