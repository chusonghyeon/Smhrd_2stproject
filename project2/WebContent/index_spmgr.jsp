<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import ="java.util.*" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html>
<html lang="en">

<head>
   <meta charset="utf-8">
   <!-- SITE TITLE -->
   <title>안전한 거리를 만듭니다 : MOEBIUS</title>

   <meta http-equiv="X-UA-Compatible" content="IE=Edge">
   <meta name="viewport" content="width=device-width, initial-scale=1">
   <meta name="keywords" content="">
   <meta name="description" content="">

   <!-- STYLESHEET CSS FILES -->
   <link rel="stylesheet" href="css/bootstrap.min.css">   
   <link rel="stylesheet" href="css/style.css">
   <link rel="stylesheet" href="css/font-awesome.min.css">

</head>

<body data-spy="scroll" data-target=".navbar-collapse" data-offset="50">

   <!-- navigation section -->
   <section class="navbar navbar-fixed-top custom-navbar" role="navigation">
      <!-- <div class="container"> -->
         <div class="container">
            <div class="navbar-header navbar-right" >
               <a href="#" class="navbar-brand" class="navbar-center"><span class="bold">MOEBIUS</span></a>          
            </div>
      </div>
      <div class="collapse navbar-collapse">
         <ul class="nav navbar-nav navbar-left" style="width: 160px;">
            <li><a href="#home" class="smoothScroll">HOME</a></li><br>
            <li><a href="#intro" class="smoothScroll">INTRO</a></li><br>
            <li><a href="#main_about" class="smoothScroll">ABOUT</a></li><br>
            <li><a href="#LIST" class="smoothScroll">LIST</a></li><br>
            <li><a href="#faq" class="smoothScroll">FAQ</a></li><br>
            <li><a href="#manager" class="smoothScroll">MANAGER</a></li>
            <li><a href="#development" class="smoothScroll">DEVELOPE</a></li>
            <li><a href="#team" class="smoothScroll">OUR TEAM</a></li>
         </ul>
      </div>
      <!-- </div> -->
   </section>



<!-- home section -->
   <section id="home">
      <div class="container">
         <div class="row">
            <div class="col-md-12 col-sm-12">
               <hr>
          

                <!--마우스 그림누르면 스르륵 스크롤-->
                <div id="target">
                <a href="#intro" class="scroll"><img class="loginms" src="images/realmm.png" alt="" style="width: 300px;"></a>
               </div>
            </div>
         </div>
         </div>
      </div>
   </section>

<!--로그인 부분-->

   <div id="login" class="modal">

      <h3>환영합니다.</h3>

      <form type="post" action="loginAction">
         <div style="padding: 5px;"></div>

         <div class="input-group margin-bottom-sm">
            <span class="input-group-addon">
               <i class="fa fa-lightbulb-o fa-fw"></i></span>
            <input class="form-control" type="text" name="slmanager_id" placeholder="ID">
         </div>

         <div style="padding: 5px;"></div>


         <div class="input-group">
            <span class="input-group-addon">
               <i class="fa fa-key fa-fw"></i></span>
            <input class="form-control" type="password" name="slmanager_pw" placeholder="Password">
         </div>

         <div style="padding: 10px;"></div>

         <input type='submit' value='LOGIN' class="modal_btn">
         <input type='reset' value='RESET' class="modal_btn">

         <span class="modal_close"><a href="#" rel="modal:close" class="modal_close">X</a></span>

   </div>
   </form>

   
<!--intro start-->
<section id="intro">
   <div class="size"></div>
   <img class="imgsize" src="images/intro.png" width="500" alt="">
         </div>
</section>
<!--end intro-->









<!--제품 소개(기능 설명) section-->
<section id="main_about">
   <h1 class="heading bold" style="color: #ffffff;">ABOUT MOEBIUS</h1>
   <h2 class="subheading" style="color: #ffffff;">뫼비우스의 주 기능을 확인합니다.</h2>

   <div>
      <div style="position: relative; ">
         <div class="index">
            <div class="cube">
                     <div>
                        <img class="num1" onmouseover="mover1()" onmouseout="mout1()" src="images/target.png">
                        <img class="num2" onmouseover="mover2()" onmouseout="mout2()" src="images/target.png">
                        <img class="num3" onmouseover="mover3()" onmouseout="mout3()" src="images/target.png">
                     </div>
               </div>
               <div id="id01" onmouseout="mout1()" onmouseover="mover1()"> </div>
               <div id="id02" onmouseout="mout2()" onmouseover="mover2()"> </div>
               <div id="id03" onmouseout="mout3()" onmouseover="mover3()"> </div>
            </div>
               </div>
   </div>
            <div class="movie_size">
               <video width="500px" src="images/시연영상.mp4" class="movie_vd" controls autoplay></video>
            </div>
</section>

<!--제품 소개 끝-->


