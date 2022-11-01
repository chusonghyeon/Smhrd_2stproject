<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import ="java.util.*" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html>
<html lang="en">

<head>
   <meta charset="utf-8">
   <!-- SITE TITLE -->
   <title>������ �Ÿ��� ����ϴ� : MOEBIUS</title>

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
          

                <!--���콺 �׸������� ������ ��ũ��-->
                <div id="target">
                <a href="#intro" class="scroll"><img class="loginms" src="images/realmm.png" alt="" style="width: 300px;"></a>
               </div>
            </div>
         </div>
         </div>
      </div>
   </section>

<!--�α��� �κ�-->

   <div id="login" class="modal">

      <h3>ȯ���մϴ�.</h3>

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









<!--��ǰ �Ұ�(��� ����) section-->
<section id="main_about">
   <h1 class="heading bold" style="color: #ffffff;">ABOUT MOEBIUS</h1>
   <h2 class="subheading" style="color: #ffffff;">����콺�� �� ����� Ȯ���մϴ�.</h2>

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
               <video width="500px" src="images/�ÿ�����.mp4" class="movie_vd" controls autoplay></video>
            </div>
</section>

<!--��ǰ �Ұ� ��-->


<!--start about - ���� section-->
<section id="about">
    <div class="container">
       <div class="row">
          <div class="col-md-12 col-sm-12 text-center"> </div>

        <!--�����̵� ����-->
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
                 <!--�����̵� ������ư-->
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
<!--end about ���� ��-->





<!--start LIST ���ε� ���� ��������-->
<section id="LIST">
    <div class="container">
      <div class="row">
         <div class="col-md-12 col-sm-12" >
            <h1 class="heading bold" style="margin-left: -50px;">MOEBIUS LIST</h1>
            <h2 class="subheading">��ġ�� ����콺�� �� ������ Ȯ���մϴ�.</h2>
            <!-- �� �޴� ��--> 
                        <div class="iso-section"></div>
                        <ul class="filter-wrapper clearfix">
                           <li onmouseover="LayerView4()" class="opc-main-bg" data-filter=".map">��ġ ���</li>
                           <li onmouseover="LayerView1()" class="opc-main-bg" data-filter=".lamp">����콺 ��������</li>
                           <li onmouseover="LayerView2()" class="opc-main-bg" data-filter=".board">����콺 ��������</li>
                           <li onmouseover="LayerView3()" class="opc-main-bg" data-filter=".cam">����콺 ���� ī�޶�</li>
                           <li onmouseover="LayerView5()" class="opc-main-bg" data-filter=".stream">����콺 �ǽð� ��Ʈ����</li>
                        </ul>

                        <div class="iso-box-section wow fadeIn" data-wow-delay="0.9s">
                           <div class="iso-box-wrapper col4-iso-box">
                           
                              
            <div class="iso-box lamp col-lg-4 col-md-4 col-sm-6 col-xs-6" style="width: 1500px;"> 
<!--���ε� ���̺� ����-->
         <table class="table-cam" id="layerID1" style="visibility:hidden; margin-left: 400px;">
            <thead>
               <tr>
               <th colspan="7" style="text-align: center; font-size:40px;">����콺 ��������</th>
               </tr>
	<script>
			function sllampDel(num){
			// ������������ ��û(memberDelete.jsp)
			location.href ="SlLampDelete.do?SLLAMP_n="+num;
			}
		</script>
               <tr>
                <th>���ε� ��ȣ</th>
                <th>���ε� ��Ī</th>
                <th>���ε� ��ġ</th>
                <th>���ε� ����</th>
                <th>���͸� ����</th>
               <th>���� ����</th>
                 <th>���� ����</th>
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
				<span><i class="fa fa-minus-circle" aria-hidden="true"></i> ����</span></a>
					 </button></td>
			  </tr>
			  	</c:forEach> <% // } %>

                  </tbody>

                    
                        <!--���ε� �߰� ��� ����-->
            <tr>
               <th colspan="6">
                  <td><button><a href="#add_light" rel="modal:open"><span><i class="fa fa-plus-circle" aria-hidden="true"></i> �߰�</span></a></button></td>
               </th>
            </tr>
          </thead>
       </tbody>
     </table>
  </div> 



