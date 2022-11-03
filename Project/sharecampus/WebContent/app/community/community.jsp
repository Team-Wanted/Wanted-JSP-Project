<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>커뮤니티</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/community/community.css">
<%-- <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/main/modal.css"> --%>
</head>
<body>
	<jsp:include
		page="${pageContext.request.contextPath}/app/fix/header.jsp" />
	<section class="communitySection">
        <div class="community_header">
            <h1>
                <span class="smTxt" style="font-size: 0.9rem;">말해봐요</span>
                <span class="bgTxt">나의 아이디어</span>
            </h1>
        </div>
        <div class="community">
            <div class="communityWrap">
                <div class="communityInputSection">
                    <div class="communityInputWrap">
                        <textarea placeholder="커뮤니티에서 가볍게 이야기를 시작해보세요" rows="2" maxlength="1000" id="textarea" style="border: none" ></textarea>
                        <div class="btnWrap" id="btnWrap">
                            <p class="count" id="count_cnt" >
                                <span>(0/1000)</span>
                                
                            </p>
                            <!-- <button disabled="disabled"></button> -->
                            <button class="grayBtn" >등록</button>
                        </div>
                    </div>
                </div>
                <!-- 피드 시작 -->
                <div class="communityFeedSection">
                    <div class="communityFeedWrap">
                     <div class="communityFeedContentWrap">
                        <div class="top2">
                            <div class="left">
                                <a href="https://letspl.me/people/%EB%82%98%EC%A0%95%ED%98%B8?tab=info">
                                    <div class="profileThumb">
                                        <img loading="lazy" src="/assets/images/community/profile1.jpg" alt="라이언">
                                    </div>
                                </a>
                            </div>
                            <div class="right5">
                                <h2 class="profileName">나정호
                                    <div class="hoverView"></div>
                                </h2>
                                
                                <span>
                                    
                                    
                                    <span>22.10.18 10:15</span>
                                </span>
                            </div>
                        </div>
                        <div class="bottom">
                            <div class="feedContents">
                                <h3>
                                    <textarea style="font-size: 0.875rem;  height: auto;"disabled rows="21" maxlength="1000" class="text">
"차로에서 취향을 이야기하다"

나와 결이 같은 사람과 취향을 공유하고 이야기 나눈다면 그 일상은 분명 특별해질 거예요.
                                        
😯 나와 잘 맞는 사람을 찾지 못해 혼자 끙끙 앓고 계신가요?
😪 여행을 가고 싶은데 시간과 비용의
여유가 없나요?
😟 N잡러가 되고 싶은데 어떻게 시작해야될지 모르겠나요?
😭 차를 샀지만 쓸일이 적거나 유지비가 부담스럽나요?
                                        
📌 모임을 이끌어나갈 차주를
중심으로 취향이 맞는 사람을 연결!
🚩 차주(호스트)가 계획한 컨텐츠와
코스와 함께 공통된 취향 공유!
🚗 자동차의 노는시간을 활용해
인적 네트워크와 부수입까지!
                                        
랜딩페이지를 통해 좀 더 자세히
알고 싶으시다면👇
http://talkdrive.co.kr
                                    </textarea>
                                </h3>
                                <div class="bottom2">
                                    <div href="div.communityReplyTab" class="replyFold" id="replyFold">댓글 열기</div>
                                    <div class="replyFoldRight">
                                        <button class="edit" style="color : #c9c9d9" >수정</button>&nbsp;
                                    ㅣ&nbsp;
                                    <button class="remove_popupBtn" style="color : #c9c9d9">삭제</button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <div class="remove_popup">
                                        <div class="remove_text"><h2>정말삭제하시겠어요?</h2><br>
                                        <p>삭제한 글은 다시 불러올 수 없습니다.</p></div>
                                        <button class="remove_close">
                                            <img src="https://letspl.me/assets/icon/ic-close.svg" alt="">
                                        </button>
                                        <button class="reRemove">
                                            삭제
                                        </button>
                                    </div>
                                    </div>
                                </div>
                                <!-- 숨겨진 댓글 창 -->
                                <div class="communityReplyTab" id="communityReplyTab">
                                    <div class="replyTab">
                                        <div class="tabTop">
                                            <div class="tabLeft"><a href="https://letspl.me/people/%EB%A0%9B%ED%94%8C%EC%9A%B4%EC%98%81%EC%9E%90?tab=info">
                                                <img src="/assets/images/community/let.png" alt="" class="tabImg0">
                                            </a></div>
                                            <div class="tabRight">
                                                <div class="tabProfile">
                                                    <p class="tabProfileName">렛플운영자</p>
                                                    <span class="tabDate">22.10.18 21:53</span>
                                                </div>
                                                <div class="tabTxt">
                                                    <textarea disabled maxlength="500" style="font-size : 0.875rem; height: 125px; " class="tabTextarea">