<!--start about - 개요 section-->
<section id="about">
    <div class="container">
       <div class="row">
          <div class="col-md-12 col-sm-12 text-center"> </div>

        <!--슬라이드 시작-->
            <div id="slideContainer">
               <div class="slider">
                  <div class="slides">
                     <input type="radio" name="radio-btn" id="radio1">
                     <input type="radio" name="radio-btn" id="radio2">
                     <input type="radio" name="radio-btn" id="radio3">
                     <input type="radio" name="radio-btn" id="radio4">
                     <div class="slide first">
                        <img src="images/M (1).png" alt="">
                     </div>
                     <div class="slide">
                        <img src="images/M (2).png" alt="">
                     </div>
                     <div class="slide">
                        <img src="images/M (3).png" alt="">
                     </div>
                     <div class="slide">
                        <img src="images/M (4).png" alt="">
                     </div>
                  </div>
                 <!--슬라이드 라디오버튼-->
                <div class="navigation-manual">
                  <label for="radio1" class="manual-btn"></label>
                  <label for="radio2" class="manual-btn"></label>
                  <label for="radio3" class="manual-btn"></label>
                  <label for="radio4" class="manual-btn"></label>
               </div>
            </div>
         </div>
         </div>
         </div>
</section>
<!--end about 개요 끝-->





<!--start LIST 가로등 정보 페이지들-->
<section id="LIST">
    <div class="container">
      <div class="row">
         <div class="col-md-12 col-sm-12" >
            <h1 class="heading bold" style="margin-left: -50px;">MOEBIUS LIST</h1>
            <h2 class="subheading">설치된 뫼비우스의 상세 정보를 확인합니다.</h2>
            <!-- 상세 메뉴 탭--> 
                        <div class="iso-section"></div>
                        <ul class="filter-wrapper clearfix">
                           <li onmouseover="LayerView4()" class="opc-main-bg" data-filter=".map">설치 장소</li>
                           <li onmouseover="LayerView1()" class="opc-main-bg" data-filter=".lamp">뫼비우스 상태정보</li>
                           <li onmouseover="LayerView2()" class="opc-main-bg" data-filter=".board">뫼비우스 위험정보</li>
                           <li onmouseover="LayerView3()" class="opc-main-bg" data-filter=".cam">뫼비우스 현장 카메라</li>
                           <li onmouseover="LayerView5()" class="opc-main-bg" data-filter=".stream">뫼비우스 실시간 스트리밍</li>
                        </ul>

                        <div class="iso-box-section wow fadeIn" data-wow-delay="0.9s">
                           <div class="iso-box-wrapper col4-iso-box">
                           
                              
            <div class="iso-box lamp col-lg-4 col-md-4 col-sm-6 col-xs-6" style="width: 1500px;"> 
<!--가로등 테이블 시작-->
         <table class="table-cam" id="layerID1" style="visibility:hidden; margin-left: 400px;">
            <thead>
               <tr>
               <th colspan="7" style="text-align: center; font-size:40px;">뫼비우스 상태정보</th>
               </tr>
	<script>
			function sllampDel(num){
			// 삭제페이지를 요청(memberDelete.jsp)
			location.href ="SlLampDelete.do?SLLAMP_n="+num;
			}
		</script>
               <tr>
                <th>가로등 번호</th>
                <th>가로등 명칭</th>
                <th>가로등 위치</th>
                <th>가로등 상태</th>
                <th>배터리 상태</th>
               <th>고장 여부</th>
                 <th>삭제 여부</th>
                 </tr>

               </thead>

                <thead>
                   <tbody>
                 <c:forEach var= "vo" items= "${listLamp}">	
			  <tr>
			    <td class="tg-0lax">${vo.sllamp_n}</td>
			    <td><a href="/project2/SlLampContent.do?SLLAMP_n=${vo.sllamp_n}" rel="modal:open" ><span>${vo.sllamp_name}</span></a></td>
			    <td class="tg-0lax">${vo.sllamp_location}</td>
			    <td class="tg-0lax">${vo.sllamp_status}</td>
			    <td class="tg-0lax">${vo.sllamp_battery}</td>
			    <td class="tg-0lax">${vo.sllamp_broken}</td>
			    <td><button onclick="sllampDel(${vo.sllamp_n})"><a>
				<span><i class="fa fa-minus-circle" aria-hidden="true"></i> 삭제</span></a>
					 </button></td>
			  </tr>
			  	</c:forEach> <% // } %>

                  </tbody>

                    
                        <!--가로등 추가 모달 오픈-->
            <tr>
               <th colspan="6">
                  <td><button><a href="#add_light" rel="modal:open"><span><i class="fa fa-plus-circle" aria-hidden="true"></i> 추가</span></a></button></td>
               </th>
            </tr>
          </thead>
       </tbody>
     </table>
  </div> 



