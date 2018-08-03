<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
 <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
 <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
  <head>
    <title>PCC Project : <sitemesh:write property='title'/></title>
    <sitemesh:write property='head'/>
  </head>
  <body>
                      		<c:set var="id_session" value="${sessionScope.id}"/>
                    		<c:set var="id_comment" value="님 환영 합니다."/>
                    		<c:set var="id_session_comment" value="${id_session}${id_comment}"/>
        <!-- 전체 영역 -->
        <div id="wrap">
        <!-- 헤더 부분 -->
            <div id="header">
                    <!-- 헤더 상단 메뉴얼 -->
                    <div class="h_menu">
                        <ul class="h_menu_sub">
                        	<c:if test="${empty sessionScope.id}">
                        		 <li><a href="../Login.jsp" target="_blank">Login</a></li>
                        	</c:if>
                        	<c:if test="${not empty sessionScope.id}">
                        		 <li><a href="#">${id_session_comment}</a></li>
                        	</c:if>
                            <li><a href="../Join.jsp" target="_blank">${empty sessionScope.nicname ? "Join" : ""}</a></li>
                            <li class="bar"></li>
                            <li><a href="#"><img src="../M_images/icon_kakao.png" alt="PPC 카카오톡 아이콘" title="PPC 카카오톡"></a></li>
                            <li><a href="#"><img src="../M_images/icon_facebook.png" alt="PPC 페이스북 아이콘" title="PPC 페이스북"></a></li>
                            <li><a href="#"><img src="../M_images/icon_instar.png" alt="PPC 인스타그램 아이콘" title="PPC 인스타그램"></a></li>
                            <li><a href="#"><img src="../M_images/icon_cafe.png" alt="PPC 네이버카페 아이콘" title="PPC 네이버카페"></a></li>
                        </ul>
                    </div>
                    <!-- 헤더 제목 -->
                    <h1><a href="Main.jsp">PCC</a></h1>
                    <h5>programmer community center</h5>
            </div>
            <!-- 우측 바 -->
            <div id="rbar">
                <div class="rbar_txt">Welcome To PCC</div>
            </div>
            
            <!-- 메인 영역 -->
            <div id="main">
            	<!-- 광고 -->
                <div id="aside">
                    <div class="aside_1">AD1</div>
                    <div class="aside_2">AD2</div>
                </div>
                <!-- 메인 메뉴얼 -->
                <div id="nav">
                    <div class="user">
                    	    ${empty sessionScope.id ? "로그인 해주세요" : id_session_comment}
                            ${empty sessionScope.nicname ? "" : sessionScope.nicname}
                            <a href="../Logout.jsp">
                            	<c:if test="${not empty sessionScope.id}">
                            		로그아웃
                            	</c:if>
                            </a>
                    </div>
                    <!-- 메인 메뉴 작업 -1 -->
                    <a href="Notice.jsp"><i class="fas fa-bullhorn"></i> 공지사항</a>
                    <div id="q_a_box">
                    <ul>
                        <li class="m_menu">
                            <span>WEB Q & A</span>
                            <ul class="hide">
                                <li><a href="HTMLCSS.jsp">HTML/CSS</a></li>
                                <li><a href="Javascript.jsp">Javascript</a></li>
                                <li><a href="JQuery.jsp">JQuery</a></li>
                            </ul>
                        </li>
                    </ul>
                    <ul>
                        <li class="m_menu">
                            <span>Language Q & A </span>
                            <ul class="hide">
                                <li><a href="CC++.jsp">C/C++</a></li>
                                <li><a href="C.jsp">C#</a></li>
                                <li><a href="JAVA.jsp">JAVA</a></li>
                                <li><a href="Python.jsp">Python</a></li>
                            </ul>
                        </li>
                    </ul>
                    <ul>
                        <li class="m_menu">
                            <span>Server Q & A</span>
                            <ul class="hide">
                                <li><a href="PJA.jsp">PHP/JSP/ASP</a></li>
                                <li><a href="Node.jsp">Node.js</a></li>
                            </ul>
                        </li>
                    </ul>
                    <ul>
                        <li class="m_menu">
                            <span>기타 Q & A</span>
                            <ul class="hide">
                                <li><a href="suggest.jsp">건의사항</a></li>
                            </ul>
                        </li>
                    </ul>
                    </div>
                    <!-- 커뮤니티 메뉴얼 -->
                    <div id="c_box">
                    <ul>
                        <li class="m_menu">
                            <span>PCC 쉼터</span>
                            <ul class="hide">
                                <li><a href="free.jsp">자유게시판입니다.</a></li>
                                <li><a href="worry.jsp">고민나누기</a></li>
                                <li><a href="humor.jsp">유머게시판</a></li>
                                <li><a href="study.jsp">개인스터디 모집</a></li>
                                <li><a href="developer.jsp">개발자 모임</a></li>
                            </ul>
                        </li>
                    </ul>
                    </div>
                </div>
				<sitemesh:write property='body'/>
            </div>
            <!-- 푸터(끝) 영역 -->
            <div id="footer">
                PCC(주) | 경기도 부천시 소사로 78번길 70<br>
               	사업자등록번호 : 000-00-00000 | 개인정보관리책임자 : 서강혁<br>
                                    전화번호 : 032-345-5886 | 이메일 : kanghyeok93@naver.com
               <p>PCC는 게시물의 무단 도용,복제 & 2차 가공 및 상업적 이용을 금지합니다.</p>
               <p>copyrightⓒ2018 PCC. All rights reserved. </p>
            </div>
        </div>
            
  </body>
</html>