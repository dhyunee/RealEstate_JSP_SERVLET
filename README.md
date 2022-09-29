# WhereIsMyHome_3_BackEnd_10조_김송빈_김승섭

## 평가항목 및 점수표

|구현기능|점수|
|:---:|:---:|
|메인 화면 실거래가 검색, 결과                            |<!--점수체크란>-->   | 
|회원관리                                                     |   |
|로그인/로그아웃                                          |   |
|관심지역 동네 업종 정보 조회
관심지역 대기오염 정보 조회                                          |   |
|공지사항 관리                                 |   |


## 브레인스토밍 내용
[메인 화면]
![image.png](./image.png)
- 드롭다운을 통한 위치정보 입력<br>
=> 입력된 위치 정보에 부합하는 정보를 지도 상에 마크로 표시


- Controller : 요청 받아서 필요한 데이터 Model에게 의뢰<br>

 MainServlet :  게시판에 리스트 띄우고 검색<br>
 LoginServlet : 로그인, 로그아웃<br>
 UserServlet : 회원 가입<br>


- Model : 명령 처리<br>

 Service : 명령 Controller에서 받아 Dao에 전달 및 간단한 수식 연산<br>
 MainService : 게시판에 관한 것들<br>
 LoginService : 로그인 , 로그아웃<br>
 UserServlet : 회원 가입<br>

 Dto : 객체 반환<br>
 MainDto<br>
 UserDto<br>

 Dao : Service에서 받은 요청 처리<br>
 LoginDao<br>
 MainDao<br>
 UserDao<br>

- View : 화면 <br>


## 결과
![image-6.png](./image-6.png)
- 메인 인덱스에서 회원가입 메뉴를 통해 회원가입한 유저 정보로
로그인 메뉴에서 로그인한다.
![image-8.png](./image-8.png)
- 로그인 성공
![image-9.png](./image-9.png)
- 로그인 실패 시

![image-10.png](./image-10.png)
![image-11.png](./image-11.png)
- 로그인 세션이 유지되면 모든 페이지에서 서브헤더에 로그인 정보가 표시된다.

![image-2.png](./image-2.png)
- 공지사항 게시판
![image-4.png](./image-4.png)
- boardInsert 함수 사용, 글 등록
![image-5.png](./image-5.png)
- AJAX로 리스트 업데이트

![sidooption.png](./sidooption.png)
- 광역시와 도를 선택
![gugunoption.png](./gugunoption.png)
- 광역시와 도에 따른 구와 군을 select box로 로드하고 선택
![dongoption.png](./dongoption.png)
- 구군코드에 따른 동을 select box로 로드하고 선택

![selectconsole.png](./selectconsole.png)
- 동까지 선택한 후 console 화면
![latlngconsole.png](./latlngconsole.png)
- 동까지 선택한 후 console 화면 (housedeal과 houseinfo를 조인하여 위도, 경도 가져옴)

![map&list_load.png](./map&list_load.png)
- map과 시 or 도/ 구 or 군/ 동 을 선택했을 시 정보 list 가져옴

**첨부된 index.jsp는 건물매매정보 MVC를 디자인했으나 완성하지 못한 메인 JSP 파일입니다.** 
**mypage.jsp 정보수정 미완**
![image-12.png](./image-12.png)

