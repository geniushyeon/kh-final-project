<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="shortcut icon" href="/img/logo_favicon.ico">
    <link rel="stylesheet" href="/css/movie/index.css" type="text/css" />
    <link rel="stylesheet" href="/css/movie/staff_detail.css" type="text/css" />
    <link rel="stylesheet" href="/css/bootstrap-grid.min.css" type="text/css" />
    <link rel="stylesheet" href="/css/bootstrap-reboot.min.css" type="text/css" />
    <link rel="stylesheet" href="/css/bootstrap.min.css" type="text/css" />
    <!--icon-->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css">
</head>

<body>
    <header>
        <div class="wrapper">
            <div class="navbar">
                <div class="navbar_logo">
                  <a href="#"><img id="logo" src="/img/original.png"> <!-- 이미지파일 이동 시 경로 확인!-->
               </div> </a>
    
                <div class="menu">
                  <ul>
                     <li><a href="#">ABOUT US</a></li>
                     <li><a href="#">평가하기</a></li>
                     <li><a href="#">고객센터</a></li>
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
                      <li><a href="#">로그인</a></li>
                      <li><a href="#">회원가입</a></li>
                    </ul>
                </div>
            </div>
        </div>
       </header>
    <div id="main-container">
        <div>
            <button id="back-button" onclick="location.href='movie_detail.html'">←</button>
        </div>
        <div id="staff-info-wrapper">
            <img src="/img/movie/profile.svg">
            <div id="staff-name-and-role">
                <h4>피트 닥터</h4>
                <div>감독</div>
            </div>
        </div>

        <div id="movie-info-wrapper">
            <div class="movie-info">
                <a href="movie_detail.html">
                    <img src="/img/movie/220px-영화_소울.jpg" alt="">
                    <div>소울</div>
                    <div>2020</div>
                </a>
            </div>
            <div class="movie-info">
                <a href="movie_detail.html">
                    <img src="/img/movie/220px-영화_소울.jpg" alt="">
                    <div>소울</div>
                    <div>2020</div>
                </a>
            </div>
            <div class="movie-info">
                <a href="movie_detail.html">
                    <img src="/img/movie/220px-영화_소울.jpg" alt="">
                    <div>소울</div>
                    <div>2020</div>
                </a>
            </div>
            <div class="movie-info">
                <a href="movie_detail.html">
                    <img src="/img/movie/220px-영화_소울.jpg" alt="">
                    <div>소울</div>
                    <div>2020</div>
                </a>
            </div>
            <div class="movie-info">
                <a href="movie_detail.html">
                    <img src="/img/movie/220px-영화_소울.jpg" alt="">
                    <div>소울</div>
                    <div>2020</div>
                </a>
            </div>
            <div class="movie-info">
                <a href="movie_detail.html">
                    <img src="/img/movie/220px-영화_소울.jpg" alt="">
                    <div>소울</div>
                    <div>2020</div>
                </a>
            </div>
            <div class="movie-info">
                <a href="movie_detail.html">
                    <img src="/img/movie/220px-영화_소울.jpg" alt="">
                    <div>소울</div>
                    <div>2020</div>
                </a>
            </div>
            <div class="movie-info">
                <a href="movie_detail.html">
                    <img src="/img/movie/220px-영화_소울.jpg" alt="">
                    <div>소울</div>
                    <div>2020</div>
                </a>
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