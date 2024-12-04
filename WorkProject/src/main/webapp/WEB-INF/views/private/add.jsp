<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <link
            rel="stylesheet"
            href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
        <link rel="stylesheet" href="/resources/css/main.css">
        <link rel="stylesheet" href="/resources/css/private/add.css">
        <script src="/resources/js/nav.js"></script>
        <script src="/resources/js/private/add.js"></script>
		
        <script
            src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
            integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n"
            crossorigin="anonymous"></script>
        <link
            href="https://cdn.jsdelivr.net/npm/summernote@0.9.0/dist/summernote-lite.min.css"
            rel="stylesheet">
        <script
            src="https://cdn.jsdelivr.net/npm/summernote@0.9.0/dist/summernote-lite.min.js"></script>
        <script src="/resources/lang/summernote-ko-KR.min.js"></script>
        <title>Insert title here</title>
    </head>
    <body>
        <div class="container">
            <div class="header" id="nav">
                <div class="logo">
                    <a href="/work">workway</a>
                </div>
                <div class="serach_box">
                    <span>
                        <svg
                            xmlns="http://www.w3.org/2000/svg"
                            width="30"
                            height="30"
                            fill="currentColor"
                            class="bi bi-search"
                            viewbox="0 0 16 16">
                            <path
                                d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001q.044.06.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1 1 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0"/>
                        </svg>
                    </span>
                    <input type="text">
                </div>
                <c:if test="${sessionScope.mydate ==  null}">
                    <div class="login">
                        <a href="/login">로그인</a>
                        |
                        <a href="/signup">회원가입</a>
                    </div>
                </c:if>
                <c:if test="${sessionScope.mydate !=  null}">
                    <div class="login">
                        <a href="/mypage/${sessionScope.mydate.id}">${sessionScope.mydate.id}</a>
                        |
                        <a href="/logout">로그아웃</a>
                    </div>
                </c:if>
            </div>
            <div class="navbar" id="nav">
                <div class="manu">
                    <span id="nemu">
                        <svg
                            xmlns="http://www.w3.org/2000/svg"
                            width="30"
                            height="30"
                            fill="currentColor"
                            class="bi bi-list"
                            viewbox="0 0 16 16">
                            <path
                                fill-rule="evenodd"
                                d="M2.5 12a.5.5 0 0 1 .5-.5h10a.5.5 0 0 1 0 1H3a.5.5 0 0 1-.5-.5m0-4a.5.5 0 0 1 .5-.5h10a.5.5 0 0 1 0 1H3a.5.5 0 0 1-.5-.5m0-4a.5.5 0 0 1 .5-.5h10a.5.5 0 0 1 0 1H3a.5.5 0 0 1-.5-.5"/>
                        </svg>
                    </span>
                </div>
                <div class="dropdown">
                    <span>
                        기업 공고</span>
                    <ul class="dropdown_item">
                        <li>
                            <a href="/company/major">대기업 공고</a>
                        </li>
                        <li>
                            <a href="/company/small">중소기업 공고</a>
                        </li>
                        <li>
                            <a href="/company/area">지역별 공고</a>
                        </li>
                        <li>
                            <a href="/company/field">분야별 공고</a>
                        </li>
                    </ul>
                </div>
                <div class="dropdown">
                    <span>개인 공고</span>
                    <ul class="dropdown_item">
                        <li>
                            <a href="/private/area">지역별 공고</a>
                        </li>
                        <li>
                            <a href="/private/field">분야별 공고</a>
                        </li>
                    </ul>
                </div>
                <div class="dropdown">
                    <span>자재 발주</span>
                    <ul class="dropdown_item">
                        <li>
                            <a href="/order">발주 확인</a>
                        </li>
                        <li>
                            <a href="/myorder">나의 발주</a>
                        </li>
                    </ul>
                </div>
            </div>
            <div id="navhi">
                <span>
                    <svg width="30" height="30" viewbox="0 0 60 60" id="cross">
                        <path
                            style="fill:#030104;"
                            d="M47.743,41.758L33.955,26.001l13.788-15.758c2.343-2.344,2.343-6.143,0-8.486
			c-2.345-2.343-6.144-2.342-8.486,0.001L26,16.91L12.743,1.758C10.4-0.584,6.602-0.585,4.257,1.757
			c-2.343,2.344-2.343,6.143,0,8.486l13.788,15.758L4.257,41.758c-2.343,2.343-2.343,6.142-0.001,8.485
			c2.344,2.344,6.143,2.344,8.487,0L26,35.091l13.257,15.152c2.345,2.344,6.144,2.344,8.487,0
			C50.086,47.9,50.086,44.101,47.743,41.758z"/>
                    </svg>
                </span>
                <ul>
                    <li>
                        <a href="/company/major">대기업 공고</a>
                    </li>
                    <li>
                        <a href="/company/small">중소기업 공고</a>
                    </li>
                    <li>
                        <a href="/company/area">지역별 공고</a>
                    </li>
                    <li>
                        <a href="/company/field">분야별 공고</a>
                    </li>
                </ul>
                <ul>
                    <li>
                        <a href="/private/area">지역별 공고</a>
                    </li>
                    <li>
                        <a href="/private/field">분야별 공고</a>
                    </li>
                </ul>
                <ul>
                    <li>
                        <a href="/order">발주 확인</a>
                    </li>
                    <li>
                        <a href="/myorder">나의 발주</a>
                    </li>
                </ul>
            </div>
            <div class="main">
                <div id="add_box">
                    <div id="wwhead">
                        <div>
                            <h1>개인 작업등록</h1>
                        </div>
                        <div id="wwbutton">WW Partners</div>
                    </div>
                    <form method="post" id="conteant" enctype="multipart/form-data">
                        <div class="conteant_item">
                            <p>성명</p><input
                                type="text"
                                name="priName"
                                data-target="muge_name"
                                class="essential" id="name"></div>
                        <div id="summer">
                            <p>경력사항</p>
                            <textarea
                                id="summernote"
                                name="priHistory"
                                data-target="muge_history"
                                class="essential"></textarea>
                        </div>
                        <div class="conteant_item">
                            <p>나이</p><input
                                type="text"
                                name="priOld"
                                data-target="muge_old"
                                class="essential"></div>
                        <div class="conteant_item">
                            <p>성별</p><input
                                type="text"
                                name="priGender"
                                data-target="muge_gender"
                                class="essential"></div>
                        <div class="conteant_item">
                            <p>연락처</p><input
                                type="number"
                                name="priTel"
                                data-target="muge_tel"
                                class="essential"></div>
                        <div class="conteant_item">
                            <p>작업가능지역</p><input type="text" id="priRegion" name="priRegion" readonly="readonly"  data-target="muge_region"></div>
                        <div id="area">
                            <div class="area_list_city" id="Seoul_list" data-area="서울">
                                <h3 data-area="서울">서 울</h3>
                            </div>
                            <div class="area_list_city" id="Incheon_list" data-area="인천">
                                <h3 data-area="인천">인 천</h3>
                            </div>
                            <div class="area_list_city" id="Busan_list" data-area="부산">
                                <h3 data-area="부산">부 산</h3>
                            </div>
                            <div class="area_list_city" id="Daegu_list" data-area="대구">
                                <h3 data-area="대구">대 구</h3>
                            </div>
                            <div class="area_list_city" id="Gwangju_list" data-area="광주">
                                <h3 data-area="광주">광 주</h3>
                            </div>
                            <div class="area_list_city" id="Daejeon_list" data-area="대전">
                                <h3 data-area="대전">대 전</h3>
                            </div>
                            <div class="area_list_city" id="Ulsan_list" data-area="울산">
                                <h3 data-area="울산">울 산</h3>
                            </div>
                            <div class="area_list_city" id="Sejong_list" data-area="세종">
                                <h3 data-area="세종">세 종</h3>
                            </div>
                            <div class="area_list_city" id="Gyeonggi_list" data-area="경기도">
                                <h3 data-area="경기도">경 기 도</h3>
                            </div>
                            <div class="area_list_city" id="Gangwon_list" data-area="강원도">
                                <h3 data-area="강원도">강 원 도</h3>
                            </div>
                            <div class="area_list_city" id="Chungcheongnam_list" data-area="충청남도">
                                <h3 data-area="충청남도">충청 남도</h3>
                            </div>
                            <div class="area_list_city" id="Chungcheongbuk_list" data-area="충청북도">
                                <h3 data-area="충청북도">충청 북도</h3>
                            </div>
                            <div class="area_list_city" id="Jeollanam_list" data-area="전라남도">
                                <h3 data-area="전라남도">전라 남도</h3>
                            </div>
                            <div class="area_list_city" id="Jeollabuk_list" data-area="전라북도">
                                <h3 data-area="전라북도">전라 북도</h3>
                            </div>
                            <div class="area_list_city" id="Gyeongsangnam_list" data-area="경상남도">
                                <h3 data-area="경상남도">경상 남도</h3>
                            </div>
                            <div class="area_list_city" id="Gyeongsangbuk_list" data-area="경상북도">
                                <h3 data-area="경상북도">경상 북도</h3>
                            </div>
                        </div>
                        <div class="conteant_item">
                            <p>작업가능 분야</p>
                            <select name="priField" id="field" data-target="muge_field">
                                <option value="기획">기획</option>
                                <option value="마케팅">마케팅</option>
                                <option value="화계">화계</option>
                                <option value="인사">인사</option>
                                <option value="IT개발">IT개발</option>
                                <option value="디잔인">디잔인</option>
                                <option value="영업">영업</option>
                                <option value="고객상담">고객상담</option>
                                <option value="구매">구매</option>
                                <option value="상품기획">상품기획</option>
                                <option value="운송">운송</option>
                                <option value="서비스">서비스</option>
                                <option value="생산">생산</option>
                                <option value="건설">건설</option>
                                <option value="의료">의료</option>
                                <option value="교육">교육</option>
                                <option value="미디어">미디어</option>
                                <option value="금용">금용</option>
                                <option value="공공">공공</option>
                                <option value="안전">안전</option>
                                <option value="미화">미화</option>
                                <option value="포장">포장</option>
                                <option value="상담">상담</option>
                                <option value="검수">검수</option>
                                <option value="단순작업">단순작업</option>
                                <option value="사무업">사무업</option>
                                <option value="미디어">미디어</option>
                                <option value="스포츠">스포츠</option>
                                <option value="기타">기타</option>
                            </select>
                        </div>
                        <div class="conteant_item">
                            <p>투입가능 일자</p><input type="date" name="priDate"  data-target="muge_date">

                        </div>
                    </form>
                </div>
                <div id="side_nav">
                    
                    <button id="submit" form="conteant" type="button">등록하기</button>
                    <div id="savebox">
                        <div id="view">미리보기</div>
                        <div id="temporary storage">임시저장</div>
                    </div>
                </div>
            </div>
            <div class="footer"></div>
        </div>
    </body>
    <script>
        $('#summernote').summernote({
            width: 650,
            height: 300,
            maxWidth: 650,
            focus: true,
            lang: 'ko-KR',
            toolbar: [
                [
                    'style', ['style']
                ],
                [
                    'font',
                    [
                        'bold', 'underline', 'clear'
                    ]
                ],
                [
                    'color', ['color']
                ],
                [
                    'para',
                    [
                        'ul', 'ol', 'paragraph'
                    ]
                ],
                [
                    'table', ['table']
                ],
                [
                    'insert',
                    [
                        'link', 'picture', 'video'
                    ]
                ],
                [
                    'view',
                    [
                        'fullscreen', 'codeview', 'help'
                    ]
                ]
            ]
        });
    </script>
</html>