<!--���ε� �߰� ���â ����-->
         <div id="add_light" class="modal_lamp">
            <h3>�߰��Ͻ� ���ε� ������ �Է��ϼ���.</h3>

            <form action="/project2/SlLampInsert.do" method="post">
               <div style="padding: 5px;"></div>

               <table>
                  <tbody>
                        <tr>
                           <th style="height: 5vh; width: 15vh; text-align: center;">���ε� ��Ī</th>
                              <td><input style="height: 5vh; width: 30vh;" type="text" name="sllamp_name" /></td>
                        </tr>

                        <tr>
                           <th style="height: 5vh; width: 15vh; text-align: center;">���ε� ��ġ</th>
                              <td><input style="height: 5vh; width: 30vh;" type="text" name="sllamp_location" /></td>
                        </tr>

                        <tr>
                           <th style="height: 5vh; width: 15vh; text-align: center;">���ε� ����</th>
                              <td><input style="height: 5vh; width: 30vh;" type="text" name="sllamp_status" /></td>
                        </tr>

                        <tr>
                           <th style="height: 5vh; width: 15vh; text-align: center;">���͸� ����</th>
                              <td><input style="height: 5vh; width: 30vh;" type="text" name="sllamp_battery" /></td>
                        </tr>

                        <tr>
                           <th style="height: 5vh; width: 15vh; text-align: center;">���� ����</th>
                              <td><input style="height: 5vh; width: 30vh;" type="text" name="sllamp_broken" /></td>
                        </tr>
                  </tbody>
               </table>

            <div style="padding-top: 15px;">
                  <input type='submit' value='�߰� �Ϸ�' class="btn">
                  <span class="modal_close"><a href="#" rel="modal:close" class="modal_close">X</a></span>
            </div>
      </form>
</div> 
<!--���ε� �߰� ��� ��-->




<!--���ε� ���̺�  ��-->




<!--���� ���̺� ����-->
<div class="iso-box board col-lg-4 col-md-4 col-sm-6 col-xs-6">
   <table class="table-cam" id="layerID2" style="visibility:hidden; margin-left: 400px; margin-top: -210px;">
      <thead>
         <tr>
            <th colspan="8" style="text-align: center; font-size:40px; ">����콺 ��������</th>
         </tr>
	<script>
		function slboardDel(num){
		// ������������ ��û(memberDelete.jsp)
		location.href ="SlBoardDelete.do?SLBOARD_n="+num;
		}
	</script>
        <tr>
            <th>���� ��ȣ</th>
            <th>���ε� ��Ī</th>
            <th>���ε� ��ġ</th>
            <th>����</th>
            <th>���ú�</th>
            <th>��ȭ</th>
            <th>��¥</th>
            <th>���� ����</th>
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
			<span><i class="fa fa-minus-circle" aria-hidden="true"></i> ����</span></a>
					 </button></td>
		 </tr>
		  	</c:forEach> <% // } %>

            <tr>
               <th colspan="7">
               <td><a href="#add_board" rel="modal:open"><button><span><i class="fa fa-plus-circle" aria-hidden="true"></i> �߰�</span></a></button></td>

            </tr>
            </tbody>
      </thead>
   </table>
</div>
                           


