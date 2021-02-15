<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="/css/bootstrap-grid.min.css" type="text/css" />
    <link rel="stylesheet" href="/css/bootstrap-reboot.min.css" type="text/css" />
    <link rel="stylesheet" href="/css/bootstrap.min.css" type="text/css" />
    <link rel="stylesheet" href="/css/movie/index.css" type="text/css" />
    <link rel="stylesheet" href="/css/movie/movie_more_info.css" type="text/css" />
</head>

<body>
    <header>
        <div class="wrapper">
            <div class="navbar">
                <div class="navbar_logo">
                    <a href="/서우/main.html"><img id="logo" src="img/original.png"> <!-- 이미지파일 이동 시 경로 확인!-->
                </div> </a>

                <div class="menu">
                    <ul>
                        <li><a href="/서우/About_Us.html">ABOUT US</a></li>
                        <li><a href="/PJW/rating Page.html">평가하기</a></li>
                        <li><a href="/민진/front-end/html/faq_list.html">고객센터</a></li>
                    </ul>
                </div>

                <!--검색창-->
                <div class="searchbar">
                    <form action="#">
                        <div class="search_box">
                            <div class="icon"><i class="fas fa-search"></i>
                                <input type="text" value="" placeholder=" 작품 제목, 배우,감독을 검색해보세요.">
                                <button class="search_btn" type="submit"> <i class="fas fa-times"></i>
                                </button>
                            </div>
                        </div>
                    </form>
                </div>

                <div class="menu">
                    <ul>
                        <li><a href="/윤지/login.html">로그인</a></li>
                        <li><a href="/윤지/signup.html">회원가입</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </header>
    <div id="main-container">
        <div>
            <button id="back-button" onclick="location.href='movie_detail.html'">←</button>
        </div>
        <div class="title">기본 정보</div>
        <div id="table-zone">
            <table>
                <tr>
                    <th>원제</th>
                    <td>Soul</td>
                </tr>
                <tr>
                    <th>제작 연도</th>
                    <td>2020</td>
                </tr>
                <tr>
                    <th>국가</th>
                    <td>미국</td>
                </tr>
                <tr>
                    <th>장르</th>
                    <td>애니메이션/모험/가족/SF/판타지/코미디</td>
                </tr>
                <tr>
                    <th>관람 등급</th>
                    <td>전체 관람가</td>
                </tr>
                <tr>
                    <th>상영 시간</th>
                    <td>1시간 40분</td>
                </tr>
                <tr>
                    <th class="plot-title">내용</th>
                    <td class="plot-title"></td>
                </tr>
            </table>
            <div id="plot">
                <p>나는 어떻게 ‘나’로 태어나게 되었을까? 지구에 오기 전 영혼들이 머무는 ‘태어나기 전 세상’이 있다면?</p>
                <p>뉴욕에서 음악 선생님으로 일하던 ‘조’는 꿈에 그리던 최고의 밴드와 재즈 클럽에서 연주하게 된 그 날, 예기치 못한 사고로 영혼이 되어 ‘태어나기 전 세상’에
                    떨어진다. 탄생
                    전 영혼들이 멘토와 함께 자신의 관심사를 발견하면 지구 통행증을 발급하는 ‘태어나기 전 세상’. ‘조’는 그 곳에서 유일하게 지구에 가고 싶어하지 않는 시니컬한 영혼
                    ‘22’의 멘토가 된다.
                </p>
                <p>링컨, 간디, 테레사 수녀도 멘토되길 포기한 영혼 ‘22’. 꿈의 무대에 서려면 ‘22’의 지구 통행증이 필요한 ‘조’. 그는 다시 지구로 돌아가 꿈의 무대에 설 수
                    있을까?</p>
            </div>
        </div>
    </div>

    <!-- 여기부터 footer-->
    <footer>
        <div class="row-space">

            <section class="count_space">
                <span class="count">지금까지<em> ★ 123,534,545 개의 평가가 </em> 쌓였어요.</span>
            </section>

            <section class="container">

                <div class="footer_box">
                    <ul class="footer_list_box">
                        <li>서비스 이용약관 | 개인정보 처리방침 | 회사안내</li>
                        <span class="box_space">
                            <li>고객센터 | cs@eutcharpedia.com, 02-123-4567</li>
                            <li>제휴 및 대외 협력 | contact@eutcha.com</li>
                        </span>
                        <li>주식회사 읏챠 | 대표 이지현 | 서울특별시 영등포구 선유동2로 57 이레빌딩(구관) 19F,20F</li>
                        <li>사업자 등록번호 211-12-34567</li>
                        <li>© 2021 by EUTCHA, Inc. All right reserved</li>
                    </ul>
                </div>

                <div class="social_container">
                    <div class="social_icons">
                        <span><a href="#"><i class="fab fa-instagram"></i></a></span>
                        <span><a href="#"><i class="fab fa-facebook-f"></i></a></span>
                        <span><a href="#"><i class="fab fa-twitter"></i></a></span>
                    </div>
                </div>

            </section>
        </div>
    </footer>
</body>

</html>