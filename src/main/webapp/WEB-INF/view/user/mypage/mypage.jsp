<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link rel="stylesheet" href="/LMY/front-end/css/bootstrap-grid.min.css">
    <link rel="stylesheet" href="/LMY/front-end/css/bootstrap-reboot.min.css">
    <link rel="stylesheet" href="/LMY/front-end/css/bootstrap.min.css">
    <link rel="shortcut icon" href="/LMY/front-end/img/logo_favicon.ico"> <!--favicon-->
    <link rel="icon" href="/LMY/front-end/img/logo_favicon.ico">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css"> <!--icon-->
    <link rel="stylesheet" href="/LMY/front-end/css/mypagenew.css">
    <link rel="stylesheet" href="/LMY/front-end/css/indexnew.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous"> <!-- 차트 링크 --> 
    <script src="https://cdn.jsdelivr.net/npm/chart.js@2.8.0"></script> 
    <title>EUTCHAPEDIA</title>
</head>

<body>
    <header>
        <div class="wrapper">
            <div class="navbar">
                <div class="navbar_logo">
                  <a href="#"><img id="logo" src="img/original.png"> <!-- 이미지파일 이동 시 경로 확인!-->
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
        
        
    <h3 class="main-title">
        <div class='title-div'>
         마이페이지
         <svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor" class="bi bi-bookmark-heart" viewBox="0 0 16 16">
             <path fill-rule="evenodd" d="M8 4.41c1.387-1.425 4.854 1.07 0 4.277C3.146 5.48 6.613 2.986 8 4.412z"/>
             <path d="M2 2a2 2 0 0 1 2-2h8a2 2 0 0 1 2 2v13.5a.5.5 0 0 1-.777.416L8 13.101l-5.223 2.815A.5.5 0 0 1 2 15.5V2zm2-1a1 1 0 0 0-1 1v12.566l4.723-2.482a.5.5 0 0 1 .554 0L13 14.566V2a1 1 0 0 0-1-1H4z"/>
           </svg>
         </div>
     </h3>  
    <div class="mybody-wrapper">
        <div class="mybody">
            <div class="left">
                
                <div id='profileimg'>    
                    <img src='/LMY/front-end/img/emoji.PNG' width="200px"; height="250px">
                </div>
                <h2>겨울왕국</h2>

                <p class="info-title">───Introduce───</p>
                <div class="info">
                <p class="info-text">
                    영화평론가 이동진입니다 / 1980년 이전 영화는 별점을 매기지 않습니다 / 가장 낮은 별점은 한개입니다
                </p>
                    

                </div>

      

                <div class="sidebar">

                    <div class='sidebar-menu'>
                        <a href="#">코멘트 관리
                            <svg xmlns="http://www.w3.org/2000/svg" width="25" height="25" fill="currentColor" class="bi bi-chat-dots" viewBox="0 0 16 16">
                                <path d="M5 8a1 1 0 1 1-2 0 1 1 0 0 1 2 0zm4 0a1 1 0 1 1-2 0 1 1 0 0 1 2 0zm3 1a1 1 0 1 0 0-2 1 1 0 0 0 0 2z"/>
                                <path d="M2.165 15.803l.02-.004c1.83-.363 2.948-.842 3.468-1.105A9.06 9.06 0 0 0 8 15c4.418 0 8-3.134 8-7s-3.582-7-8-7-8 3.134-8 7c0 1.76.743 3.37 1.97 4.6a10.437 10.437 0 0 1-.524 2.318l-.003.011a10.722 10.722 0 0 1-.244.637c-.079.186.074.394.273.362a21.673 21.673 0 0 0 .693-.125zm.8-3.108a1 1 0 0 0-.287-.801C1.618 10.83 1 9.468 1 8c0-3.192 3.004-6 7-6s7 2.808 7 6c0 3.193-3.004 6-7 6a8.06 8.06 0 0 1-2.088-.272 1 1 0 0 0-.711.074c-.387.196-1.24.57-2.634.893a10.97 10.97 0 0 0 .398-2z"/>
                            </svg>
                        </a>
                    </div>
                    <p></p>

                    <div  class='sidebar-menu'>
                        <a href="#">나의 문의
                            <svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor" class="bi bi-pencil" viewBox="0 0 16 16">
                                <path d="M12.146.146a.5.5 0 0 1 .708 0l3 3a.5.5 0 0 1 0 .708l-10 10a.5.5 0 0 1-.168.11l-5 2a.5.5 0 0 1-.65-.65l2-5a.5.5 0 0 1 .11-.168l10-10zM11.207 2.5L13.5 4.793 14.793 3.5 12.5 1.207 11.207 2.5zm1.586 3L10.5 3.207 4 9.707V10h.5a.5.5 0 0 1 .5.5v.5h.5a.5.5 0 0 1 .5.5v.5h.293l6.5-6.5zm-9.761 5.175l-.106.106-1.528 3.821 3.821-1.528.106-.106A.5.5 0 0 1 5 12.5V12h-.5a.5.5 0 0 1-.5-.5V11h-.5a.5.5 0 0 1-.468-.325z"/>
                            </svg>
                        </a>
                    </div>

                    <p></p>
                    <p></p>

                    <div  class='sidebar-menu'>
                        <a href="/LMY/front-end/mypage_editprofile.html">정보 수정
                            <svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor" class="bi bi-person-check" viewBox="0 0 16 16">
                                <path d="M6 8a3 3 0 1 0 0-6 3 3 0 0 0 0 6zm2-3a2 2 0 1 1-4 0 2 2 0 0 1 4 0zm4 8c0 1-1 1-1 1H1s-1 0-1-1 1-4 6-4 6 3 6 4zm-1-.004c-.001-.246-.154-.986-.832-1.664C9.516 10.68 8.289 10 6 10c-2.29 0-3.516.68-4.168 1.332-.678.678-.83 1.418-.832 1.664h10z"/>
                                <path fill-rule="evenodd" d="M15.854 5.146a.5.5 0 0 1 0 .708l-3 3a.5.5 0 0 1-.708 0l-1.5-1.5a.5.5 0 0 1 .708-.708L12.5 7.793l2.646-2.647a.5.5 0 0 1 .708 0z"/>
                            </svg>
                        </a>
                    </div>

                </div>
            </div>
            
            <div class="center">
                <div class="center1">
                    <p></p>
                    <h4>영화</h4>
                    <span class='sub-title'>보고싶어요</span><span class='starcount'> 156 </span>
                    <!-- center1박스 부분 디브 시작!!! -->
                    <a href='/LMY/front-end/mypage_iwantosee.html'> <!-- 보고싶어요 링크 이동 -->
                    <div class='center1-box'>
                        <div class='center-box-img'><img src="/LMY/front-end/img/포스터11.PNG" width="125px"; height="150px" alt="포스터없음"></div>
                        <div class='center-box-img'><img src="/LMY/front-end/img/포스터16.PNG" width="125px"; height="150px" alt="포스터없음"></div>
                        <div class='center-box-img'><img src="/LMY/front-end/img/포스터2.PNG" width="125px"; height="150px" alt="포스터없음"></div>
                        <div class='center-box-img'><img src="/LMY/front-end/img/포스터15.PNG" width="125px"; height="150px" alt="포스터없음"></div>
                        <div class='center-box-img'><img src="/LMY/front-end/img/포스터10.PNG" width="125px"; height="150px" alt="포스터없음"></div>
                        <div class='center-box-img'><img src="/LMY/front-end/img/포스터17.PNG" width="125px"; height="150px" alt="포스터없음"></div>
                        <div class='center-box-img'><img src="/LMY/front-end/img/포스터6.PNG" width="125px"; height="150px" alt="포스터없음"></div>
                        <div class='center-box-img'><img src="/LMY/front-end/img/포스터7.PNG" width="125px"; height="150px" alt="포스터없음"></div>
                    </div>
                    </a>
                    <!-- center1박스 부분 디브 끝!!! -->
                </div>

                <div class="center2">
                    <span class='sub-title'>평가한 작품</span><span class='starcount'> 251 </span>
                    <!-- center2박스 부분 디브 시작!!! -->
                    <a href='/LMY/front-end/mypage_ratedmoviesfinal.html'> <!-- 평가한작품 링크 이동 -->
                    <div class='center2-box'>
                        <div class='center-box-img'><img src="/LMY/front-end/img/포스터8.PNG" width="125px"; height="150px" alt="포스터없음"></div>
                        <div class='center-box-img'><img src="/LMY/front-end/img/포스터9.PNG" width="125px"; height="150px" alt="포스터없음"></div>
                        <div class='center-box-img'><img src="/LMY/front-end/img/포스터10.PNG" width="125px"; height="150px" alt="포스터없음"></div>
                        <div class='center-box-img'><img src="/LMY/front-end/img/포스터18.PNG" width="125px"; height="150px" alt="포스터없음"></div>
                        <div class='center-box-img'><img src="/LMY/front-end/img/포스터12.PNG" width="125px"; height="150px" alt="포스터없음"></div>
                        <div class='center-box-img'><img src="/LMY/front-end/img/포스터3.PNG" width="125px"; height="150px" alt="포스터없음"></div>
                        <div class='center-box-img'><img src="/LMY/front-end/img/포스터14.PNG" width="125px"; height="150px" alt="포스터없음"></div>
                        <div class='center-box-img'><img src="/LMY/front-end/img/포스터19.PNG" width="125px"; height="150px" alt="포스터없음"></div>
                    </div>
                     </a>
                    <!-- center2박스 부분 디브 끝!!! -->
                </div>
            </div>

            <div class="right">
                
                <div class="right1">
                    <p></p>
                    <h4>취향 분석</h4>
                    <h6>별점 분포</h6>
                    <p></p>
                    <div class='right1-box'>
                      <canvas id="myChart"></canvas> 
                    </div>
                    <div class="right1-box-text">
                      <p >3.9<br>별점평균</p>
                      <p >125<br>별점개수</p>
                      <p >3.5<br>많이 준 별점</p>
                    </div>
                </div>
                <div class="right2">
                    <h6>선호 장르</h6>
                    <div class='right2-box'>
                      <canvas id="myChart2"></canvas>
                    </div>
                </div>
                <div class="right3">
                    <h6>영화 감상 시간</h6>
                    <div class='right3-box'>
                        <h4>47시간 23분</h4>
                        <p>조금 더 평가를 매겨 보세요!</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
   <!------------ footer ------------>

   <footer>

    <section class="count-space">
      <span class="count">지금까지<em> ★ 123,534,545 개의 평가가 </em> 쌓였어요.</span>
    </section>

    <div class="footer-right">
      <div class="social-icons">
        <span><a href="#"><i class="fab fa-instagram"></i></a></span> 
        <span><a href="#"><i class="fab fa-facebook-f"></i></a></span> 
        <span><a href="#"><i class="fab fa-twitter"></i></a></span> 
      </div>
    </div>

    <div class="footer-left">
      <div>
          <a href="#"> 서비스 이용약관</a>
          <a href="#"> 개인정보 처리방침</a>
          <a href="#"> 회사 안내</a>
      </div>

      <div>
        <p>
          고객센터<span> | </span>cs@eutchapedia.com, 02-123-4567 <br/>
          제휴 및 대외 협력<span> | </span>contact@eutcha.com</p>
        <p>
          주식회사 읏챠<span> | </span>대표 이지현<span> | </span>서울특별시 영등포구 선유동2로 57 이레빌딩(구관) 19F,20F<br/>
          사업자 등록 번호 211-12-34567<br/>
          © 2021 by EUTCHA, Inc. All rights reserved.
        </p>
      </div>
    </div>

</footer>
    <!--부트스트랩이 jquery를 사용하고있어 어떠한 js파일보다 상위에 있어야함-->
    <script src="/LMY/front-end/js/jquery.min.js"></script>
    <!--부트스트랩 4버전부터 popper.js가필요함 bundle.min.js에 popper.js가 포함되어있음-->
    <script src="/LMY/front-end/js/bootstrap.bundle.min.js"></script>
    <script src="/LMY/front-end/js/mypage_chart.js"></script>
  </body>
    
</html>