서비스 출시하시면 웹이나 앱 형태로 나올까요?
지금은 오픈채팅방으로 가기밖에는 안보여서요
출시알림 받기 이런 기능(이메일 등록)이 있는 것 같은데 조금 문구가 헷갈리네요
제대로 등록한게 맞는지 궁금합니다.</textarea>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="replyInput">
                                        <div class="replyProfileThumb">
                                            <img loading="lazy "src="https://letspl.me/assets/images/prof-no-img.png" alt="" class="tabImg">
                                        </div>
                                        <div class="txtInput">
                                            <textarea rows="4" maxlength="500" placeholder="로그인 후 댓글작성이 가능합니다" ></textarea>
                                            <button class="blackBtn" disabled>등록</button>
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </div>
                     </div>
                     </div>
                </div>
                <!-- 피드 시작2 -->
                <div class="communityFeedSection">
                    <div class="communityFeedWrap">
                     <div class="communityFeedContentWrap">
                        <div class="top2">
                            <div class="left">
                                <a href="https://letspl.me/people/%EB%82%98%EC%A0%95%ED%98%B8?tab=info">
                                    <div class="profileThumb">
                                        <img loading="lazy" src="let.png" alt="라이언">
                                    </div>
                                </a>
                            </div>
                            <div class="right5">
                                <h2 class="profileName">렛플운영자
                                    <div class="hoverView"></div>
                                </h2>
                                <span>
                                    22.10.18 10:15
                                </span>
                            </div>
                        </div>
                        <div class="bottom">
                            <div class="feedContents">
                                <h3>
                                    <textarea style="font-size: 0.875rem;  height: auto;"disabled rows="21" maxlength="1000" class="text">
안녕하세요 

토요일 카카오톡이 기능의 문제가 생기면서 
렛플에서 보내고 있는 알림톡이 가지 않고 있는 현상이 발생하고 있습니다.
프로젝트 검수결과나 멤버의 신규 지원 등의 메시지 등이 메일+푸쉬+ 알림톡으로 안내되지만 현재 알림톡이 발송되지 않고 있습니다.
                                        
이는 저희뿐만 아니라 알림톡을 쓰는 모든 기업고객에게 발생하는 문제입니다.
                                        
렛플에서는 알림은 앱푸쉬나 메일로는 발송되고 있음에도 불편함이 발생하고 있습니다. 
카톡의 알림톡은 오늘 자정정도에 복구되는 것으로 안내받았습니다
                                        
그러나 카톡 정상화와 상관없이, SMS 등으로 안내할 수 있도록 시스템을 개편하여 업데이트하겠습니다.
                                        
저희 본의 아니게 불편을 드려 죄송합니다.
또한 카카오톡에서 다른 SNS 계정으로 변경을 원하신다면 , 별도 절차를 거쳐 이관을 해드릴 수 있으니
이는 저에게 1:1 렛플에서 커피챗 걸어주시면 도와드리도록 하겠습니다. 
                                        
(저희 공식메일이 다음쪽 솔루션과 연계되어있습니다.  아직 다음메일이 복구되지 않아서 
메일문의는 현재 확인이 어렵습니다 메일이 아닌 다른 경로로 문의 부탁드립니다.)
                                    </textarea>
                                </h3>
                                <div class="bottom2">
                                    <div href="div.communityReplyTab" class="replyFold" id="replyFold">
                                        댓글 열기
                                    </div>
                                    <div class="replyFoldRight">
                                        <button class="edit" style="color : #c9c9d9" >수정</button>&nbsp;
                                    ㅣ&nbsp;
                                    <button class="remove_popupBtn" style="color : #c9c9d9">삭제</button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <div class="remove_popup">
                                        <div class="remove_text"><h2>정말삭제하시겠어요?</h2><br>
                                        <p>삭제한 글은 다시 불러올 수 없습니다.</p></div>
                                        <button class="remove_close">
                                            <img src="https://letspl.me/assets/icon/ic-close.svg" alt="">
                                        </button>
                                        <button class="reRemove">
                                            삭제
                                        </button>
                                    </div>
                                    </div>
                                </div>
                                <!-- 숨겨진 댓글 창 -->
                                <div class="communityReplyTab" id="communityReplyTab">
                                    <div class="replyTab">
                                        <div class="tabTop">
                                            <div class="tabLeft"><a href="https://letspl.me/people/%EB%A0%9B%ED%94%8C%EC%9A%B4%EC%98%81%EC%9E%90?tab=info">
                                                <img src="let.png" alt="" class="tabImg0">
                                            </a></div>
                                            <div class="tabRight">
                                                <div class="tabProfile">
                                                    <p class="tabProfileName">렛플운영자</p>
                                                    <span class="tabDate">22.10.18 21:53</span>
                                                </div>
                                                <div class="tabTxt">
                                                    <textarea disabled maxlength="500" style="font-size : 0.875rem; height: 125px; " class="tabTextarea">