<!--가로등 추가 모달창 시작-->
         <div id="add_light" class="modal_lamp">
            <h3>추가하실 가로등 정보를 입력하세요.</h3>

            <form action="/project2/SlLampInsert.do" method="post">
               <div style="padding: 5px;"></div>

               <table>
                  <tbody>
                        <tr>
                           <th style="height: 5vh; width: 15vh; text-align: center;">가로등 명칭</th>
                              <td><input style="height: 5vh; width: 30vh;" type="text" name="sllamp_name" /></td>
                        </tr>

                        <tr>
                           <th style="height: 5vh; width: 15vh; text-align: center;">가로등 위치</th>
                              <td><input style="height: 5vh; width: 30vh;" type="text" name="sllamp_location" /></td>
                        </tr>

                        <tr>
                           <th style="height: 5vh; width: 15vh; text-align: center;">가로등 상태</th>
                              <td><input style="height: 5vh; width: 30vh;" type="text" name="sllamp_status" /></td>
                        </tr>

                        <tr>
                           <th style="height: 5vh; width: 15vh; text-align: center;">배터리 상태</th>
                              <td><input style="height: 5vh; width: 30vh;" type="text" name="sllamp_battery" /></td>
                        </tr>

                        <tr>
                           <th style="height: 5vh; width: 15vh; text-align: center;">고장 유무</th>
                              <td><input style="height: 5vh; width: 30vh;" type="text" name="sllamp_broken" /></td>
                        </tr>
                  </tbody>
               </table>

            <div style="padding-top: 15px;">
                  <input type='submit' value='추가 완료' class="btn">
                  <span class="modal_close"><a href="#" rel="modal:close" class="modal_close">X</a></span>
            </div>
      </form>
</div> 
<!--가로등 추가 모달 끝-->




<!--가로등 테이블  끝-->




<!--보드 테이블 시작-->
<div class="iso-box board col-lg-4 col-md-4 col-sm-6 col-xs-6">
   <table class="table-cam" id="layerID2" style="visibility:hidden; margin-left: 400px; margin-top: -210px;">
      <thead>
         <tr>
            <th colspan="8" style="text-align: center; font-size:40px; ">뫼비우스 위험정보</th>
         </tr>
	<script>
		function slboardDel(num){
		// 삭제페이지를 요청(memberDelete.jsp)
		location.href ="SlBoardDelete.do?SLBOARD_n="+num;
		}
	</script>
        <tr>
            <th>보드 번호</th>
            <th>가로등 명칭</th>
            <th>가로등 위치</th>
            <th>상태</th>
            <th>데시벨</th>
            <th>녹화</th>
            <th>날짜</th>
            <th>삭제 여부</th>
         </tr>
      </thead>


      <thead>
         <tbody>
  		<c:forEach var= "vo" items= "${listBoard}">	
		  <tr>
		    <td class="tg-0lax">${vo.slboard_n}</td>
		    <td><a href="/project2/SlBoardContent.do?SLBOARD_n=${vo.slboard_n}" rel="modal:open"><span>${vo.sllamp_name}</span></a></td>
		    <td class="tg-0lax">${vo.sllamp_location}</td>
		    <td class="tg-0lax">${vo.slboard_status}</td>
		    <td class="tg-0lax">${vo.slboard_decibel}</td>
		    <td class="tg-0lax">${vo.slboard_rec}</td>
		    <td class="tg-0lax">${vo.slboard_date}</td>
		    <td><button onclick="slboardDel(${vo.slboard_n})"><a>
			<span><i class="fa fa-minus-circle" aria-hidden="true"></i> 삭제</span></a>
					 </button></td>
		 </tr>
		  	</c:forEach> <% // } %>

            <tr>
               <th colspan="7">
               <td><a href="#add_board" rel="modal:open"><button><span><i class="fa fa-plus-circle" aria-hidden="true"></i> 추가</span></a></button></td>

            </tr>
            </tbody>
      </thead>
   </table>
</div>
                           


<!--보드 추가 모달창 시작-->
<div id="add_board" class="modal_board">
   <h3>추가하실 가로등 정보를 입력하세요.</h3>
      <form action="/project2/SlBoardInsert.do" method="post">
         <div style="padding: 5px;"></div>
            <table>
               <tbody>
                   <tr>
                     <th style="height: 5vh; width: 15vh; text-align: center;">가로등 명칭</th>
                     <td><input style="height: 5vh; width: 30vh;" type="text" name="sllamp_name" /></td>
                   </tr>

                   <tr>
                     <th style="height: 5vh; width: 15vh; text-align: center;">가로등 위치</th>
                     <td><input style="height: 5vh; width: 30vh;" type="text" name="sllamp_location" /></td>
                   </tr>

                   <tr>
                     <th style="height: 5vh; width: 15vh; text-align: center;">가로등 상태</th>
                     <td><input style="height: 5vh; width: 30vh;" type="text" name="slboard_status" /></td>
                   </tr>

                   <tr>
                      <th style="height: 5vh; width: 15vh; text-align: center;">데시벨</th>
                      <td><input style="height: 5vh; width: 30vh;" type="text" name="slboard_decibel" /></td>
                   </tr>

                   <tr>
                      <th style="height: 5vh; width: 15vh; text-align: center;">녹화</th>
                      <td><input style="height: 5vh; width: 30vh;" type="text" name="slboard_rec" /></td>
                   </tr>

                   <tr>
                      <th style="height: 5vh; width: 15vh; text-align: center;">DATE</th>
                      <td><input style="height: 5vh; width: 30vh;" type="text" name="slboard_date" /></td>
                   </tr>
            </tbody>
         </table>

               <div style="padding-top: 15px;">
               <input type='submit' value='추가 완료' class="btn">
                  <span><a href="#" rel="modal:close" class="modal_close">X</a></span>
      </div>
   </form>
</div>
<!--보드 추가 모달 끝-->



 <!--보드 수정 모달 끝-->



 
