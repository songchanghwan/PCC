<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <title>Login</title>
        <link rel="stylesheet" href="css/Login.css">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.1.0/css/all.css" integrity="sha384-lKuwvrZot6UHsBSfcMvOkWwlCMgc0TaWr+30HWe3a4ltaBwTZhyTEggF5tJv8tbt" crossorigin="anonymous">
    <link href="https://fonts.googleapis.com/css?family=Poor+Story|Source+Sans+Pro" rel="stylesheet">
    </head>
    <body>
        <!-- 전체 영역 -->
        <div id="wrap">
        <!-- 헤더 부분 -->
            <div id="header">
                    <!-- 헤더 상단 메뉴얼 -->
                    <div class="h_menu">
                        <ul class="h_menu_sub">
                            <li><a href="Login.jsp">Login</a></li>
                            <li><a href="Join.jsp" target="_blank">Join</a></li>
                            <li class="bar"></li>
                            <li><a href="#"><img src="L_images/icon_kakao.png" alt="PPC 카카오톡 아이콘" title="PPC 카카오톡"></a></li>
                            <li><a href="#"><img src="L_images/icon_facebook.png" alt="PPC 페이스북 아이콘" title="PPC 페이스북"></a></li>
                            <li><a href="#"><img src="L_images/icon_instar.png" alt="PPC 인스타그램 아이콘" title="PPC 인스타그램"></a></li>
                            <li><a href="#"><img src="L_images/icon_cafe.png" alt="PPC 네이버카페 아이콘" title="PPC 네이버카페"></a></li>
                        </ul>
                    </div>
                    <!-- 헤더 제목 -->
                    <h1><a href="Main.jsp">PCC</a></h1>
                    <h5>programmer community center</h5>
            </div>
            <!-- 로그인 화면 -->
            <form action="" method="post">
                <div id="login">
                    <div class="login_container">
                        <i class="fas fa-user"></i>
                        <input type="id" placeholder="아이디를 입력해주세요.. ">
                    </div>
                    <div class="login_container">
                        <i class="fas fa-unlock-alt"></i>
                        <input type="password" placeholder="비밀번호를 입력해주세요.. ">
                    </div>
                    <!-- 로그인 버튼 -->
                    <input type="submit" value="로그인">
                    <!-- 로그인 서브 메뉴 -->
                    <div class="login_sub">
                        <a href="#">아이디 찾기</a>
                        <a href="#">비밀번호 찾기</a>
                        <a href="Join.jsp" target="_blank">회원가입</a>
                    </div>
                </div>  
            </form>  
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