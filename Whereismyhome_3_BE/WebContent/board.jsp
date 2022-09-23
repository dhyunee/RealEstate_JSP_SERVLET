<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import = "Dto.*"  %>
<%
  String contextPath = request.getContextPath();
  UserDto userDto = (UserDto) session.getAttribute("userDto");
 %>
<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="Template Mo">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
<link
	href="https://fonts.googleapis.com/css?family=Poppins:100,200,300,400,500,600,700,800,900"
	rel="stylesheet">

<title>공지사항</title>

<!-- Bootstrap core CSS -->
<link href="./vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
<!-- alertify-->

<!-- JavaScript -->
<script src="//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/alertify.min.js"></script>

<!-- CSS -->
<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/css/alertify.min.css"/>
<!-- Default theme -->
<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/css/themes/default.min.css"/>
<!-- Semantic UI theme -->
<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/css/themes/semantic.min.css"/>
<!-- Bootstrap theme -->
<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/css/themes/bootstrap.min.css"/>

<!-- 
    RTL version
-->
<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/css/alertify.rtl.min.css"/>
<!-- Default theme -->
<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/css/themes/default.rtl.min.css"/>
<!-- Semantic UI theme -->
<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/css/themes/semantic.rtl.min.css"/>
<!-- Bootstrap theme -->
<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/css/themes/bootstrap.rtl.min.css"/>
<!-- Additional CSS Files -->
<link rel="stylesheet" href="./assets/css/fontawesome.css">
<link rel="stylesheet" href="./assets/css/templatemo-edu-meeting.css">
<link rel="stylesheet" href="./assets/css/owl.css">
<link rel="stylesheet" href="./assets/css/lightbox.css">
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
<!--

TemplateMo 569 Edu Meeting

https://templatemo.com/tm-569-edu-meeting

-->
</head>

<body>
	<!-- Sub Header -->
	<div class="sub-header">
		<div class="container">
			<div class="row">
				<div class="col-lg-8 col-sm-8">
					<div class="left-content"></div>
				</div>
				<div class="col-lg-4 col-sm-4">
					<div class="right-icons">
						<ul>
							<li><a href="./register.html"
								style="font-size: 15px; font-family: 'IBM Plex Sans KR', sans-serif;">회원가입</a></li>
							<li><a href="./login.html"
								style="font-size: 15px; font-family: 'IBM Plex Sans KR', sans-serif;">로그인</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- ***** Header Area Start ***** -->
	<header class="header-area header-sticky">
		<div class="container">
			<div class="row">
				<div class="col-12">
					<nav class="main-nav">
						<!-- ***** Logo Start ***** -->

						<a href="index.jsp" class="logo"> <i class="logo"> <img
								src="./assets/images/homesicon.png" class="logohome"
								style="width: 60px; margin-right: 15px;"></i> 구해줘 HOME!
						</a>
						<!-- ***** Logo End ***** -->
						<!-- ***** Menu Start ***** -->
						<ul class="nav">
							<li class><a href="news.jsp"
								style="font-size: 25px; font-family: 'IBM Plex Sans KR', sans-serif;">오늘의
									뉴스</a></li>
							<li class="scroll-to-section"><a href="#contact"
								style="font-size: 30px;" class="active">Contact Us</a></li>
						</ul>
						<a class='menu-trigger'> <span>Menu</span>
						</a>
						<!-- ***** Menu End ***** -->
					</nav>
				</div>
			</div>
		</div>
	</header>
	<!-- ***** Header Area End ***** -->

	<section class="heading-page header-text" id="top">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<h2 style="font-size: 100px;">공지사항</h2>
				</div>
			</div>
		</div>
	</section>

	<section class="meetings-page" id="meetings">
		<div class="container">
			<div class="meeting-single-item">
				<div class="down-content">
					<div class="row">
						<div class="col-lg-4" style="width: 1200px;">
							<table class="table table-hover" id="noteTable"
								>
								<thead>
									<tr>
										<th scope="col"style="width: 10%;">순서</th>
										<th scope="col" style="width: 90%;">제목</th>
									</tr>
								</thead>
								<tbody class="table-group-divider">
									<tr>
									<!-- Tbody 게시물 넣는 곳 -->
									<tbody id="boardTbody">   
										<th scope="row">1</th>
										<td style="text-align: center;">처음 오신 분들 반갑습니다.</td>
									</tr>
								</tbody>
							</table>
						</div>
            <ul>
            <button type="button" class="btn btn-outline-dark" id = "btnposting">글 작성하기</button>
          </ul>
						<nav aria-label="Page navigation example">
							<ul class="pagination">
								<ul class="list-inline">
									<li class="page-item"><a class="page-link" href="#"
										aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
									</a></li>
									<li class="page-item"><a class="page-link" href="#">1</a></li>
									<li class="page-item"><a class="page-link" href="#">2</a></li>
									<li class="page-item"><a class="page-link" href="#">3</a></li>
									<li class="page-item"><a class="page-link" href="#"
										aria-label="Next"> <span aria-hidden="true">&raquo;</span>
									</a></li>
								</ul>
							</ul>
						</nav>
					</div>
				</div>
			</div>
		</div>
    <div class="modal fade" id="boardInsertModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
      <div class="modal-dialog modal-lg">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title" id="exampleModalLabel">글 쓰기</h5>
            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
          </div>
          <div class="modal-body">            
              <div class="mb-3">
                  <label for="titleInsert" class="form-label">제목</label>
                  <input type="text" class="form-control" id="titleInsert">
                </div>
                <div class="mb-3">
                  <label for="contentInsert" class="form-label">내용</label>
                  <textarea class="form-control" id="contentInsert" rows="10"></textarea>
                </div>
                <button id="btnBoardInsert" type="button" class="btn btn-sm btn-primary float-end">등록</button>
          </div>            
        </div>
      </div>
    </div>
