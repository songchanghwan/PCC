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
                   			 .main_text{ width:80%; height:inherit; background-color:rgba(0,0,0,0.4); border-radius:25px; margin:0 auto;}
                   			 .main_text_header { letter-spacing:3px; text-align:center; border-bottom:2px solid white; padding:40px 0; }
                   			 .main_text_middle { width:80%; margin:0 auto; padding:50px 0;  font-family: 'Poor Story', cursive; font-weight:700; 
                   			 letter-spacing:1px; }
                   			 .main_text_middle p:nth-child(2) { font-size:2rem; padding:30px 0;}
                   		</style>
                   			<div class="main_text_header">
                   				<h2>Programmer Community Center</h2>
                   			</div>
                   			<div class="main_text_middle">
                   				 <p>PCC란 Programmer Community Center의 약자로 프로그래머, 프로그래머가 되고 싶은 또는 프로그래머의 관심 있는
                   				 사람들이 모여서 의사소통을 할 수 있는 소통의 장입니다. </p>
                   				 <p>Created by...</p>
                   			</div>
                   		</div>                   		
                    </div>
                </div>
       <jsp:include page="FooterTag.jsp"/>
    </body>
</html>