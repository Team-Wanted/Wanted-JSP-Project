<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page import="java.util.*"%>
<%@ page import="com.sharecampus.curriculum.vo.*"%>
<%
List<CurriculumVO> list = (List<CurriculumVO>) request.getAttribute("list");

if (list == null || list.size() == 0) {
%>
<script>
	alert("해당 정보가 삭제되었거나 존재하지 않습니다.");
	history.back();
</script>
<%
return;
}
%>
<%
CurriculumVO cvo = list.get(0);
int curri_num = cvo.getCurri_num();
int member_num = cvo.getMember_num();
String curri_title = cvo.getCurri_title();
String curri_uni_dert = cvo.getCurri_uni_dert();
String curri_field = cvo.getCurri_field();
String curri_division = cvo.getCurri_division();
int curri_credits = cvo.getCurri_credits();
String curri_grade = cvo.getCurri_grade();
String curri_professor = cvo.getCurri_professor();
int curri_satisfaction_rating = cvo.getCurri_satisfaction_rating();
int curri_exam_rating = cvo.getCurri_exam_rating();
int curri_assignment_rating = cvo.getCurri_assignment_rating();
int curri_professor_rating = cvo.getCurri_professor_rating();
String curri_contents = cvo.getCurri_contents();
%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>글 상세 페이지</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<link href="../main/main.css" rel="stylesheet">
<link href="../main/modal.css" rel="stylesheet">
<link href="../curriculum/curriculum_detail.css" rel="stylesheet">
</head>
<body>
	<div>
		<!-- header start -->
		<header class="Header">
			<nav>
				<div class="logo">
					<a href="../main/index.html">로고</a>
				</div>
				<ul class="Navbar">
					<li><a href="#">커리큘럼</a></li>
					<li><a href="../Study/studyMain.html">스터디</a></li>
					<li><a href="../activity/activity.html">대외활동</a></li>
					<li><a href="../community/community.html">커뮤니티</a></li>
				</ul>
				<div class="loginWrap">
					<div class="searchWrap">
						<a class="searchIc" href="../main/search.html"> <span>검색</span>
							<img src="https://letspl.me/assets/images/ic-search-white.png">
						</a>
					</div>
					<div class="joinAndLoginWrap">
						<a class="joinAndLogin">가입</a> <a class="joinAndLogin">로그인</a>
					</div>
				</div>
			</nav>
		</header>
		<!-- header end -->
		<!-- main start -->
		<main>
		<button type="button" onclick="chkDelete(<%=curri_num%>)">삭제하기</button>
	<button type="button" onclick="location.href='curriculum/curriculum.do'">목록으로</button>
	<button type="button" onclick="location.href='update.do?curri_num=<%=curri_num%>'">수정하기</button>
	<button type="button" onclick="location.href='curriculum/curriculum_regist.do'">신규등록</button>
    
    
			<section class="curriculumDetailSection">
				<div class="curriculum_top">
					<div>
						<div class="curriculumDetailHeader">
							<h2><%=curri_title%></h2>
						</div>
						<div>
							<ul class="class_detail_top">
								<li>교과목 구분 <span class="class_division"><%=curri_division%></span></li>
								<li>이수학점<span class="class_credit"><%=curri_credits%></span></li>
								<li>이수학년<span class="class_grade"><%=curri_grade%></span></li>
								<li>교수명<span class="class_prof"><%=curri_professor%></span></li>
							</ul>
						</div>
						<div class="All_ratings">
							<ul>
								<li>
									<h3>수업만족도</h3> <span class="rank-mark checked"></span> <span
									class="rank-mark checked"></span> <span
									class="rank-mark checked"></span> <span
									class="rank-mark checked"></span> <span class="rank-mark"></span>
								</li>
								<li>
									<h3>시험난이도</h3> <span class="rank-mark checked"></span> <span
									class="rank-mark checked"></span> <span
									class="rank-mark checked"></span> <span
									class="rank-mark checked"></span> <span class="rank-mark"></span>
								</li>
								<li>
									<h3>과제난이도</h3> <span class="rank-mark checked"></span> <span
									class="rank-mark checked"></span> <span
									class="rank-mark checked"></span> <span
									class="rank-mark checked"></span> <span class="rank-mark"></span>
								</li>
								<li>
									<h3>교수만족도</h3> <span class="rank-mark checked"></span> <span
									class="rank-mark checked"></span> <span
									class="rank-mark checked"></span> <span
									class="rank-mark checked"></span> <span class="rank-mark"></span>
								</li>
							</ul>
						</div>
					</div>
				</div>
				<!-- <hr> -->
				<div>
					<div class="curri_main_contents">
						<p>교수님이 정말 친절하시고 학생들 편으도 많이 봐주십니다.</p>
						<p>일찍 끝내주시고 목소리가 나긋나긋하셔서 살짝 졸리지만 설명도 잘 해주십니다.</p>
						<p>비대면일때는 온라인 강의 올려주시고 줌 수업도 하시는데 줌 수업은 출결 반영 안하니까</p>
						<p>들어오기 슾은 사람만 들어오라고 하십니다.</p>
						<p>근데 전 한번도 안빠지고 들어갔어요. 줌 수업에서 중요한 포인트 같은거 알려주시기 때문에</p>
						<p>학점 잘 받고싶으면 듣는게 좋을거에요!</p>
						<p>제가 물리는 처음이라 중간고사 50점, 기말고사는 한문제밖에 못풀었는데도 B+ 받았습니다.</p>
						<p>과제는 전혀 없으세용 개인적으로 만족하면서 수업들었습니다!</p>
						<br>
						<p>교수님이 정말 친절하시고 학생들 편으도 많이 봐주십니다.</p>
						<p>일찍 끝내주시고 목소리가 나긋나긋하셔서 살짝 졸리지만 설명도 잘 해주십니다.</p>
						<p>비대면일때는 온라인 강의 올려주시고 줌 수업도 하시는데 줌 수업은 출결 반영 안하니까</p>
						<p>들어오기 슾은 사람만 들어오라고 하십니다.</p>
						<p>근데 전 한번도 안빠지고 들어갔어요. 줌 수업에서 중요한 포인트 같은거 알려주시기 때문에</p>
						<p>학점 잘 받고싶으면 듣는게 좋을거에요!</p>
						<p>제가 물리는 처음이라 중간고사 50점, 기말고사는 한문제밖에 못풀었는데도 B+ 받았습니다.</p>
						<p>과제는 전혀 없으세용 개인적으로 만족하면서 수업들었습니다!</p>
						<br> <img
							src="https://yslib.sen.go.kr/data/flexer//board/997/976101//201804271550_DUcHyLd.pdf.files//00001.png">
						<p>교수님이 정말 친절하시고 학생들 편으도 많이 봐주십니다.</p>
						<p>일찍 끝내주시고 목소리가 나긋나긋하셔서 살짝 졸리지만 설명도 잘 해주십니다.</p>
						<p>비대면일때는 온라인 강의 올려주시고 줌 수업도 하시는데 줌 수업은 출결 반영 안하니까</p>
						<p>들어오기 슾은 사람만 들어오라고 하십니다.</p>
						<p>근데 전 한번도 안빠지고 들어갔어요. 줌 수업에서 중요한 포인트 같은거 알려주시기 때문에</p>
						<p>학점 잘 받고싶으면 듣는게 좋을거에요!</p>
						<p>제가 물리는 처음이라 중간고사 50점, 기말고사는 한문제밖에 못풀었는데도 B+ 받았습니다.</p>
						<p>과제는 전혀 없으세용 개인적으로 만족하면서 수업들었습니다!</p>
					</div>
				</div>
				<!-- <div class="crri_info">
                    <img src="https://d1qzykz9iz00c7.cloudfront.net/static/logo/logo_c290.jpg" class="university-logo ls-is-cached lazyloaded">
                    <div class="info-category">
                        <p class="univer_name td-text-style">대구보건대학교</p>
                        <p class="user_name td-text-style">홍길동</p>
                    </div>
                </div> -->
				<div class="curri_reply_area">
					<div></div>
					<form>
						<textarea class="textarea" cols="30" rows="1" maxwidth="600"
							placeholder="댓글을 등록하세요."></textarea>
						<button class="curri_reply_apply">등록</button>
					</form>
				</div>
			</section>
		</main>
		<!-- main end -->
		<!-- footer start -->
		<footer class="Footer">
			<div class="footerContent">
				<div class="top">
					<div class="left">
						<div class="logoWrap">
							<a>로고</a>
						</div>
						<ul>
							<li><span>1:1 문의</span> <a href="" target="_blank">운영자
									1:1 카카오챗</a></li>
							<li><span>오픈 챗</span> <a href="" target="_blank">&nbsp;&nbsp;코드
									2580</a></li>
							<li><span>제휴문의</span> <a href="" target="_blank">help@letspl.me</a>
							</li>
						</ul>
					</div>
					<div class="right">
						<ul>
							<li class="tit">바로가기</li>
							<li><a href="">렛플인</a></li>
							<li><a href="">프로젝트</a></li>
							<li><a href="">스토리</a></li>
							<li><a href="">라운지</a></li>
						</ul>
						<ul>
							<li class="tit">이용안내</li>
							<li><a href="">공지사항</a></li>
							<li><a href="">Q&A</a></li>
						</ul>
						<ul>
							<li class="tit">관련사이트</li>
							<li><a href="">네이버 블로그</a></li>
							<li><a href="">티스토리 블로그</a></li>
							<li><a href="">인스타그램</a></li>
							<li><a href="">Velog</a></li>
							<li><a href="">Medium</a></li>
						</ul>
						<ul>
							<li class="tit">서비스약관</li>
							<li><a href="">서비스 이용약관</a></li>
							<li><a href="">개인정보취급방침</a></li>
							<li><a href="">전자금융거래약관</a></li>
							<li><a href="">결제/환불약관</a></li>
						</ul>
					</div>
				</div>
			</div>
			<div class="footerContentBottom">
				<div class="wrap">
					<div class="left">
						<ul>
							<li>어썸크루</li>
							<li>사업등록번호 : 619-39-00615</li>
							<li>대표 : 이승준</li>
							<li>통신판매신고번호 : 제 2020-서울마포-1796호</li>
							<li>주소 : 서울특별시 마포구 신수동 22-35 하나테크노빌 1002호</li>
							<li>TEL : 070.8064.3497</li>
							<li>개인정보담당자 : 이승준 help@letspl.me</li>
						</ul>
						<p>Copyright ⓒ 2022 LETSPL. All rights reserved.</p>
					</div>
					<div class="right">
						<div class="appLinkWrap">
							<ul>
								<li><a href="" target="_blank"> <img loading="lazy"
										src="https://letspl.me/assets/images/googlePlayBadge.svg"
										alt="렛플 안드로이드앱 다운로드">
								</a></li>
								<li><a href="https://apps.apple.com/kr/app/id1595017110"
									target="_blank"> <img loading="lazy"
										src="https://letspl.me/assets/images/applestorBadge.svg"
										alt="렛플 아이폰앱 다운로드">
								</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</footer>
		<!-- footer end -->
	</div>
</body>
<script src="../main/modal.js"></script>
<script src="https://kit.fontawesome.com/d25c7e6490.js"
	crossorigin="anonymous"></script>
	<script>
    function chkDelete(curri_num) {
    	let r = confirm("삭제하시겠습니까?");
        if (r) {
        	location.href = "deleteOk.do?curri_num=" + curri_num;
        }
    }
    </script>
</html>