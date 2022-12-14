<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>회원 목록 관리</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/manager/manager_search.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/manager/manager_style.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/manager/manager_table.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/manager/manager_button.css">
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css"
	integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<body>
	<!-- <div class="wrapper"> -->
	<jsp:include
		page="${pageContext.request.contextPath}/app/manager/managerindex.jsp" />
	<!-- </div> -->
	<div class="contents">
		<h3>회원 목록 관리</h3>

		<div class="searchBox">
			<input type="text" placeholder="회원명을 입력해주세요." id="inputName">
			<button id="searchBtn" onclick="search()">검색</button>
		</div>

		<!-- 전체 회원 목록 테이블  -->
		<table class="memberAll">
			<thead>
				<tr>
					<th>회원번호</th>
					<th>닉네임</th>
					<th>가입 일자</th>
					<th>인증 상태</th>
					<th>회원 삭제</th>
				</tr>
			</thead>
			<tbody id="memberTableBody">
				<c:choose>
					<c:when test="${not empty memberAll and fn:length(memberAll) > 0}">
						<c:forEach var="member" items="${memberAll}">
							<tr>
								<td><c:out value="${member.getMemberNum()}" /></td>
								<td><c:out value="${member.getMemberNickname()}" /></td>
								<td><c:out value="${member.getMemberSignupDate()}" /></td>
								<td><c:out value="${member.getMemberType()}" /></td>
								<c:if test="${sessionScope.memberNum == memeber.getMemberNum()}">
								<td><button class="removeList" onclick="location.href='/manager/memberDelete.ma?memberNum=${member.getMemberNum()}'">회원 삭제</button></td>
								</c:if>
							</tr>
						</c:forEach>
					</c:when>
					<c:otherwise>
						<tr>
							<td colspan="5" align="center">등록된 회원이 없습니다.</td>
						</tr>
					</c:otherwise>
				</c:choose>
				<%-- <td class="memberId">0</td>
				<td class="memberName">홍길동</td>
				<td>0000-00-00</td>
				<td>0회</td>
				<td><button class="seeDetail" onclick="memberDetail()">상세보기</button></td>
				<td><button class="removeList" onclick="remove_tr(this)">회원
						삭제</button></td>
				</tr>
				<tr>
					<td></td>
					<td class="memberName"></td>
					<td></td>
					<td></td>
					<td><button class="seeDetail" onclick="memberDetail()">상세보기</button></td>
					<td><button class="removeList" onclick="remove_tr(this)">회원
							삭제</button></td>
				</tr>
				<tr>
					<td></td>
					<td class="memberName"></td>
					<td></td>
					<td></td>
					<td><button class="seeDetail" onclick="memberDetail()">상세보기</button></td>
					<td><button class="removeList" onclick="remove_tr(this)">회원
							삭제</button></td>
				</tr> --%>
			</tbody>
		</table>
	</div>
</body>
<script
	src="${pageContext.request.contextPath}/assets/js/manager/manager_manager.js"
	charset="utf-8"></script>
</html>