<!--���� �߰� ���â ����-->
<div id="add_board" class="modal_board">
   <h3>�߰��Ͻ� ���ε� ������ �Է��ϼ���.</h3>
      <form action="/project2/SlBoardInsert.do" method="post">
         <div style="padding: 5px;"></div>
            <table>
               <tbody>
                   <tr>
                     <th style="height: 5vh; width: 15vh; text-align: center;">���ε� ��Ī</th>
                     <td><input style="height: 5vh; width: 30vh;" type="text" name="sllamp_name" /></td>
                   </tr>

                   <tr>
                     <th style="height: 5vh; width: 15vh; text-align: center;">���ε� ��ġ</th>
                     <td><input style="height: 5vh; width: 30vh;" type="text" name="sllamp_location" /></td>
                   </tr>

                   <tr>
                     <th style="height: 5vh; width: 15vh; text-align: center;">���ε� ����</th>
                     <td><input style="height: 5vh; width: 30vh;" type="text" name="slboard_status" /></td>
                   </tr>

                   <tr>
                      <th style="height: 5vh; width: 15vh; text-align: center;">���ú�</th>
                      <td><input style="height: 5vh; width: 30vh;" type="text" name="slboard_decibel" /></td>
                   </tr>

                   <tr>
                      <th style="height: 5vh; width: 15vh; text-align: center;">��ȭ</th>
                      <td><input style="height: 5vh; width: 30vh;" type="text" name="slboard_rec" /></td>
                   </tr>

                   <tr>
                      <th style="height: 5vh; width: 15vh; text-align: center;">DATE</th>
                      <td><input style="height: 5vh; width: 30vh;" type="text" name="slboard_date" /></td>
                   </tr>
            </tbody>
         </table>

               <div style="padding-top: 15px;">
               <input type='submit' value='�߰� �Ϸ�' class="btn">
                  <span><a href="#" rel="modal:close" class="modal_close">X</a></span>
      </div>
   </form>
</div>
<!--���� �߰� ��� ��-->



 <!--���� ���� ��� ��-->



 
<!--ī�޶� ���̺� ����-->
<div class="iso-box cam col-lg-4 col-md-4 col-sm-6 col-xs-6">
   <table class="table-cam" id="layerID3" style="visibility:hidden; margin-left: -330px; margin-top: -215px;">
      <thead>
         <tr>
            <th colspan="5" style="text-align: center; font-size:40px; ">����콺 ���� ī�޶�</th>
         </tr>
             <script>
				function slcamDel(num){
				// ������������ ��û(memberDelete.jsp)
				location.href ="SlCamDelete.do?SLCAM_n="+num;
				}
			</script>
         <tr>
            <th>ī�޶� ��ȣ</th>
            <th>ī�޶� ��Ī</th>
            <th>ī�޶� ��ġ</th>
            <th>ī�޶� ����</th>
            <th>���� ����</th>
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
			<span><i class="fa fa-minus-circle" aria-hidden="true"></i> ����</span></a>
					 </button></td>
		 </tr>
		  	</c:forEach> <% // } %>

            <tr>
               <th colspan="4">
                  <td><a href="#add_cam" rel="modal:open"><button><span><i class="fa fa-plus-circle" aria-hidden="true"></i> �߰�</span></a></button></td>
               </th>
             </tr>
         </tbody>
      </thead>
</table>
</div>


<!--ī�޶� �߰� ���â ����-->
<div id="add_cam" class="modal_cam">
   <h3>�߰��Ͻ� ī�޶� ������ �Է��ϼ���.</h3>
      <form action="/project2/SlCamInsert.do" method="post">
         <div style="padding: 5px;"></div>

            <table>
               <tbody>
                     <tr>
                        <th style="height: 5vh; width: 15vh; text-align: center;">ī�޶� ��Ī</th>
                           <td><input style="height: 5vh; width: 30vh;" type="text" name="slcam_name" /></td>
                     </tr>

                     <tr>
                        <th style="height: 5vh; width: 15vh; text-align: center;">ī�޶� ��ġ</th>
                           <td><input style="height: 5vh; width: 30vh;" type="text" name="slcam_location" /></td>
                     </tr>

                     <tr>
                        <th style="height: 5vh; width: 15vh; text-align: center;">ī�޶� ����</th>
                           <td><input style="height: 5vh; width: 30vh;" type="text" name="slcam_status" /></td>
                     </tr>
            </tbody>
          </table>

            <div style="padding-top: 15px;">
               <input type='submit' value='�߰� �Ϸ�' class="btn">
               <span><a href="#" rel="modal:close" class="modal_close">X</a></span>
            </div>

      </form>
