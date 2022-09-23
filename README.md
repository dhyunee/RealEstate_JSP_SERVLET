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

- 공지사항 게시판 CRUD 기능 => MODAL 창을 활용.<br>

[가능하면]
![image-1.png](./image-1.png)
- CONTACT US => FOOTER -> 문의하기 버튼을 통해 MODAL로 메일 문의(전송), MYSQL mail table에 저장.