<!--카메라 테이블 시작-->
<div class="iso-box cam col-lg-4 col-md-4 col-sm-6 col-xs-6">
   <table class="table-cam" id="layerID3" style="visibility:hidden; margin-left: -330px; margin-top: -215px;">
      <thead>
         <tr>
            <th colspan="5" style="text-align: center; font-size:40px; ">뫼비우스 현장 카메라</th>
         </tr>
             <script>
				function slcamDel(num){
				// 삭제페이지를 요청(memberDelete.jsp)
				location.href ="SlCamDelete.do?SLCAM_n="+num;
				}
			</script>
         <tr>
            <th>카메라 번호</th>
            <th>카메라 명칭</th>
            <th>카메라 위치</th>
            <th>카메라 상태</th>
            <th>삭제 여부</th>
         </tr>
      </thead>
      
      <thead>
         <tbody>
 	<c:forEach var= "vo" items= "${listCam}">	
		  <tr>
		    <td class="tg-0lax">${vo.slcam_n}</td>
		    <td><a href="/project2/SlCamContent.do?SLCAM_n=${vo.slcam_n}" rel="modal:open"><span>${vo.slcam_name}</span></a></td>
		    <td class="tg-0lax">${vo.slcam_location}</td>
		    <td class="tg-0lax">${vo.slcam_status}</td>
		    <td><button onclick="slcamDel(${vo.slcam_n})"><a>
			<span><i class="fa fa-minus-circle" aria-hidden="true"></i> 삭제</span></a>
					 </button></td>
		 </tr>
		  	</c:forEach> <% // } %>

            <tr>
               <th colspan="4">
                  <td><a href="#add_cam" rel="modal:open"><button><span><i class="fa fa-plus-circle" aria-hidden="true"></i> 추가</span></a></button></td>
               </th>
             </tr>
         </tbody>
      </thead>
</table>
</div>


<!--카메라 추가 모달창 시작-->
<div id="add_cam" class="modal_cam">
   <h3>추가하실 카메라 정보를 입력하세요.</h3>
      <form action="/project2/SlCamInsert.do" method="post">
         <div style="padding: 5px;"></div>

            <table>
               <tbody>
                     <tr>
                        <th style="height: 5vh; width: 15vh; text-align: center;">카메라 명칭</th>
                           <td><input style="height: 5vh; width: 30vh;" type="text" name="slcam_name" /></td>
                     </tr>

                     <tr>
                        <th style="height: 5vh; width: 15vh; text-align: center;">카메라 위치</th>
                           <td><input style="height: 5vh; width: 30vh;" type="text" name="slcam_location" /></td>
                     </tr>

                     <tr>
                        <th style="height: 5vh; width: 15vh; text-align: center;">카메라 상태</th>
                           <td><input style="height: 5vh; width: 30vh;" type="text" name="slcam_status" /></td>
                     </tr>
            </tbody>
          </table>

            <div style="padding-top: 15px;">
               <input type='submit' value='추가 완료' class="btn">
               <span><a href="#" rel="modal:close" class="modal_close">X</a></span>
            </div>

      </form>
</div>
<!--카메라 추가 모달 끝-->




<!--실시간 스트리밍-->
<div class="iso-box stream col-lg-4 col-md-4 col-md-6 col-xs-12" id="layerID5" style="visibility:hidden; margin-left: -700px; margin-top: -200px;">
   
   <iframe width="320px" height="240px" src="http://192.168.137.156:81/stream" frameborder="4px"></iframe>
      
   
   </div>
   <!--실시간 스트리밍 끝-->


<!--위치정보 지도 부분-->
   <div class="iso-box map col-lg-4 col-md-4 col-md-6 col-xs-12" id="layerID4" style="visibility:hidden; margin-left: -1000px;">
      <div class="col-lg-4 col-md-4 col-sm-4 wow fadeInUp" data-wow-delay="0.6s">
       <div id="map1" style="width:1250px;height:500px; margin-top: -200px;"></div>
                                 </div>
                              </div>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
</section>
<!--end LIST-->