<script>
  window.onload = function(){
    // 게시 버튼
    document.querySelector("#btnposting").onclick=function(){
      document.querySelector("#titleInsert").value = "";
    			document.querySelector("#contentInsert").value = "";
    			
    			let modal = new bootstrap.Modal(
    					document.querySelector("#boardInsertModal")
    			);
    			
    			modal.show();
    }
    // 게시물 등록
    document.querySelector("#btnBoardInsert").onclick = function(){
    			boardInsert();
        }
  }
  async function boardInsert(){
        	  let title = document.querySelector("#titleInsert").value;
            let content = document.querySelector("#contentInsert").value;

            // parameter 
            let urlParams = new URLSearchParams({
              title: title,
              content: content
            });
            // fetch options
            let fetchOptions = {
              method: "POST",
              body: urlParams
            }

            let url = "<%= contextPath%>/board/boardInsert";
            try{
                let response = await fetch( url, fetchOptions);
                let data = await response.json(); 
                if( data.result == "success"){
                  alertify.success('글이 등록되었습니다.');
                  boardList();
                }else if( data.result == "fail"){
              	  alertify.error('글 등록 과정에서 오류가 발생했습니다.');
                }            	
            }catch(error){
            	alertify.error('글 등록 과정에서 오류가 발생했습니다.');
            }

        }


</script>

		<div class="footer">
			<h1 style="color: white; font-size: 25px;">FIND US</h1>
			<p>
				<br> <a href="https://www.ssafy.com/"
					style="color: white; margin-right: 10px;">(SSAFY)삼성청년SW아카데미
					부울경캠퍼스</a> <a id = "LinkForCall" href="javascript:ContactCall();"
					target="_parent" title="free css templates"> 문의하기</a> <br>
				1544-9001 <br> admin@ssafy.com
			</p>
		</div>
    <div class="modal fade" id="ContactModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
      <div class="modal-dialog">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title" id="exampleModalLabel">문의하기</h5>
            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
          </div>
          <div class="modal-body">
            <form>
              <div class="mb-3">
                <label for="recipient-name" class="col-form-label">문의 사항:</label>
                <input type="text" class="form-control" id="recipient-name">
              </div>
              <div class="mb-3">
                <label for="message-text" class="col-form-label">문의 내용:</label>
                <textarea class="form-control" id="message-text"></textarea>
              </div>
            </form>
          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">닫기</button>
            <button type="button" class="btn btn-primary">전송하기</button>
          </div>
        </div>
      </div>
    </div>
	</section>
  <script>
   function ContactCall(){
        let modal = new bootstrap.Modal(
    					document.querySelector("#ContactModal")
    			);
          modal.show();
      }
    
  </script>
	<style>
.meeting-single-item {
	width: auto;
}
</style>


	<!-- Scripts -->
	<!-- Bootstrap core JavaScript -->
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

	<script src="./assets/js/isotope.min.js"></script>
	<script src="./assets/js/owl-carousel.js"></script>
	<script src="./assets/js/lightbox.js"></script>
	<script src="./assets/js/tabs.js"></script>
	<script src="./assets/js/video.js"></script>
	<script src="./assets/js/slick-slider.js"></script>
	<script src="./assets/js/custom.js"></script>
	<script>
        //according to loftblog tut
        $('.nav li:first').addClass('active');

        var showSection = function showSection(section, isAnimate) {
          var
          direction = section.replace(/#/, ''),
          reqSection = $('.section').filter('[data-section="' + direction + '"]'),
          reqSectionPos = reqSection.offset().top - 0;

          if (isAnimate) {
            $('body, html').animate({
              scrollTop: reqSectionPos },
            800);
          } else {
            $('body, html').scrollTop(reqSectionPos);
          }

        };

        var checkSection = function checkSection() {
          $('.section').each(function () {
            var
            $this = $(this),
            topEdge = $this.offset().top - 80,
            bottomEdge = topEdge + $this.height(),
            wScroll = $(window).scrollTop();
            if (topEdge < wScroll && bottomEdge > wScroll) {
              var
              currentId = $this.data('section'),
              reqLink = $('a').filter('[href*=\\#' + currentId + ']');
              reqLink.closest('li').addClass('active').
              siblings().removeClass('active');
            }
          });
        };

        $('.main-menu, .responsive-menu, .scroll-to-section').on('click', 'a', function (e) {
          e.preventDefault();
          showSection($(this).attr('href'), true);
        });

        $(window).scroll(function () {
          checkSection();
        });
    </script>
</body>


</body>

</html>