SET NAMES utf8mb4;
USE jm_market;

ALTER TABLE GOODS MODIFY GOODS_PICK VARCHAR(100) NULL;

REPLACE INTO COUPON
  (COUPON_NO, COUPON_ID, COUPON_VALUE, COUPON_S_VALIDITY, COUPON_E_VALIDITY)
VALUES
  (1, '10%할인', 10, '2020-05-17', '2020-06-18');

REPLACE INTO MEMBER
  (MEMBER_NO, MEMBER_ID, MEMBER_PASSWD, MEMBER_NAME, MEMBER_BIRTH, MEMBER_EMAIL, MEMBER_PHONE, MEMBER_ZIPCODE, MEMBER_ADDR1, MEMBER_ADDR2, MEMBER_DATE, MEMBER_GRADE, MEMBER_TOTAL, MEMBER_LOG, MEMBER_DELETE)
VALUES
  (3, 'hnjung', 'jung2201!', '정하나', '1984-02-12', 'hnjung@test.com', '01044448888', '12345', '서울', '살만한데', '2020-06-17', 'NORMAL', 0, '2020-06-17', '0'),
  (4, 'mekang', 'kang0022@', '강미애', '1998-06-07', 'mekang@gmail.com', '01032142423', '123456', '서울특별시', '종로구', '2020-06-17', 'NORMAL', 0, '2020-06-17', '0'),
  (5, 'ckyun', 'yun0032!@', '윤철규', '1992-02-01', 'ckyun@gmail.com', '01030582757', '121258', '서울시 마포구', '망원2동 종로 빌딩 501', '2020-06-17', 'NORMAL', 0, '2020-06-17', '0'),
  (6, 'shpark931', 'wlaud@10', '박수현', '1996-01-01', 'shpark931@gmail.com', '01044559000', '123456', '서울특별시', '종로구', '2020-06-17', 'NORMAL', 0, '2020-06-17', '0'),
  (7, 'hrlim', 'lim0001@', '임효림', '1998-06-07', 'hrlim@gmail.com', '01012345678', '123456', '서울특별시', '종로구', '2020-06-17', 'NORMAL', 0, '2020-06-17', '0'),
  (8, 'jmpark', 'park0023!', '박지명', '1996-12-31', 'jmpark@gmail.com', '01012345678', '123456', '서울특별시', '종로구', '2020-06-17', 'NORMAL', 0, '2020-06-17', '0'),
  (9, 'ejoh', 'oh0010!', '오은진', '2000-01-01', 'ejoh@gmail.com', '01012345678', '123456', '서울특별시', '종로구', '2020-06-17', 'NORMAL', 0, '2020-06-17', '0'),
  (10, 'hjjeon', 'jeon1001!', '전형준', '1996-01-01', 'hjjeon@gmail.com', '01012345678', '123456', '서울특별시', '종로구', '2020-06-17', 'NORMAL', 0, '2020-06-17', '0'),
  (11, 'jsjung', 'jung3001@', '정재석', '1998-01-01', 'jsjung@gmail.com', '01012345678', '123456', '서울특별시', '종로구', '2020-06-17', 'NORMAL', 0, '2020-06-17', '0'),
  (12, 'khlee', 'lee2002@', '이건희', '1994-01-01', 'khlee@gmail.com', '01012345678', '123456', '서울특별시', '종로구', '2020-06-17', 'NORMAL', 0, '2020-06-17', '0'),
  (13, 'sksrkl3600', 'sksmswlaud@30', '관리자', '1994-12-30', 'skrkl3600@naver.com', '01035227801', '123456', '서울특별시', '종로구', '2020-06-17', 'NORMAL', 0, '2020-06-17', '0');

REPLACE INTO POINT
  (POINT_NO, MEMBER_NO, POINT_VAL, POINT_SAVE_DATE, POINT_TOTAL)
VALUES
  (3, 3, 10000, '2020-06-17', 10000),
  (4, 4, 10000, '2020-06-17', 10000),
  (5, 5, 10000, '2020-06-17', 10000),
  (6, 6, 10000, '2020-06-17', 10000),
  (7, 7, 10000, '2020-06-17', 10000),
  (8, 8, 10000, '2020-06-17', 10000),
  (9, 9, 10000, '2020-06-17', 10000),
  (10, 10, 10000, '2020-06-17', 10000),
  (11, 11, 10000, '2020-06-17', 10000),
  (12, 12, 10000, '2020-06-17', 10000),
  (13, 13, 10000, '2020-06-17', 10000);

