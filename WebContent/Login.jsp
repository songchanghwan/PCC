<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <title>PCC</title>
        <link rel="stylesheet" href="css/Login.css">
    <link href="https://fonts.googleapis.com/css?family=Song+Myung|Source+Sans+Pro" rel="stylesheet">
    </head>
    <body>
        <!-- 전체 영역 -->
        <div id="wrap">
        <!-- 헤더 부분 -->
            <div id="header">
                    <!-- 헤더 상단 메뉴얼 -->
                    <div class="h_menu">
                        <ul class="h_menu_sub">
                            <li><a href="#">Login</a></li>
                            <li><a href="#">Sign Up</a></li>
                            <li class="bar"></li>
                            <li><a href="#"><img src="images/icon_kakao.png" alt="PPC 카카오톡 아이콘" title="PPC 카카오톡"></a></li>
                            <li><a href="#"><img src="images/icon_facebook.png" alt="PPC 페이스북 아이콘" title="PPC 페이스북"></a></li>
                            <li><a href="#"><img src="images/icon_instar.png" alt="PPC 인스타그램 아이콘" title="PPC 인스타그램"></a></li>
                            <li><a href="#"><img src="images/icon_cafe.png" alt="PPC 네이버카페 아이콘" title="PPC 네이버카페"></a></li>
                        </ul>
                    </div>
                    <!-- 헤더 제목 -->
                    <h1>PCC</h1>
                    <h5>programmer community center</h5>
            </div>
            <!-- 로그인 화면 -->
            <div id="login">
             <!-- 로그인 화면 아이디 , 패스워드 -->
              <div class="login_id_pwd">
                 <div class="login_id">
                  <span>아이디 : </span><input type="id" placeholder="아이디를 입력해주세요...">
                 </div>
                 <div class="login_pwd">
                  <span>비밀번호 : </span><input type="password" placeholder="비밀번호를 입력해주세요...">
                 </div>
              </div>
              <!-- 로그인 버튼 -->
              <input type="submit" value="로그인">
              <!-- 로그인 메뉴얼 -->
              <div id="login_menu">
                  <ul>
                      <li><a href="#">회원가입</a></li>
                      <li><a href="#">아이디찾기</a></li>
                      <li><a href="#">비밀번호찾기</a></li>
                  </ul>
              </div>
            </div>
            <!-- 푸터(끝) 영역 -->
            <div id="footer">
            
            </div>
        </div>
    </body>
</html>