</div>
<!--ī�޶� �߰� ��� ��-->




<!--�ǽð� ��Ʈ����-->
<div class="iso-box stream col-lg-4 col-md-4 col-md-6 col-xs-12" id="layerID5" style="visibility:hidden; margin-left: -700px; margin-top: -200px;">
   
   <iframe width="320px" height="240px" src="http://192.168.137.156:81/stream" frameborder="4px"></iframe>
      
   
   </div>
   <!--�ǽð� ��Ʈ���� ��-->


<!--��ġ���� ���� �κ�-->
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
   <h1 class="heading bold">F��A��Q</h1>
   <h2 class="subheading">�ñ��Ͻ� ������ ���� Ȯ���ϼ���.</h2>

      <div class="container-fluid">
         <div class="row">

            <div class="col-md-3">
               <div class="flip-container" ontouchstart="this.classList.toggle('hover');">
                  <div class="flipper first-service">
                     <div class="front">
                        <div class="icon">
                           <img src="images/police.png" alt="">
                        </div>
                        <h4>���� ��Ȳ ������ ��� �ϳ���?</h4>
                     </div>
                         <div class="back">
                              <p>��ҿ��� �Ϲ� ���ε�ó�� ���������, �ϻ� ������ ����� 85���ú� �̻��� ���� ������ ���<br>
                              ���� ��Ȳ���� �ǽ��Ͽ� �����ڿ��� ���� �������� ���� �ǽ� ��Ȳ�� �����մϴ�. <br>
                              ���� ���忡���� ���ε� ��ü�� ����� ����Ŀ�� ���� ���� ��Ȳ�� �˸��ϴ�.
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
                        <h4>���� ��Ȳ�� ��� �� �� �ֳ���?</h4>
                     </div>
                         <div class="back">
                          <p>�����մϴ�. <br>
                           ����� ī�޶� ���� ���ε��� ��ġ�� ���� ��Ȳ�� Ȯ���� �� �ֽ��ϴ�.<br>
                           �ǽð� ��Ʈ���� ����� ���� �������� ������ �� �� �ֽ��ϴ�.</p>
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
                        <h4>�����ڰ� ���ε� ������ ����� ��� �ϳ���?</h4>
                     </div>
                           <div class="back">
                          <p>����콺�� ���� ��Ȳ�� ������ ���, ������ Ʈ��ŷ�� �� �ֽ��ϴ�.<br>
                        ���� ī�޶�� ���� ��� �����ڸ� �����ϸ�, <br>
                        Ʈ��ŷ ������ �������� ��ġ�� �������� �����Ǳ� ������<br>
                        ��ġ�� ȯ�� �������� ���� ������ ���� �� �ֽ��ϴ�.</p>
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
                        <h4>���Ŀ� �߰��Ǵ� �κ��� �ֽ��ϱ�?</h4>
                     </div>
                         <div class="back">
                            <p>���� ����� �� ������ ���� �������� ���� ȯ���� ������ �����Դϴ�.<br>
                           ���� �¾籤 �г� �߰��� ���� ������ ���� �� ģȯ�� ���踦 �õ��ϰڽ��ϴ�.</p>
                          </div>
                  </div>
               </div>
            </div>

            <!--�ι�° ��-->
            <div style="padding-top: 380px;"></div>

            <div class="col-md-3">
               <div class="flip-container" ontouchstart="this.classList.toggle('hover');">
                  <div class="flipper fourth-service">
                     <div class="front">
                        <div class="icon">
                           <img src="images/all.png" alt="">
                        </div>
                        <h4>������ ��ġ �����Ѱ���?</h4>
                     </div>
                         <div class="back">
                              <p>Ư�� ���ε��̹Ƿ� �Ϲ������� ������ ��ġ�� ��ƽ��ϴ�.<br>
                              �� ����ü �� ������ ���� ������ �ʿ��ϸ�,
                              ����콺�� �Ѱ� �����ڸ� ���� ���� ������ �� Ȯ���� �� �ֽ��ϴ�.
                              �ڼ��� ������ �Ѱ� �����ڿ��� ���� �ּ���. ��062)655-3509</p>
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
                        <h4>���� ��Ȳ�� �ƴ� ��쿡�� �۵��� �� ���� �ʳ���?</h4>
                     </div>
                         <div class="back">
                              <p>����콺�� ���� �ϻ� ������ ��� ��Ȳ�� ���˻�Ȳ���� �����մϴ�.
                                 ���� ����콺�� ���� ��Ȳ�� ���� �Ǵ��ϴ� ���� �ƴϸ�,
                                 ����콺 �۵� �ÿ� �������� ���� ������ �����ϵ��� �����ϴ�.
                                 ���� ��Ȳ �Ǵ��� �������� �ϴ� ���̸� ����콺�� ��ġ�� ���� ���� ���濡 �ֵ� ������ �ΰ� �ֽ��ϴ�.
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
                        <h4>��� ���� ��ġ�Ǿ����� �� �� �ֳ���?</h4>
                     </div>
                         <div class="back">
                              <p>����콺�� �ַ� ���� ���, �ܰ� ���ÿ� ��ġ�ǰ� ������,
                                 ��ġ ���� �����͸� ���� ��ġ ��� Ȯ���� �����մϴ�.
                                 �ش� �����͸� ���� ���� �ǽ� ��Ȳ�� ��Ȯ�� ��ҷ� �������� ��� �⵿�� �� �ֵ��� �����ϴ�.
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
                        <h4>�غ� ���Դϴ�.</h4>
                     </div>
                         <div class="back">
                              <p>���� ���� ���� �غ��ϰڽ��ϴ�.</p>
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
         <h2 class="subheading" style="margin-left: -180px;">����콺�� �̿� ���� ������ ������ ��ȸ�մϴ�.</h2>