REPLACE INTO GOODS
  (GOODS_NO, GOODS_CATEGORY, GOODS_NAME, GOODS_CONTENT, GOODS_ORIGIN_PRICE, GOODS_SELL_PRICE, GOODS_SALE_PRICE, GOODS_DATE, GOODS_KEYWORD, GOODS_READCNT, GOODS_PICK, GOODS_THUMBNAIL, GUBUN)
VALUES
  (491, 'outer', '세르지 썸머 가디건', '<p><img alt="" src="/file/16995e1b5c3e4339863a0ce25fa1b844.jpg" style="height:860px; width:860px" /><img alt="" src="/file/4ed44ef498cf4050be69f66873327cd4.jpg" style="height:855px; width:860px" /></p>', 32000, 30000, 2000, '2022-09-14 01:52:56', '가디건', 2, 'BEST,MD PICK', '16995e1b5c3e4339863a0ce25fa1b844.jpg', '0'),
  (493, 'top', '써머랜드 루즈 셔츠', '<p><img alt="" src="/file/d29e980c7b734b3b9d624487c7398c53.jpg" style="height:860px; width:947px" /><img alt="" src="/file/93829c83aab34a4aa1322140970f7d59.jpg" style="height:860px; width:860px" /></p>', 28000, 24000, 4000, '2022-09-14 02:15:38', '셔츠', 3, 'BEST,MD PICK,MUSTHAVE', 'd29e980c7b734b3b9d624487c7398c53.jpg', '0'),
  (494, 'one-piece', '투웨이 스모크미니원피스', '<p><img alt="" src="/file/a14b316d9d604efa9d8cef733cebf38d.jpg" style="height:860px; width:860px" /><img alt="" src="/file/60313b2f58d541f3b2666b27ea11db30.jpg" style="height:860px; width:860px" /></p>', 38000, 30000, 8000, '2022-09-14 02:20:14', '원피스', 1, 'BEST,MD PICK', 'a14b316d9d604efa9d8cef733cebf38d.jpg', '0'),
  (495, 'bottom', '트루디 레이어드 미니스커트', '<p><img alt="" src="/file/b18894265a2649a0bd5263b7db581294.jpg" style="height:860px; width:860px" /><img alt="" src="/file/886ca6c5308f4645acfb4613e538b130.jpg" style="height:860px; width:860px" /></p>', 26000, 20000, 6000, '2022-09-14 02:23:10', '치마', 1, 'BEST,MD PICK,MUSTHAVE', 'b18894265a2649a0bd5263b7db581294.jpg', '0'),
  (496, 'acc', '페리체리 쉬폰헤어밴드', '<p><img alt="" src="/file/2612c46b4c7b417f952af99f5ad06706.jpg" style="height:860px; width:860px" /><img alt="" src="/file/1b648d8b9e5d48fdaebf728d97bc126b.jpg" style="height:860px; width:860px" /></p>', 4000, 2000, 2000, '2022-09-14 02:25:51', '밴드', 5, 'MD PICK,MUSTHAVE', '2612c46b4c7b417f952af99f5ad06706.jpg', '0');

REPLACE INTO GOODS_IMAGE
  (GOODS_IMAGE_NUM, GOODS_NO, GOODS_IMAGE_ORG, GOODS_IMAGE_STD)
VALUES
  (396, 491, 'null', '16995e1b5c3e4339863a0ce25fa1b844.jpg,4ed44ef498cf4050be69f66873327cd4.jpg'),
  (398, 493, 'null', 'd29e980c7b734b3b9d624487c7398c53.jpg,93829c83aab34a4aa1322140970f7d59.jpg'),
  (399, 494, 'null', 'a14b316d9d604efa9d8cef733cebf38d.jpg,60313b2f58d541f3b2666b27ea11db30.jpg'),
  (400, 495, 'null', 'b18894265a2649a0bd5263b7db581294.jpg,886ca6c5308f4645acfb4613e538b130.jpg'),
  (401, 496, 'null', '2612c46b4c7b417f952af99f5ad06706.jpg,1b648d8b9e5d48fdaebf728d97bc126b.jpg');

REPLACE INTO GOODS_ATTRIBUTE
  (GOODS_ATT_NO, GOODS_NO, GOODS_ATT_SIZE, GOODS_ATT_COLOR, GOODS_ATT_AMOUNT, GOODS_ATT_DISPLAY)
VALUES
  (939, 491, 'FREE', '그레이', 100, '0'),
  (941, 493, 'FREE', '블루', 100, '0'),
  (942, 494, 'FREE', '블루', 100, '0'),
  (943, 495, 'S', '와인', 100, '0'),
  (944, 496, 'FREE', '화이트', 100, '0');
