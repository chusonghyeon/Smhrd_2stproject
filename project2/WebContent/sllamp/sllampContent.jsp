
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
${vo.sllamp_name}의 상세보기 페이지 
<form action="/project2/SlLampUpdate.do" method="post">
<input type ="hidden" name ="sllamp_n" value ="${vo.sllamp_n}"/>
<!--  <input type ="hidden" name ="sllamp_battery" value ="${vo.sllamp_battery}"/>-->
<table class="tg" style="undefined;table-layout: fixed; width: 400px; ">
<colgroup>
<col style="width: 86px">
<col style="width: 350px">
</colgroup>
<thead>
  <tr>
    <th style="height: 5vh; width: 15vh; text-align: center;">번호</th>
    <th class="tg-0lax" >${vo.sllamp_n}</th>
  </tr>
</thead>
<tbody>
  <tr>
    <td style="height: 5vh; width: 15vh; text-align: center; background-color: #FFED86;">가로등 명칭</td>
    <td class="tg-0lax"><input type ="text"  style="height: 5vh; width: 35vh;" name= "sllamp_name" value="${vo.sllamp_name}"/></td>
  </tr>
  <tr>
    <td style="height: 5vh; width: 15vh; text-align: center; background-color: #FFED86;">가로등 위치</td>
    <td class="tg-0lax"><input type ="text"  style="height: 5vh; width: 35vh;" name= "sllamp_location" value="${vo.sllamp_location}"/></td>
  </tr>
    <tr>
    <td style="height: 5vh; width: 15vh; text-align: center; background-color: #FFED86;">가로등 상태</td>
    <td class="tg-0lax"><input type ="text"  style="height: 5vh; width: 35vh;" name= "sllamp_status" value="${vo.sllamp_status}"/></td>
  </tr>
  <tr>
    <td style="height: 5vh; width: 15vh; text-align: center; background-color: #FFED86;">베터리잔량</td>
    <td class="tg-0lax"><input type ="text" style="height: 5vh; width: 35vh;" name= "sllamp_battery" value="${vo.sllamp_battery}"/></td>
  </tr>
  <tr>
    <td style="height: 5vh; width: 15vh; text-align: center; background-color: #FFED86;">고장유무</td>
    <td class="tg-0lax"><input type ="text"  style="height: 5vh; width: 35vh;" name= "sllamp_broken" value="${vo.sllamp_broken}"/></td>
  </tr>
  <tr>
    <td class="tg-baqh" colspan="2">
    <br>
    	<input type="submit" value="수정하기"/>
    	<input type="reset" value="취소"/>
    	<!--<input type="button" value="목록으로" onclick="location.href='/project2/AllList.do#listLamp'" rel="modal:close"/>-->
    	<button><a href='/project2/SectionList.do#layerID1'" rel="modal:close" >목록으로</a></button> 
    	<span class="modal_close"><a href="#" rel="modal:close" class="modal_close">X</a></span>
    </td>
  </tr>
</tbody>
</table>
</form>
</body>
</html>