서비스 출시하시면 웹이나 앱 형태로 나올까요?
지금은 오픈채팅방으로 가기밖에는 안보여서요
출시알림 받기 이런 기능(이메일 등록)이 있는 것 같은데 조금 문구가 헷갈리네요
제대로 등록한게 맞는지 궁금합니다.</textarea>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="replyInput">
                                        <div class="replyProfileThumb">
                                            <img loading="lazy "src="https://letspl.me/assets/images/prof-no-img.png" alt="" class="tabImg">
                                        </div>
                                        <div class="txtInput">
                                            <textarea rows="4" maxlength="500" placeholder="로그인 후 댓글작성이 가능합니다" ></textarea>
                                            <button class="blackBtn" disabled>등록</button>
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </div>
                     </div>
                     </div>
                </div>
                
<!-- 카카오톡 채널 톡 api -->
                <div
  id="kakao-talk-channel-chat-button"
  data-channel-public-id="_ZeUTxl"
  data-title="question"
  data-size="large"
  data-color="yellow"
  data-shape="pc"
  data-support-multiple-densities="true"
  style="display: scroll; position: fixed; bottom: 30px; right: 35px;"
></div>
<!-- -->
                        </div>
                     </div>
                     </div>
                </div>
            </div>
        </div>
        
    </section>
    <footer class="Footer">
        <div class="footerContent">
            <div class="top">
                <div class="left">
                    <div class="logoWrap">
                        <a>로고</a>
                    </div>
                    <ul>
                        <li>
                            <span>1:1 문의</span>
                            <a href="" target="_blank">운영자 1:1 카카오챗</a>
                        </li>
                        <li>
                            <span>오픈 챗</span>
                            <a href="" target="_blank">&nbsp;&nbsp;코드 2580</a>
                        </li>
                        <li>
                            <span>제휴문의</span>
                            <a href="" target="_blank">help@letspl.me</a>
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
                        <li><a href="../qna/qna.html">Q&A</a></li>
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
                            <li>
                                <a href="" target="_blank">
                                    <img loading="lazy" src="https://letspl.me/assets/images/googlePlayBadge.svg" alt="렛플 안드로이드앱 다운로드">
                                </a>
                            </li>
                            <li>
                                <a href="https://apps.apple.com/kr/app/id1595017110" target="_blank">
                                    <img loading="lazy" src="https://letspl.me/assets/images/applestorBadge.svg" alt="렛플 아이폰앱 다운로드">
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </footer>
    <!-- footer end -->
</body>
<script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
<script>
    $('#textarea').keydown(function() {
        $('#btnWrap').css("display", "flex");
    });

    $(document).ready(function() {
    $('#textarea').on('keyup', function() {
        $('#count_cnt').html("("+$(this).val().length+" / 1000)");
 
        if($(this).val().length > 1000) {
            $(this).val($(this).val().substring(0, 1000));
            $('#count_cnt').html("(1000 / 1000)");
        }
    });
});
    
//     $("#replyFold").click(function(){
//         // console.log($(".replyFold")[0].innerHTML)
//   $("#communityReplyTab").toggle(function() {});
//   if ($(".replyFold")[0].innerHTML == "댓글 열기") {
//     $(".replyFold")[0].innerHTML = "댓글 닫기"
// } else {
//     $(".replyFold")[0].innerHTML = "댓글 열기";
// }

// });

$("#replyFold").click(function(){
        // console.log($(".replyFold")[0].innerHTML)
  $("#communityReplyTab").toggle(function() {});
  if ($(this).text() == "댓글 열기") {
    $(this).text("댓글 닫기");
} else {
    $(this).text("댓글 열기");
}

});



  

   

  window.kakaoAsyncInit = function() {
    Kakao.Channel.createChatButton({
      container: '#kakao-talk-channel-chat-button',
    });
  };

  

    $(".remove_popupBtn").click("on", function(e) {
    $(".remove_popup").css("display", "block")
    });

    $(".remove_close").click("on", function(i, v){
                                            $(".remove_popup").css("display", "none");
                                        })

/
$(".text").attr("disabled", true);

$(".edit").click(function(event) {
	$(".text").attr("disabled", false);
    $(".text").css("border" , "1px solid black")
    $(".edit").text("작성");
    $(".edit").css("color", "#3393f4");
    $(".remove_popupBtn").text("취소");
    $(".remove_popupBtn").css("color", "#ea6560");
    if ($(".remove_popupBtn").click) {
        $(".text").attr("disabled", true);
    }
});




    //key up 으로 해보자
    //     let text = $('#textarea').val();
    // if (text.length==0) {
    //     $('#btnWrap').css("display", "none");
    
    // }else {
    //     $('#btnWrap').css("display", "block");
    // };
       
</script>
<script src="../main/modal.js"></script>
</html>