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
- 드롭다운을 통한 위치정보 입력



- Controller : 요청 받아서 필요한 데이터 Model에게 의뢰

 MainServlet :  게시판에 리스트 띄우고 검색
 LoginServlet : 로그인, 로그아웃
 UserServlet : 회원 가입


- Model : 명령 처리

 Service : 명령 Controller에서 받아 Dao에 전달 및 간단한 수식 연산
 MainService : 게시판에 관한 것들
 LoginService : 로그인 , 로그아웃
 UserServlet : 회원 가입

 Dto : 객체 반환
 MainDto
 UserDto

 Dao : Service에서 받은 요청 처리
 LoginDao
 MainDao
 UserDao

- View : 화면 



