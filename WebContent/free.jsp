<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <title>PCC</title>
        <link rel="stylesheet" href="css/Main.css">
        <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro|Abril+Fatface|Poor+Story" rel="stylesheet">
        <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
    </head>
    <body>
        <!-- 전체 영역 -->
        <div id="wrap">
        <!-- 헤더 부분 -->
            <div id="header">
                    <!-- 헤더 상단 메뉴얼 -->
                    <div class="h_menu">
                        <ul class="h_menu_sub">
                            <li><a href="Login.jsp" target="_blank">Login</a></li>
                            <li><a href="Join.jsp" target="_blank">Join</a></li>
                            <li class="bar"></li>
                            <li><a href="#"><img src="M_images/icon_kakao.png" alt="PPC 카카오톡 아이콘" title="PPC 카카오톡"></a></li>
                            <li><a href="#"><img src="M_images/icon_facebook.png" alt="PPC 페이스북 아이콘" title="PPC 페이스북"></a></li>
                            <li><a href="#"><img src="M_images/icon_instar.png" alt="PPC 인스타그램 아이콘" title="PPC 인스타그램"></a></li>
                            <li><a href="#"><img src="M_images/icon_cafe.png" alt="PPC 네이버카페 아이콘" title="PPC 네이버카페"></a></li>
                        </ul>
                    </div>
                    <!-- 헤더 제목 -->
                    <h1><a href="Main.jsp">PCC</a></h1>
                    <h5>programmer community center</h5>
            </div>
            <!-- 메인 영역 -->
            <div id="main">
                <!-- 메인 메뉴얼 -->
                <div id="nav">
                    <div class="user">
                        
                    </div>
                    <!-- 메인 메뉴 작업 -1 -->
                    <a href="Notice.jsp">★공지사항★</a>
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
                            <span>Language Q & A</span>
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
                                <li><a href="free.jsp">자유게시판</a></li>
                                <li><a href="worry.jsp">고민나누기</a></li>
                                <li><a href="humor.jsp">유머게시판</a></li>
                                <li><a href="study.jsp">개인스터디 모집</a></li>
                                <li><a href="developer.jsp">개발자 모임</a></li>
                            </ul>
                        </li>
                    </ul>
                    </div>
                </div>
                <!-- 섹션(중간) 영역 -->
                <div id="section">
                    <div class="article">
                      <style>
                        .article { width:90%; height:70%; border:3px solid crimson; margin:0 auto; margin-top:50px; }
                      </style>
                      	  자유게시판입니다.
                    </div>
                </div>
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
        <script src="js/Main.js"></script>
    </body>
</html>