<!--FAQ start-->
<section id="faq">
   <h1 class="heading bold">F　A　Q</h1>
   <h2 class="subheading">궁금하신 사항을 먼저 확인하세요.</h2>

      <div class="container-fluid">
         <div class="row">

            <div class="col-md-3">
               <div class="flip-container" ontouchstart="this.classList.toggle('hover');">
                  <div class="flipper first-service">
                     <div class="front">
                        <div class="icon">
                           <img src="images/police.png" alt="">
                        </div>
                        <h4>범죄 상황 예측은 어떻게 하나요?</h4>
                     </div>
                         <div class="back">
                              <p>평소에는 일반 가로등처럼 사용하지만, 일상 소음을 벗어나는 85데시벨 이상의 고성이 감지될 경우<br>
                              범죄 상황으로 의심하여 관리자에게 관리 페이지를 통해 의심 상황을 전송합니다. <br>
                              또한 현장에서는 가로등 자체에 내장된 스피커를 통해 위험 상황을 알립니다.
                              </p>
                           </div>
                  </div>
               </div>
            </div>

            <div class="col-md-3">
               <div class="flip-container" ontouchstart="this.classList.toggle('hover');">
                  <div class="flipper second-service">
                     <div class="front">
                        <div class="icon">
                           <img src="images/eye.png" alt="">
                        </div>
                        <h4>현장 상황을 즉시 볼 수 있나요?</h4>
                     </div>
                         <div class="back">
                          <p>가능합니다. <br>
                           내장된 카메라를 통해 가로등이 설치된 현장 상황을 확인할 수 있습니다.<br>
                           실시간 스트리밍 기능을 통해 언제든지 현장을 볼 수 있습니다.</p>
                         </div>
                  </div>
               </div>
            </div>

            <div class="col-md-3">
               <div class="flip-container" ontouchstart="this.classList.toggle('hover');">
                  <div class="flipper third-service">
                     <div class="front">
                        <div class="icon">
                           <img src="images/radar.png" alt="">
                        </div>
                        <h4>범죄자가 가로등 범위를 벗어나면 어떻게 하나요?</h4>
                     </div>
                           <div class="back">
                          <p>뫼비우스는 범죄 상황이 예측될 경우, 현장을 트래킹할 수 있습니다.<br>
                        따라서 카메라와 조명 모두 범죄자를 추적하며, <br>
                        트래킹 가능한 범위마다 설치된 구역별로 관리되기 때문에<br>
                        설치된 환경 내에서는 도망 범위를 쫓을 수 있습니다.</p>
                         </div>
                  </div>
               </div>
            </div>

            <div class="col-md-3">
               <div class="flip-container" ontouchstart="this.classList.toggle('hover');">
                  <div class="flipper fourth-service">
                     <div class="front">
                        <div class="icon">
                           <img src="images/plus.png" alt="">
                        </div>
                        <h4>차후에 추가되는 부분이 있습니까?</h4>
                     </div>
                         <div class="back">
                            <p>관련 모바일 앱 개발을 통해 관리자의 관리 환경을 개선할 예정입니다.<br>
                           또한 태양광 패널 추가를 통해 에너지 절약 및 친환경 설계를 시도하겠습니다.</p>
                          </div>
                  </div>
               </div>
            </div>

            <!--두번째 줄-->
            <div style="padding-top: 380px;"></div>

            <div class="col-md-3">
               <div class="flip-container" ontouchstart="this.classList.toggle('hover');">
                  <div class="flipper fourth-service">
                     <div class="front">
                        <div class="icon">
                           <img src="images/all.png" alt="">
                        </div>
                        <h4>누구나 설치 가능한가요?</h4>
                     </div>
                         <div class="back">
                              <p>특수 가로등이므로 일반적으로 누구나 설치는 어렵습니다.<br>
                              각 지자체 및 수사기관 등의 협조가 필요하며,
                              뫼비우스를 총괄 관리자를 통해 관리 내용을 상세 확인할 수 있습니다.
                              자세한 사항은 총괄 관리자에게 문의 주세요. ☎062)655-3509</p>
                           </div>
                  </div>
               </div>
            </div>
          
            <div class="col-md-3">
               <div class="flip-container" ontouchstart="this.classList.toggle('hover');">
                  <div class="flipper third-service">
                     <div class="front">
                        <div class="icon">
                           <img src="images/alarm.png" alt="">
                        </div>
                        <h4>범죄 상황이 아닌 경우에도 작동할 수 있지 않나요?</h4>
                     </div>
                         <div class="back">
                              <p>뫼비우스는 범죄 일상 소음을 벗어난 상황을 범죄상황으로 예측합니다.
                                 따라서 뫼비우스가 범죄 상황을 직접 판단하는 것이 아니며,
                                 뫼비우스 작동 시에 수사기관의 빠른 대응이 가능하도록 돕습니다.
                                 범죄 상황 판단은 수사기관이 하는 것이며 뫼비우스는 설치를 통한 범죄 예방에 주된 목적을 두고 있습니다.
                              </p>
                           </div>
                  </div>
               </div>
            </div>

            <div class="col-md-3">
               <div class="flip-container" ontouchstart="this.classList.toggle('hover');">
                  <div class="flipper second-service">
                     <div class="front">
                        <div class="icon">
                           <img src="images/street-light.png" alt="">
                        </div>
                        <h4>어느 곳에 설치되었는지 알 수 있나요?</h4>
                     </div>
                         <div class="back">
                              <p>뫼비우스는 주로 외진 골목, 외곽 도시에 설치되고 있으며,
                                 설치 구역 데이터를 통해 설치 장소 확인이 가능합니다.
                                 해당 데이터를 통해 범죄 의심 상황에 정확한 장소로 수사기관이 즉시 출동할 수 있도록 돕습니다.
                              </p>
                           </div>
                  </div>
               </div>
            </div>

           

            <div class="col-md-3">
               <div class="flip-container" ontouchstart="this.classList.toggle('hover');">
                  <div class="flipper first-service">
                     <div class="front">
                        <div class="icon">
                           <img src="images/settings.png" alt="">
                        </div>
                        <h4>준비 중입니다.</h4>
                     </div>
                         <div class="back">
                              <p>빠른 시일 내에 준비하겠습니다.</p>
                           </div>
                  </div>
               </div>
            </div>
            

            

         </div>
      </div>

      

</section>
<!--end FAQ-->


<!--start manager-->
<section id="manager">
   <div class="container">
      <div class="row">
      <div class="col-md-12 col-sm-12">
         <h1 class="heading bold" style="margin-left: -200px;">MANAGER</h1>
         <h2 class="subheading" style="margin-left: -180px;">뫼비우스를 이용 중인 관리자 정보를 조회합니다.</h2>

