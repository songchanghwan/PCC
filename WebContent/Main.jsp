<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
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
                            <li><a href="Login.html" target="_blank">Login</a></li>
                            <li><a href="#">Sign Up</a></li>
                            <li class="bar"></li>
                            <li><a href="#"><img src="M_images/icon_kakao.png" alt="PPC 카카오톡 아이콘" title="PPC 카카오톡"></a></li>
                            <li><a href="#"><img src="M_images/icon_facebook.png" alt="PPC 페이스북 아이콘" title="PPC 페이스북"></a></li>
                            <li><a href="#"><img src="M_images/icon_instar.png" alt="PPC 인스타그램 아이콘" title="PPC 인스타그램"></a></li>
                            <li><a href="#"><img src="M_images/icon_cafe.png" alt="PPC 네이버카페 아이콘" title="PPC 네이버카페"></a></li>
                        </ul>
                    </div>
                    <!-- 헤더 제목 -->
                    <h1><a href="Main.html">PCC</a></h1>
                    <h5>programmer community center</h5>
            </div>
            <!-- 메인 영역 -->
            <div id="main">
                <!-- 메인 메뉴얼 -->
                <div id="nav">
                    <div class="user">
                        
                    </div>
                    <!-- 메인 메뉴 작업 -1 -->
                    <a href="Notice.html">★공지사항★</a>
                    <div id="q_a_box">
                    <ul>
                        <li class="m_menu">
                            <span>WEB Q & A</span>
                            <ul class="hide">
                                <li><a href="HTMLCSS.html">HTML/CSS</a></li>
                                <li><a href="Javascript.html">Javascript</a></li>
                                <li><a href="JQuery.html">JQuery</a></li>
                            </ul>
                        </li>
                    </ul>
                    <ul>
                        <li class="m_menu">
                            <span>Language Q & A</span>
                            <ul class="hide">
                                <li><a href="CC++.html">C/C++</a></li>
                                <li><a href="C.html">C#</a></li>
                                <li><a href="JAVA.html">JAVA</a></li>
                                <li><a href="Python.html">Python</a></li>
                            </ul>
                        </li>
                    </ul>
                    <ul>
                        <li class="m_menu">
                            <span>Server Q & A</span>
                            <ul class="hide">
                                <li><a href="PJA.html">PHP/JSP/ASP</a></li>
                                <li><a href="Node.html">Node.js</a></li>
                            </ul>
                        </li>
                    </ul>
                    <ul>
                        <li class="m_menu">
                            <span>기타 Q & A</span>
                            <ul class="hide">
                                <li><a>준비중</a></li>
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
                                <li><a href="free.html">자유게시판</a></li>
                                <li><a href="worry.html">고민나누기</a></li>
                                <li><a href="humor.html">유머게시판</a></li>
                                <li><a href="study.html">개인스터디 모집</a></li>
                                <li><a href="developer.html">개발자 모임</a></li>
                            </ul>
                        </li>
                    </ul>
                    </div>
                </div>
                <!-- 섹션(중간) 영역 -->
                <div id="section">
                    <div class="article">

                    </div>
                </div>
            </div>
            <!-- 푸터(끝) 영역 -->
            <div id="footer">
            
            </div>
        </div>
        <script src="js/Main.js"></script>
    </body>
</html>