<!--�Ŵ��� ���̺� ����-->
<div style="margin-left: -500px;">


<table id="listManager" class="table-cam">
      <tbody>
         <thead>
            <tr>
               <th colspan="8" style="text-align: center; font-size:40px;">������ ����</th>
            </tr>
             <script>
				function slmanagerDel(num){
				// ������������ ��û(memberDelete.jsp)
				location.href ="/project2/SlManagerDelete.do?slmanager_n="+num;
				}
			</script>
            <tr>
               <th>������ ��ȣ</th>
               <th>������ ID</th>
               <th>������ PW</th>
               <th>������ ��å</th>
               <th>������ �̸�</th>
               <th>������ ��ȭ��ȣ</th>
               <th>������ E-Mail</th>
               <th>����</th>
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
		<span><i class="fa fa-minus-circle" aria-hidden="true"></i>����</span></a>
			 </button></td>
	  </tr>
  	</c:forEach> <% // } %> 
         <!--������ �߰� ��� ����-->
         <tr>
            <th colspan="7">
               <td><button><a href="#add_mem" rel="modal:open"><span><i class="fa fa-plus-circle" aria-hidden="true"></i> �߰�</span></a></button></td>
         </tr>
         </tbody>
      </thead>
   </table>
</div> <!--col-md-12 ��-->
</div>