<!--매니저 테이블 시작-->
<div style="margin-left: -500px;">


<table id="listManager" class="table-cam">
      <tbody>
         <thead>
            <tr>
               <th colspan="8" style="text-align: center; font-size:40px;">관리자 정보</th>
            </tr>
             <script>
				function slmanagerDel(num){
				// 삭제페이지를 요청(memberDelete.jsp)
				location.href ="/project2/SlManagerDelete.do?slmanager_n="+num;
				}
			</script>
            <tr>
               <th>관리자 번호</th>
               <th>관리자 ID</th>
               <th>관리자 PW</th>
               <th>관리자 직책</th>
               <th>관리자 이름</th>
               <th>관리자 전화번호</th>
               <th>관리자 E-Mail</th>
               <th>삭제</th>
            </tr>
         </thead>

   <thead>
      <tbody>
         <tr>
	  <c:forEach var= "vo" items= "${listManager}">	
	  <tr>
	    <td class="tg-0lax">${vo.slmanager_n}</td>
	    <td><a href="SlManagerContent.do?slmanager_n=${vo.slmanager_n}" rel="modal:open"><span>${vo.slmanager_id}</span></a></td>
	    <td class="tg-0lax">${vo.slmanager_pw}</td>
	    <td class="tg-0lax">${vo.slmanager_position}</td>
	    <td class="tg-0lax">${vo.slmanager_name}</td>
	    <td class="tg-0lax">${vo.slmanager_tel}</td>
	    <td class="tg-0lax">${vo.slmanager_mail}</td>
	    <td><button onclick = "slmanagerDel(${vo.slmanager_n})"/><a>
		<span><i class="fa fa-minus-circle" aria-hidden="true"></i>삭제</span></a>
			 </button></td>
	  </tr>
  	</c:forEach> <% // } %> 
         <!--관리자 추가 모달 오픈-->
         <tr>
            <th colspan="7">
               <td><button><a href="#add_mem" rel="modal:open"><span><i class="fa fa-plus-circle" aria-hidden="true"></i> 추가</span></a></button></td>
         </tr>
         </tbody>
      </thead>
   </table>
</div> <!--col-md-12 끝-->
</div>

<!--관리자 추가 모달창 시작-->
<div id="add_mem" class="modal_mem">
   <h3>추가하실 관리자 정보를 입력하세요.</h3>
      <form action="/project2/SlManagerInsert.do" method="post">
       <div style="padding: 5px;"></div>
         <table>
            <tbody>
               <tr>
                  <th style="height: 5vh; width: 15vh; text-align: center;">관리자 ID</th>
                  <td><input style="height: 5vh; width: 30vh;" type="text" name="slmanager_ID" /></td>
               </tr>

               <tr>
                  <th style="height: 5vh; width: 15vh; text-align: center;">관리자 PW</th>
                  <td><input style="height: 5vh; width: 30vh;" type="text" name="slmanager_pw" /></td>
               </tr>

               <tr>
                  <th style="height: 5vh; width: 15vh; text-align: center;">관리자 직책</th>
                  <td><input style="height: 5vh; width: 30vh;" type="text" name="slmanager_position" /></td>
               </tr>
               <tr>
                  <th style="height: 5vh; width: 15vh; text-align: center;">관리자 이름</th>
                  <td><input style="height: 5vh; width: 30vh;" type="text" name="slmanager_name" /></td>
               </tr>
                <tr>
                  <th style="height: 5vh; width: 15vh; text-align: center;">전화번호</th>
                  <td><input style="height: 5vh; width: 30vh;" type="text" name="slmanager_tel" /></td>
               </tr>

               <tr>
                  <th style="height: 5vh; width: 15vh; text-align: center;">이메일</th>
                  <td><input style="height: 5vh; width: 30vh;" type="text" name="slmanager_mail" /></td>
               </tr>
           </tbody>
       </table>
            <div style="padding-top: 15px;">
               <input type='submit' value='추가 완료' class="btn"/>
               <span><a href="#" rel="modal:close" class="modal_close">X</a></span>
            </div>
   </form>
</div>
<!--관리자 추가 모달 끝-->



</div>
</tbody>
</thead>

</thead>
</table> 
</div> 
</div> 
</section>
<!--매니저 테이블 끝-->



<!--start development-->
<section id="development">

   <h1 class="heading bold" style="margin-left: -100px;">DEVELOPE</h1>
   <h2 class="subheading" style="margin-left: -100px;">뫼비우스를 만들기까지</h2>


      <div class="dvbg">
      <img class="dvimg1" src="images/image123.jpg" alt="" >
      <div class="dvint1">
      <ul>
         <li>2020.12.31 | 시장조사 및 DB 구축 </li>
         <li>2021.01.04-05 | 웹 페이지 설계 및 JDBC 연동</li>
         <li>2021.01.06 | 웹 페이지 제작 및 SERVER 구축</li>
         <li>2021.01.08 | ARDUINO 제작 완료</li>
         <li>2021.01.09-12 | 시제품 제작 및 WEB & SERVER 연결</li>
      </ul>
      </div>
      <div class="dvint2">
         <ul>
            <li>활기차고 재미있게 개발하기</li>
            <li>팀장과 팀원을 믿어주기</li>
            <li>항상 다른 팀원을 배려하기</li>
            <li>안되는 부분은 같이 고민하기</li>
            <li>완벽하지 않더라도 최선을 다하기</li>
         </ul>
      </div>
      <img class="dvimg2" src="images/image12345.png" (1).png" alt="">
      </div>
