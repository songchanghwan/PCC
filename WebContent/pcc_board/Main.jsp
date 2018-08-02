<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="utf-8"%>
 
<!DOCTYPE html>
<html>
	<head>
		<jsp:include page="HeadTag.jsp"/>
	</head>
    <body>
               <!-- 섹션(중간) 영역 -->
                <div id="section">
                    <div class="article" style="border:none;">
                    	<div class="main_text">
                   		<style>
                   			.article{ width:100%; height:100%; background-image:url("../M_images/main_bg.jpg");
                   				background-size:cover; color:white; box-shadow:inset 0 0 50px #fff;
                   				position:relative; overflow:hidden; 
                   			 }
                   			 .article::after { content: ""; position:absolute; z-index:1; width:100px; height:auto; background-color:red; 
                   			 content:"PCC"; /* 보여주는 텍스트 */ text-align:center; color:#fff; font-family: 'Arial'; font-weight:bold; padding:5px 10px;
                   			  left:-30px; top:3px; transform: rotate(-30deg); }
                   			 .main_text{ width:80%; height:inherit; background-color:rgba(0,0,0,0.4); border-top-right-radius:25px; border-top-left-radius:25px; margin:0 auto; }
                   			 .main_text_header { letter-spacing:3px; text-align:center; border-bottom:2px solid white; padding:40px 0; }
                   			 .main_text_middle { width:80%; margin:0 auto; padding:50px 0;  font-family: 'Poor Story', cursive; font-weight:700; 
                   			 letter-spacing:1px; }
                   			 .main_text_middle p:nth-child(2) { font-size:2rem; padding:50px 0; }
                   			 #card_wrap { text-align:center; overflow:hidden; }
                   			 #card_wrap .card:nth-child(2) { border-left:2px solid white; border-right:2px solid white; box-sizing:border-box; }
                   			 .card { float:left; width:33.33%; }                  			 
                   			 .card i{ font-size:3rem; margin-bottom:15px; }
                   			 .main_text_bottom { font-size:1.3rem; font-family:'Poor Story', cursive; font-weight:700; width:80%; margin:0 auto; margin-top:30px;   }
                   			 .main_text_bottom p { padding:10px 0;}
                   		</style>
                   			<div class="main_text_header">
                   				<h2>Programmer Community Center</h2>
                   			</div>
                   			<div class="main_text_middle">
                   				 <p>PCC란 Programmer Community Center의 약자로 프로그래머, 프로그래머가 되고 싶은 또는 프로그래머의 관심 있는
                   				 사람들이 모여서 의사소통을 할 수 있는 소통의 장입니다. </p>
                   				 <p>Created by...</p>
                   				 <div id="card_wrap">
	                   				 <div class="card">
	                   				 	<i class="fas fa-user-tie"></i>
	                   				 	<h3>Seo Kang Hyeok</h3>
	                   				 	<h4>Front-End</h4>
	                   				 </div>
	                   				 <div class="card">
	                   				 	<i class="fas fa-user-tie"></i>
	                   				 	<h3>Song Chang Hwan</h3>
	                   				 	<h4>Back-End</h4>
	                   				 </div>
	                   				 <div class="card">
	                   				 	<i class="fas fa-user-tie"></i>
	                   				 	<h3>Jeong Yeong Bog</h3>
	                   				 	<h4>Server</h4>
	                   				 </div>
                   				 </div>
                   			</div>
                   			<div class="main_text_bottom">
                   				 <p>궁금하신 사항이나 문의할 것이 있으시면 언제든지 연락 주세요 <i class="far fa-grin"></i></p>
                   				 <p>010 - 4909 - 5886 <i class="fas fa-phone"></i></p>
                   			</div>
                   		</div>                   		
                    </div>
                </div>
       <jsp:include page="FooterTag.jsp"/>
    </body>
</html>