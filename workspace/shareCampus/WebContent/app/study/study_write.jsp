<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>글쓰는 페이지</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/app/assets/css/studyWrite.css">
</head>

<body>
    <div id="bigBox">
        <jsp:include page="${pageContext.request.contextPath}/app/fix/header.jsp" />
        <div id="afthd2">
            <div id="all">
                <div class="choosebox">
                    <div class="who">
                        모집 대상
                    </div>
                    <hr class="hr1">
                    <div class="field">
                        <div class="field2">

                            분야
                        </div>
                        <div class="fieldchooseBox">
                            <select class="fieldchoose" name="분야 선택">
                                <option selected value="">분야 선택</option>
                                <option value="f2">어학</option>
                                <option value="f3">취업</option>
                                <option value="f4">고시/공무원</option>
                                <option value="f5">취미/교양</option>
                                <option value="f6">프로그래밍</option>
                                <option value="f7">자율</option>
                                <option value="f8">기타</option>
                            </select>

                        </div>
                        <hr class="hr1">
                        <div class="location2">

                            지역 
                        </div>
                        <div>
                            <select class="locationchoose" name="지역 선택">
                                <option selected value="">지역 선택</option>
                                <option value="kr01">경기도</option>
                                <option value="kr02">부산광역시</option>
                                <option value="kr03">인천광역시</option>
                                <option value="kr04">서울특별시</option>
                                <option value="kr05">대구광역시</option>
                                <option value="kr06">경상남도</option>
                                <option value="kr07">경상북도</option>
                                <option value="kr08">대전광역시</option>
                                <option value="kr09">충청남도</option>
                                <option value="kr10">충청북도</option>
                                <option value="kr11">전라남도</option>
                                <option value="kr12">전라북도</option>
                                <option value="kr13">광주광역시</option>
                                <option value="kr14">강원도</option>
                                <option value="kr15">울산광역시</option>
                                <option value="kr16">제주특별자치도</option>
                                <option value="kr17">세종특별자치시</option>
                            </select>
                            <hr class="hr">
                            <div class="hopeppl">
                                모집 인원

                            </div>
                            <div class="count">
                                <div id="hopediv">
                                    <span class="wish">희망 인원 : </span>
                                    <input class="text1" type="text" name="num" value=""><span
                                        class="mung1">명</span>&nbsp;<span class="slash">~</span>&nbsp;<input
                                        class="text2" type="text" name="num" value=""><span class="mung2">명</span>
                                </div>

                                <label id="hope">
                                    <input id="ppls" type="checkbox">
                                    <span class="ckb">제한없음</span>
                                </label>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="writebox">
                    <div class="notetitle">
                        <textarea id="ctitle" cols="61%" rows="1%" placeholder="제목"
                            style="font-weight: bold; font-size: 20px;"></textarea>
                    </div>
                    <hr class="hr">
                    <div>
                        <textarea id="cwrite" cols=92%" rows="23%" placeholder="내용을 입력하세요 (시간, 장소, 진행 방식 등)"></textarea>
                    </div>
                </div>
                <div class="btn3">
                    <button class="btn2" onclick="check()">글쓰기</button>
                </div>
            </div>
        </div>
        <jsp:include page="${pageContext.request.contextPath}/app/fix/modal.jsp" />
		<jsp:include page="${pageContext.request.contextPath}/app/fix/footer.jsp" />
    </div>
</body>
<script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
<script src="${pageContext.request.contextPath}/app/assets/js/studyWrite.js"></script>

</html>