<!--������ �߰� ���â ����-->
<div id="add_mem" class="modal_mem">
   <h3>�߰��Ͻ� ������ ������ �Է��ϼ���.</h3>
      <form action="/project2/SlManagerInsert.do" method="post">
       <div style="padding: 5px;"></div>
         <table>
            <tbody>
               <tr>
                  <th style="height: 5vh; width: 15vh; text-align: center;">������ ID</th>
                  <td><input style="height: 5vh; width: 30vh;" type="text" name="slmanager_ID" /></td>
               </tr>

               <tr>
                  <th style="height: 5vh; width: 15vh; text-align: center;">������ PW</th>
                  <td><input style="height: 5vh; width: 30vh;" type="text" name="slmanager_pw" /></td>
               </tr>

               <tr>
                  <th style="height: 5vh; width: 15vh; text-align: center;">������ ��å</th>
                  <td><input style="height: 5vh; width: 30vh;" type="text" name="slmanager_position" /></td>
               </tr>
               <tr>
                  <th style="height: 5vh; width: 15vh; text-align: center;">������ �̸�</th>
                  <td><input style="height: 5vh; width: 30vh;" type="text" name="slmanager_name" /></td>
               </tr>
                <tr>
                  <th style="height: 5vh; width: 15vh; text-align: center;">��ȭ��ȣ</th>
                  <td><input style="height: 5vh; width: 30vh;" type="text" name="slmanager_tel" /></td>
               </tr>

               <tr>
                  <th style="height: 5vh; width: 15vh; text-align: center;">�̸���</th>
                  <td><input style="height: 5vh; width: 30vh;" type="text" name="slmanager_mail" /></td>
               </tr>
           </tbody>
       </table>
            <div style="padding-top: 15px;">
               <input type='submit' value='�߰� �Ϸ�' class="btn"/>
               <span><a href="#" rel="modal:close" class="modal_close">X</a></span>
            </div>
   </form>
</div>
<!--������ �߰� ��� ��-->



</div>
</tbody>
</thead>

</thead>
</table> 
</div> 
</div> 
</section>
<!--�Ŵ��� ���̺� ��-->



<!--start development-->
<section id="development">

   <h1 class="heading bold" style="margin-left: -100px;">DEVELOPE</h1>
   <h2 class="subheading" style="margin-left: -100px;">����콺�� ��������</h2>


      <div class="dvbg">
      <img class="dvimg1" src="images/image123.jpg" alt="" >
      <div class="dvint1">
      <ul>
         <li>2020.12.31 | �������� �� DB ���� </li>
         <li>2021.01.04-05 | �� ������ ���� �� JDBC ����</li>
         <li>2021.01.06 | �� ������ ���� �� SERVER ����</li>
         <li>2021.01.08 | ARDUINO ���� �Ϸ�</li>
         <li>2021.01.09-12 | ����ǰ ���� �� WEB & SERVER ����</li>
      </ul>
      </div>
      <div class="dvint2">
         <ul>
            <li>Ȱ������ ����ְ� �����ϱ�</li>
            <li>����� ������ �Ͼ��ֱ�</li>
            <li>�׻� �ٸ� ������ ����ϱ�</li>
            <li>�ȵǴ� �κ��� ���� ����ϱ�</li>
            <li>�Ϻ����� �ʴ��� �ּ��� ���ϱ�</li>
         </ul>
      </div>
      <img class="dvimg2" src="images/image12345.png" (1).png" alt="">
      </div>
</section>
<!--end development-->





<!--team start-->
<section id="team">
   <h1 class="heading bold" style="margin-left: -400px;">OUR TEAM</h1>
   <h2 class="subheading" style="margin-left: -400px;">����콺 ���� ���� �Ұ��մϴ�.</h2>

    <!--���� �Ұ�-->

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
            ">������Ʈ �Ѱ� </div>
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
            ">�鿣��</div>
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
            ">�Ƶ��̳�</div>
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
                  ">����Ʈ����</div>
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
                  ">����Ʈ���� </div>
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
                  ">�鿣��</div>
               </div>
            
      
      </section>




   <!--������ ����-->
      <div class="contact" style="margin-left: -700px;">
         <div class="row">
            <div class="col-md-3 col-sm-12 headbox">
            </div>
         </div>
         <div class="row">
            <div class="info1 team-info-box col-md-4 col-sm-3 col-xs-6 wow fadeInUp" data-wow-delay="1s">
               <span><i class="fa fa-map-marker fa-3x"></i>
                  <p>���ֱ����� ���� �۾Ϸ�60 ����CGI���� 2��</p>
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
               <p>����Ʈ�׸��� ��� IoT���� SW������ ���� 2�� - ����������</p>
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