</section>
<!--end development-->





<!--team start-->
<section id="team">
   <h1 class="heading bold" style="margin-left: -400px;">OUR TEAM</h1>
   <h2 class="subheading" style="margin-left: -400px;">뫼비우스 제작 팀을 소개합니다.</h2>

    <!--팀원 소개-->

    <section class="member">

      <div class="wrap" style="margin-left: -225px;">
         <div class="over"><img src="images/teamimage/sh.jpg" alt="" class="mimg1"></div>
         <img src="images/teamimage/face.jpg" class="over1"  alt="" class="mimg2">
            <img src="images/teamimage/naver.png" class="over2"  alt="" class="mimg2">
            <a href="https://www.youtube.com/channel/UCubIpLB7cA9tWIUZ26WFKPg"><img src="images/teamimage/youtube.jpg" class="over3"  alt="" class="mimg2"></a>
         </div><br><br><p class="mname1" style="margin-left: -275px;">| CHU SONG HYEEON |</p><br><p class="mname2" style="margin-left: -300px;">LEADER & SERVER & TRIAL PRODUCT</p>
         <div class="todo1" style="background : linear-gradient( 135deg,#dcdcdc,#dcdcdc);
         width: 250px; height: 20px;margin-left: -220px;
         ">
            <div class="todo2" style="background : linear-gradient( 135deg,#f79ccc,#ff009f);
            width: 250px; height: 20px; text-align: center;
            ">프로젝트 총괄 </div>
         </div><br>
        <div class="wrap" style="margin-left: 100px; margin-top: -475px;">
         <div class="over"><img src="images/teamimage/jy.jpg" alt="" class="mimg1"></div>
         <img src="images/teamimage/insta.png" class="over1"  alt="" class="mimg2">
            <img src="images/teamimage/twit.jpg" class="over2"  alt="" class="mimg2">
            <img src="images/teamimage/face.jpg" class="over3"  alt="" class="mimg2">
         </div><br><br><p class="mname1" style="margin-left: 130px;">| OH JU YUL |</p><br><p class="mname2" style="margin-left: 100px;">SERVER & TRIAL PRODUCT</p>
         <div class="todo1" style="background : linear-gradient( 135deg,#dcdcdc,#dcdcdc);
         width: 250px; height: 20px;margin-left: 100px;
         ">
            <div class="todo2" style="background : linear-gradient( 135deg,#00ffff,#00bfff);
            width: 250px; height: 20px;text-align: center;
            ">백엔드</div>
         </div><br>
        <div class="wrap" style="margin-left: 425px; margin-top: -475px;">
         <div class="over"><img src="images/teamimage/hs.jpg" alt="" class="mimg1"></div>
         <img src="images/teamimage/google.jpg" class="over1"  alt="" class="mimg2">
            <img src="images/teamimage/naver.png" class="over2"  alt="" class="mimg2">
            <img src="images/teamimage/witch.png" class="over3"  alt="" class="mimg2">
         </div><br><br><p class="mname1" style="margin-left: 390px;">| JANG HYEON SEOK |</p><br><p class="mname2" style="margin-left: 470px;" >DB & ARDUINO</p>
         <div class="todo1" style="background : linear-gradient( 135deg,#dcdcdc,#dcdcdc);
         width: 250px; height: 20px;margin-left: 430px;
         ">
            <div class="todo2" style="background : linear-gradient( 135deg,#f0f00d ,#ffd700);
            width: 250px; height: 20px; text-align: center;
            ">아두이노</div>
         </div>
      <br><br>
      
         <section class="member">
      
            <div class="wrap" style="margin-left: -830px;">
               <div class="over"><img src="images/teamimage/hl.jpg" alt="" class="mimg1"></div>
               <img src="images/teamimage/face.jpg" class="over1"  alt="" class="mimg2">
                  <img src="images/teamimage/naver.png" class="over2"  alt="" class="mimg2">
                  <a href="https://www.youtube.com/channel/UCubIpLB7cA9tWIUZ26WFKPg"><img src="images/teamimage/youtube.jpg" class="over3"  alt="" class="mimg2"></a>
               </div><br><br><p class="mname1" style="margin-left: -850px;">| KIM HONG LYONG |</p><br><p class="mname2" style="margin-left: -840px;"> WEB FRONT & PPT & VIDEO</p>
               <div class="todo1" style="background : linear-gradient( 135deg,#dcdcdc,#dcdcdc);
               width: 250px; height: 20px;margin-left: -820px;
               ">
                  <div class="todo2" style="background : linear-gradient( 135deg,#ffa07a,#ff4500);
                  width: 250px; height: 20px; text-align: center;
                  ">프론트엔드</div>
               </div><br>
              <div class="wrap" style="margin-left: -500px; margin-top: -475px;">
               <div class="over"><img src="images/teamimage/mh.jpg" alt="" class="mimg1"></div>
               <img src="images/teamimage/insta.png" class="over1"  alt="" class="mimg2">
                  <img src="images/teamimage/twit.jpg" class="over2"  alt="" class="mimg2">
                  <img src="images/teamimage/face.jpg" class="over3"  alt="" class="mimg2">
               </div><br><br><p class="mname1" style="margin-left: -485px;">| KIM MIN HEE |</p><br><p class="mname2" style="margin-left: -510px;">WEB FRONT & PPT & VIDEO</p>
               <div class="todo1" style="background : linear-gradient( 135deg,#dcdcdc,#dcdcdc);
               width: 250px; height: 20px;margin-left: -500px;
               ">
                  <div class="todo2" style="background : linear-gradient( 135deg,#7cfc00,#32cd32);
                  width: 250px; height: 20px; text-align: center;
                  ">프론트엔드 </div>
               </div><br>
              <div class="wrap" style="margin-left: -170px; margin-top: -475px;">
               <div class="over"><img src="images/teamimage/hh.jpg" alt="" class="mimg1"></div>
               <img src="images/teamimage/google.jpg" class="over1"  alt="" class="mimg2">
                  <img src="images/teamimage/naver.png" class="over2"  alt="" class="mimg2">
                  <img src="images/teamimage/witch.png" class="over3"  alt="" class="mimg2">
               </div><br><br><p class="mname1" style="margin-left: -170px;">| RYU HOON HEE |</p><br><p class="mname2" style="margin-left: -150px;">WEB FRONT & SERVER</p>
               <div class="todo1" style="background : linear-gradient( 135deg,#dcdcdc,#dcdcdc);
               width: 250px; height: 20px;margin-left: -155px;
               ">
                  <div class="todo2" style="background : linear-gradient( 135deg,#2f4f4f ,#000000);
                  width: 250px; height: 20px; text-align: center;
                  ">백엔드</div>
               </div>
            
      
      </section>




   <!--팀에게 문의-->
      <div class="contact" style="margin-left: -700px;">
         <div class="row">
            <div class="col-md-3 col-sm-12 headbox">
            </div>
         </div>
         <div class="row">
            <div class="info1 team-info-box col-md-4 col-sm-3 col-xs-6 wow fadeInUp" data-wow-delay="1s">
               <span><i class="fa fa-map-marker fa-3x"></i>
                  <p>광주광역시 남구 송암로60 광주CGI센터 2층</p>
               </span>
            </div>
            <div class="info2 team-info-box col-md-2 col-sm-4 col-xs-6 wow fadeInUp" data-wow-delay="0.6s">
               <i class="fa fa-phone fa-3x"></i>
               <p>062-655-3509</p>


            </div>
            <div class="info2 teaam-info-box col-md-2 col-sm-4 col-xs-6 wow fadeInUp" data-wow-delay="0.8s">
              <i class="fa fa-envelope-o fa-3x"></i>
               <p>smhrd@smhrd.or.kr</p>
            </div>

         </div>

         <div class="mapbox">
            <div id="map" style="width:695px;height:495px; "></div>
         </div>
         <div class="row">

      <div class="col-md-12 col-sm-4 messageboxdiv">
      <div class="team-row"></div>
         <form action="#" method="post">
            <div class="col-md-12 col-sm-6 sendbox">
                     <p>TITLE
                     <input type="text" class="form-control" id="title" placeholder=""></p>
                     <p>EMAIL
                     <input type="email" class="form-control" id="email" placeholder=""></p>
                     <p>NAME</p>
                     <input type="text" class="form-control" id="name" placeholder=""></p>
                     <p>MESSAGE
                     <textarea rows="7" class="form-control" id="message"></textarea></p>
            </div>
            <div class="col-md-offset-4 col-md-4 col-sm-offset-4 col-sm-6 send-div">
               <input name="submit" type="submit" class="form-control sendbtn" id="submit" value="SEND EMAIL">
                  </div>
               </form>
            </div>
         </div>
      </div>
