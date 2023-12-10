# exhib: 전시의 일상화
<p align="center">
  <img src="https://github.com/CSeJin/project-exhib/assets/127668461/cddf6df4-5369-44bc-9071-92174e6cdb73">
</p>

## :art: 프로젝트 소개
한 곳에 가입해 여러 전시를 한 눈에 보고 간단하게 예매할 수 있는 웹사이트

일반 회원도 전시를 등록할 수 있도록 해 등록&예매가 가능한 전시 플랫폼을 구현

</br>

## :art: 기술 스택
html5, css, java, jsp, mysql

</br>

## :art: 구현 기능
### 1. 로그인
DB 내 회원정보와 대조하여 인증

<img src="https://github.com/CSeJin/project-exhib/assets/127668461/9b7e82b8-5832-4efd-8775-ff2aa6038bfb">

> id: taesub | password: taesub0731로 로그인 가능
### 2. 검색
전시회명, 장소에서 검색어를 포함하는 결과 조회

<img src="https://github.com/CSeJin/project-exhib/assets/127668461/3aa1044d-46e8-4f0a-b851-fc15d12f3bc5">

### 3. 예매
<img src="https://github.com/CSeJin/project-exhib/assets/127668461/537abe84-3761-491a-80e6-b2fee3395305">

### 4. 전시 등록
전시명, 전시 기간, 장소를 입력하여 전시 등록

<img src="https://github.com/CSeJin/project-exhib/assets/127668461/d5574ff0-4614-4f46-9bd9-58e55ad9631a">

### 5. 마이페이지
전시 예매/등록 조회 및 삭제, 비밀번호 변경

<img src="https://github.com/CSeJin/project-exhib/assets/127668461/5dcd2a72-3d02-4e6e-a802-9516469e221c">


## :art: 파일 설명
### DB
<img src="https://github.com/CSeJin/project-exhib/assets/127668461/ba37503f-e833-4d4c-86a7-52e23c3bc5bd">

### java
- exhibDO.java: 전시회 정보 데이터 구조를 매핑하는 beans 클래스
- exhibDAO.java: exhibDO를 관리하는 클래스
- exhibMemDO.java: 회원정보 데이터 구조를 매핑하는 beans 클래스
- exhibMemDAO.java: exhibMemDO를 관리하는 클래스
- exhibReserveDO.java: 전시회 예약 정보 데이터 구조를 매핑하는 beans 클래스
- exhibReserveDAO.java: exhibReserveDO를 관리하는 클래스
- exhibRegisterDO.java: 회원의 전시회 등록 정보 데이터 구조를 매핑하는 beans 클래스
### jsp
- main.jsp: 홈페이지. nav.jsp, mainContent.jsp, card.jsp로 구성
- nav.jsp: 메뉴 바-로고(홈), 등록, 예매, 마이페이지, 로그인 버튼으로 구성
- mainContent.jsp: 사이트 콘셉트를 보여주는 배경이미지와 검색 기능을 포함
- card.jsp: Exhib 테이블에서 전시회 리스트를 가져와 카드 형식으로 출력
- login.jsp: 로그인 폼
- loginProc.jsp: exhib_member 테이블의 계정정보와 일치하는지 검사, 결과에 따라 로그인 성공/실패
- myPage.jsp: 회원정보와 예매/등록내역 출력, 비밀번호 수정, 예매/등록내역 삭제
- register.jsp: 전시회 등록 폼
- registerProc.jsp: exhib_register 테이블과 exhib 테이블에 새로 등록한 전시회 레코드를 추가, main.jsp로 이동
- registerDeleteProc.jsp: 회원이 등록한 전시회 삭제 및 exhib_register와 exhib 테이블에서 해당 레코드 삭제
- reserve.jsp: include 액션 태그로 card.jsp를 가져와 전시회 리스트를 출력
- reserveDetail.jsp: 전시회 제목을 기준으로 전시회의 상세 정보를 출력
- reserveDetailProc.jsp: exhib_reserve 테이블에 새로 예매된 레코드 추가, main.jsp로 이동
- reserveDeleteProc.jsp: 회원이 예매한 전시회 삭제 및 exhib_reserve 테이블에서 해당 레코드 삭제
- search.jsp: 입력된 문자역을 전시회 제목과 장소에 포함되는지 exhib 테이블에서 조회, 카드 형식으로 출력