</section> 





   <!-- copyright section -->
   <section id="copyright">
      <div class="container">
         <div class="row">
            <div class="col-md-8 col-sm-8 col-xs-9">
               <p>스마트그리드 기반 IoT융합 SW전문가 과정 2차 - 서른즈음에</p>
            </div>
            <div class="col-md-4 col-sm-4 col-xs-3">
               <a href="#home"><button>TOP</button></a>
            </div>
         </div>
      </div>
   </section>


   <!-- JAVASCRIPT JS FILES -->
   <script src="js/jquery.js"></script>
   <script src="js/bootstrap.min.js"></script>
   <script src="js/smoothscroll.js"></script>
   <script src="js/isotope.js"></script>
   <script src="js/imagesloaded.min.js"></script>   
   <script src="js/wow.min.js"></script>
   <script src="js/custom.js"></script>
   <script src="js/lampcontroller.js"></script>
   <script src="js/slider.js"></script>
   <script src="js/introslide.js"></script>  
   <script src="js/layerview.js"></script>
   <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.0.0/jquery.min.js"></script>
   <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.js"></script>
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.css" />
   <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=6673186941ee5d407b7d034a7666cd21"></script>
   <script src="js/map.js"></script>
   <script src="js/scroll.js"></script>

   </body>
</html>