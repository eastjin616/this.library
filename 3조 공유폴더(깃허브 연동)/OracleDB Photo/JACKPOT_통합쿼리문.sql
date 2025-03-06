-- 통합 쿼리문
------------------------------ TABLE & SEQUENCE 제거문 --------------------------
DROP TABLE MEMBER_SOCIAL;
DROP SEQUENCE SEQ_SOCIAL_ID;

DROP TABLE VOTE_ANSWER;
DROP SEQUENCE SEQ_V_ANSWER_NO;

DROP TABLE FNA;
DROP SEQUENCE SEQ_FNA_NO;

DROP TABLE REVIEW_ANSWER;
DROP SEQUENCE SEQ_R_ANSWER_NO;

DROP TABLE REVIEW;
DROP SEQUENCE SEQ_REVIEW;

DROP TABLE LIKES;

DROP TABLE LIBRARY;
DROP SEQUENCE SEQ_LIBRARY_NO;

DROP TABLE COMMENTARY;
DROP SEQUENCE SEQ_COMMENTARY_NO;

DROP TABLE VOTE;
DROP SEQUENCE SEQ_VOTE_NO;

DROP TABLE BOOK;
DROP SEQUENCE SEQ_BOOK_NO;

DROP TABLE GENRE;

DROP TABLE FOLLOW;

DROP TABLE MEM_GIS;

DROP TABLE READGOAL;
DROP SEQUENCE SEQ_RG_NO;

DROP TABLE SERVICE_CENTER;
DROP SEQUENCE SEQ_INQUIRY_NO;

DROP TABLE NOTICE;
DROP SEQUENCE SEQ_NOTICE_NO;

DROP TABLE ATTACHMENT;
DROP SEQUENCE SEQ_FILE_NO;

DROP TABLE BOARD_ANSWER;
DROP SEQUENCE SEQ_B_ANSWER_NO;

DROP TABLE BOARD;
DROP SEQUENCE SEQ_BOARD_NO;

DROP TABLE MEMBER;
DROP SEQUENCE SEQ_MEM_NO;
----------------------------------- MEMBER -------------------------------------
CREATE TABLE MEMBER(
MEM_NO NUMBER CONSTRAINT MEM_NO_PK PRIMARY KEY,
MEM_NAME VARCHAR2(30) CONSTRAINT MEM_NAME_NN NOT NULL,
MEM_ID VARCHAR2(30) CONSTRAINT MEM_ID_NN NOT NULL,
MEM_PWD VARCHAR2(30)CONSTRAINT MEM_PWD_NN NOT NULL,
NICKNAME VARCHAR2(30) CONSTRAINT NICKNAME_NN NOT NULL,
ADDRESS VARCHAR2(100),
EMAIL VARCHAR2(100),
PROFILE VARCHAR2(4000) CONSTRAINT PROFILE_NN NOT NULL,
PHONE VARCHAR2(13) CONSTRAINT PHONE_NN NOT NULL,
STATUS CHAR(1) DEFAULT 'Y'
);

COMMENT ON COLUMN MEMBER.MEM_NO IS '사용자번호';
COMMENT ON COLUMN MEMBER.MEM_NAME IS '이름';
COMMENT ON COLUMN MEMBER.MEM_ID IS '아이디';
COMMENT ON COLUMN MEMBER.MEM_PWD IS '비밀번호';
COMMENT ON COLUMN MEMBER.NICKNAME IS '닉네임';
COMMENT ON COLUMN MEMBER.ADDRESS IS '주소';
COMMENT ON COLUMN MEMBER.EMAIL IS '이메일';
COMMENT ON COLUMN MEMBER.PROFILE IS '프로필사진';
COMMENT ON COLUMN MEMBER.PHONE IS '전화번호';
COMMENT ON COLUMN MEMBER.STATUS IS '상태';


CREATE SEQUENCE SEQ_MEM_NO
                INCREMENT BY    1 
                START WITH      1
                MINVALUE        1
                MAXVALUE        99999
                NOCYCLE
                NOCACHE
                NOORDER;
                
INSERT INTO MEMBER(MEM_NO,MEM_NAME,MEM_ID,MEM_PWD,NICKNAME,ADDRESS,EMAIL, PROFILE, PHONE, STATUS)
            VALUES(SEQ_MEM_NO.NEXTVAL
                    , '관리자'
                    , 'admin'
                    , '1234'
                    , 'admin'
                    , 'korea1'
                    , 'admin@naver.com'
                    , 'resources/member/사진1'
                    , '010-1111-2222'
                    , 'Y'
                    );
                    
INSERT INTO MEMBER(MEM_NO,MEM_NAME,MEM_ID,MEM_PWD,NICKNAME,ADDRESS,EMAIL, PROFILE, PHONE, STATUS)
            VALUES(SEQ_MEM_NO.NEXTVAL
                    , '고영훈'
                    , 'user02'
                    , 'pass02'
                    , 'younghoon'
                    , 'korea2'
                    , 'koreago@naver.com'
                    , 'resources/member/사진2'
                    , '010-1221-2422'
                    , 'Y'
                    );                  
                    
INSERT INTO MEMBER(MEM_NO,MEM_NAME,MEM_ID,MEM_PWD,NICKNAME,ADDRESS,EMAIL, PROFILE, PHONE, STATUS)
            VALUES(SEQ_MEM_NO.NEXTVAL
                    , '서동진'
                    , 'user03'
                    , 'pass03'
                    , 'dongjin'
                    , 'korea3'
                    , 'koreaseo@naver.com'
                    , 'resources/member/사진3'
                    , '010-3333-2422'
                    , 'Y'
                    );
                    
INSERT INTO MEMBER(MEM_NO,MEM_NAME,MEM_ID,MEM_PWD,NICKNAME,ADDRESS,EMAIL, PROFILE, PHONE, STATUS)
            VALUES(SEQ_MEM_NO.NEXTVAL
                    , '이호석1'
                    , 'user04'
                    , 'pass04'
                    , 'hoseok1'
                    , 'korea4'
                    , 'koreao@naver.com'
                    , 'resources/member/사진4'
                    , '010-5553-2422'
                    , 'Y'
                    );
                    
INSERT INTO MEMBER(MEM_NO,MEM_NAME,MEM_ID,MEM_PWD,NICKNAME,ADDRESS,EMAIL, PROFILE, PHONE, STATUS)
            VALUES(SEQ_MEM_NO.NEXTVAL
                    , '고영훈1'
                    , 'user05'
                    , 'pass05'
                    , 'younghoon1'
                    , 'korea5'
                    , 'koreaseo@naver.com'
                    , 'resources/member/사진5'
                    , '010-6666-2422'
                    , 'Y'
                    );
------------------------------------ BOARD -------------------------------------
CREATE TABLE BOARD(
    BOARD_NO NUMBER CONSTRAINT BOARD_NO_PK PRIMARY KEY,
    MEM_NO NUMBER CONSTRAINT MEM_NO_FK REFERENCES MEMBER ON DELETE CASCADE NOT NULL,
    BOARD_TITLE VARCHAR2(150) CONSTRAINT BOARD_TITLE_NN NOT NULL,
    BOARD_CONTENT VARCHAR2(4000) CONSTRAINT BOARD_CONTENT_NN NOT NULL,
    COUNT NUMBER DEFAULT 0,
    WRITE_DATE DATE DEFAULT SYSDATE,
    STATUS CHAR(1) DEFAULT 'Y'
);

COMMENT ON COLUMN BOARD.BOARD_NO IS '게시글 번호';
COMMENT ON COLUMN BOARD.MEM_NO IS '게시글 작성자';
COMMENT ON COLUMN BOARD.BOARD_TITLE IS '게시글 제목';
COMMENT ON COLUMN BOARD.BOARD_CONTENT IS '게시글 내용';
COMMENT ON COLUMN BOARD.COUNT IS '조회수';
COMMENT ON COLUMN BOARD.WRITE_DATE IS '작성일자';
COMMENT ON COLUMN BOARD.STATUS IS '게시글존재유무';

CREATE SEQUENCE SEQ_BOARD_NO
                INCREMENT BY    1 
                START WITH      1
                MINVALUE        1
                MAXVALUE        99999
                NOCYCLE
                NOCACHE
                NOORDER;

INSERT INTO BOARD(BOARD_NO, MEM_NO, BOARD_TITLE, BOARD_CONTENT, COUNT, WRITE_DATE, STATUS)
           VALUES(SEQ_BOARD_NO.NEXTVAL
                , 1
                , '게시글 제목1'
                , '게시글 내용1'
                , 0
                , SYSDATE
                , 'Y'
                );

INSERT INTO BOARD(BOARD_NO, MEM_NO, BOARD_TITLE, BOARD_CONTENT, COUNT, WRITE_DATE, STATUS)
           VALUES(SEQ_BOARD_NO.NEXTVAL
                , 2
                , '게시글 제목2'
                , '게시글 내용2'
                , 0
                , SYSDATE
                , 'Y'
                );
                
INSERT INTO BOARD(BOARD_NO, MEM_NO, BOARD_TITLE, BOARD_CONTENT, COUNT, WRITE_DATE, STATUS)
           VALUES(SEQ_BOARD_NO.NEXTVAL
                , 3
                , '게시글 제목3'
                , '게시글 내용3'
                , 0
                , SYSDATE
                , 'Y'
                );
                
INSERT INTO BOARD(BOARD_NO, MEM_NO, BOARD_TITLE, BOARD_CONTENT, COUNT, WRITE_DATE, STATUS)
           VALUES(SEQ_BOARD_NO.NEXTVAL
                , 4
                , '게시글 제목4'
                , '게시글 내용4'
                , 0
                , SYSDATE
                , 'Y'
                );
                
INSERT INTO BOARD(BOARD_NO, MEM_NO, BOARD_TITLE, BOARD_CONTENT, COUNT, WRITE_DATE, STATUS)
           VALUES(SEQ_BOARD_NO.NEXTVAL
                , 5
                , '게시글 제목5'
                , '게시글 내용5'
                , 0
                , SYSDATE
                , 'Y'
                );
----------------------------- BOARD_ANSWER -------------------------------------                 
CREATE TABLE BOARD_ANSWER(
    B_ANSWER_NO NUMBER CONSTRAINT B_ANSWER_NO_PK PRIMARY KEY,
    MEM_NO NUMBER CONSTRAINT ANSWER_MEM_NO_FK REFERENCES MEMBER ON DELETE CASCADE NOT NULL,
    BOARD_NO NUMBER CONSTRAINT BOARD_NO_FK REFERENCES BOARD ON DELETE CASCADE NOT NULL,
    ANSWER_CONTENT VARCHAR2(900) CONSTRAINT ANSWER_CONTENT_NN NOT NULL,
    ANSWER_DATE DATE DEFAULT SYSDATE,
    STATUS CHAR(1) DEFAULT 'Y'
);

COMMENT ON COLUMN BOARD_ANSWER.B_ANSWER_NO IS '게시글에 대한 답글 번호';
COMMENT ON COLUMN BOARD_ANSWER.MEM_NO IS '게시글 작성자 번호';
COMMENT ON COLUMN BOARD_ANSWER.BOARD_NO IS '게시글 번호';
COMMENT ON COLUMN BOARD_ANSWER.ANSWER_CONTENT IS '게시글 댓글 내용';
COMMENT ON COLUMN BOARD_ANSWER.ANSWER_DATE IS '게시글 댓글 작성 날짜';
COMMENT ON COLUMN BOARD_ANSWER.STATUS IS '상태';

CREATE SEQUENCE SEQ_B_ANSWER_NO
                INCREMENT BY    1 
                START WITH      1
                MINVALUE        1
                MAXVALUE        99999
                NOCYCLE
                NOCACHE
                NOORDER;
                
INSERT INTO BOARD_ANSWER(B_ANSWER_NO, MEM_NO, BOARD_NO, ANSWER_CONTENT, ANSWER_DATE, STATUS)
                  VALUES(SEQ_B_ANSWER_NO.NEXTVAL
                       , 1
                       , 1
                       , '게시글 댓글 내용 입니당ㅇㅇㅇㅇㅇㅇㅇ1'
                       , SYSDATE
                       , 'Y'
                       );
                       
INSERT INTO BOARD_ANSWER(B_ANSWER_NO, MEM_NO, BOARD_NO, ANSWER_CONTENT, ANSWER_DATE, STATUS)
                  VALUES(SEQ_B_ANSWER_NO.NEXTVAL
                       , 2
                       , 2
                       , '게시글 댓글 내용 입니당ㅇㅇㅇㅇㅇㅇㅇ2'
                       , SYSDATE
                       , 'Y'
                       );
                       
INSERT INTO BOARD_ANSWER(B_ANSWER_NO, MEM_NO, BOARD_NO, ANSWER_CONTENT, ANSWER_DATE, STATUS)
                  VALUES(SEQ_B_ANSWER_NO.NEXTVAL
                       , 3
                       , 3
                       , '게시글 댓글 내용 입니당ㅇㅇㅇㅇㅇㅇㅇ3'
                       , SYSDATE
                       , 'Y'
                       );
                       
INSERT INTO BOARD_ANSWER(B_ANSWER_NO, MEM_NO, BOARD_NO, ANSWER_CONTENT, ANSWER_DATE, STATUS)
                  VALUES(SEQ_B_ANSWER_NO.NEXTVAL
                       , 4
                       , 4
                       , '게시글 댓글 내용 입니당ㅇㅇㅇㅇㅇㅇㅇ4'
                       , SYSDATE
                       , 'Y'
                       );
                       
INSERT INTO BOARD_ANSWER(B_ANSWER_NO, MEM_NO, BOARD_NO, ANSWER_CONTENT, ANSWER_DATE, STATUS)
                  VALUES(SEQ_B_ANSWER_NO.NEXTVAL
                       , 5
                       , 5
                       , '게시글 댓글 내용 입니당ㅇㅇㅇㅇㅇㅇㅇ5'
                       , SYSDATE
                       , 'Y'
                       );  
------------------------------------ ATTACHMENT --------------------------------
CREATE TABLE ATTACHMENT(
    FILE_NO NUMBER CONSTRAINT FILE_NO_PK PRIMARY KEY,
    WRITE_NO NUMBER CONSTRAINT WRITE_NO_FK REFERENCES BOARD ON DELETE CASCADE NOT NULL,
    ORIGIN_NAME VARCHAR2(255 BYTE) CONSTRAINT ORIGIN_NAME_NN NOT NULL,
    CHANGE_NAME VARCHAR2(255 BYTE) CONSTRAINT CHANGE_NAME_NN NOT NULL,
    FILE_PATH VARCHAR2(1000 BYTE),
    UPLOAD_DATE DATE DEFAULT SYSDATE CONSTRAINT UPLOAD_DATE_NN NOT NULL,
    STATUS VARCHAR2(1 BYTE) DEFAULT 'Y'
);

COMMENT ON COLUMN ATTACHMENT.FILE_NO IS '파일번호';
COMMENT ON COLUMN ATTACHMENT.WRITE_NO IS '게시글 번호';
COMMENT ON COLUMN ATTACHMENT.ORIGIN_NAME IS '파일원본명';
COMMENT ON COLUMN ATTACHMENT.CHANGE_NAME IS '파일수정명';
COMMENT ON COLUMN ATTACHMENT.FILE_PATH IS '저장폴더경로';
COMMENT ON COLUMN ATTACHMENT.UPLOAD_DATE IS '업로드 날짜';
COMMENT ON COLUMN ATTACHMENT.STATUS IS '첨부파일 존재 여부';

CREATE SEQUENCE SEQ_FILE_NO
                INCREMENT BY    1 
                START WITH      1
                MINVALUE        1
                MAXVALUE        99999
                NOCYCLE
                NOCACHE
                NOORDER;

INSERT INTO ATTACHMENT(FILE_NO, WRITE_NO, ORIGIN_NAME, CHANGE_NAME, FILE_PATH, UPLOAD_DATE, STATUS)
                VALUES(SEQ_FILE_NO.NEXTVAL
                     , 1
                     , '사진1.jpg'
                     , '121504101'
                     , 'jsp/resources/board/'
                     , DEFAULT
                     , DEFAULT
                     );

INSERT INTO ATTACHMENT(FILE_NO, WRITE_NO, ORIGIN_NAME, CHANGE_NAME, UPLOAD_DATE)
                VALUES(SEQ_FILE_NO.NEXTVAL
                     , 2
                     , '사진2.jpg'
                     , '121504102'
                     , DEFAULT
                     );
                     
INSERT INTO ATTACHMENT(FILE_NO, WRITE_NO, ORIGIN_NAME, CHANGE_NAME, UPLOAD_DATE)
                VALUES(SEQ_FILE_NO.NEXTVAL
                     , 3
                     , '사진3.jpg'
                     , '121504103'
                     , DEFAULT
                     );
                     
INSERT INTO ATTACHMENT(FILE_NO, WRITE_NO, ORIGIN_NAME, CHANGE_NAME, UPLOAD_DATE)
                VALUES(SEQ_FILE_NO.NEXTVAL
                     , 4
                     , '사진4.jpg'
                     , '121504104'
                     , DEFAULT
                     );
                     
INSERT INTO ATTACHMENT(FILE_NO, WRITE_NO, ORIGIN_NAME, CHANGE_NAME, FILE_PATH, UPLOAD_DATE, STATUS)
                VALUES(SEQ_FILE_NO.NEXTVAL
                     , 1
                     , '사진1.jpg'
                     , '121504101'
                     , 'jsp/resources/board/'
                     , DEFAULT
                     , DEFAULT
                     );
------------------------------------ NOTICE ------------------------------------
CREATE TABLE NOTICE(
    NOTICE_NO NUMBER CONSTRAINT NOTICE_NO_PK PRIMARY KEY,
    MEM_NO NUMBER CONSTRAINT NOTICE_MEM_NO_FK REFERENCES MEMBER ON DELETE CASCADE NOT NULL,
    NOTICE_TITLE VARCHAR2(150) CONSTRAINT NOTICE_TITLE_NN NOT NULL,
    NOTICE_CONTENT VARCHAR2(4000) CONSTRAINT NOTICE_CONTENT_NN NOT NULL,
    NOTICE_DATE DATE DEFAULT SYSDATE,
    COUNT NUMBER DEFAULT 0 CONSTRAINT COUNT_NN NOT NULL,
    STATUS CHAR(1) DEFAULT 'Y'
);

COMMENT ON COLUMN NOTICE.NOTICE_NO IS '공지사항 번호';
COMMENT ON COLUMN NOTICE.MEM_NO IS '관리자(작성자) 번호';
COMMENT ON COLUMN NOTICE.NOTICE_TITLE IS '공지사항 제목';
COMMENT ON COLUMN NOTICE.NOTICE_CONTENT IS '공지사항 내용';
COMMENT ON COLUMN NOTICE.NOTICE_DATE IS '작성일자';
COMMENT ON COLUMN NOTICE.COUNT IS '조회수';
COMMENT ON COLUMN NOTICE.STATUS IS '공지사항존재유무';

CREATE SEQUENCE SEQ_NOTICE_NO
                INCREMENT BY    1 
                START WITH      1
                MINVALUE        1
                MAXVALUE        99999
                NOCYCLE
                NOCACHE
                NOORDER;
                
INSERT INTO NOTICE(NOTICE_NO, MEM_NO, NOTICE_TITLE, NOTICE_CONTENT, NOTICE_DATE, COUNT, STATUS)
            VALUES(SEQ_NOTICE_NO.NEXTVAL
                 , 1
                 , '공지사항 제목1'
                 , '공지사항 내용1입니당구리당당숭숭'
                 , DEFAULT
                 , DEFAULT
                 , DEFAULT
                 );
                 
INSERT INTO NOTICE(NOTICE_NO, MEM_NO, NOTICE_TITLE, NOTICE_CONTENT, NOTICE_DATE, COUNT, STATUS)
            VALUES(SEQ_NOTICE_NO.NEXTVAL
                 , 1
                 , '공지사항 제목2'
                 , '공지사항 내용2입니당구리당당숭숭'
                 , DEFAULT
                 , DEFAULT
                 , DEFAULT
                 );
                 
INSERT INTO NOTICE(NOTICE_NO, MEM_NO, NOTICE_TITLE, NOTICE_CONTENT, NOTICE_DATE, COUNT, STATUS)
            VALUES(SEQ_NOTICE_NO.NEXTVAL
                 , 1
                 , '공지사항 제목3'
                 , '공지사항 내용3입니당구리당당숭숭'
                 , DEFAULT
                 , DEFAULT
                 , DEFAULT
                 );
                 
INSERT INTO NOTICE(NOTICE_NO, MEM_NO, NOTICE_TITLE, NOTICE_CONTENT, NOTICE_DATE, COUNT, STATUS)
            VALUES(SEQ_NOTICE_NO.NEXTVAL
                 , 1
                 , '공지사항 제목4'
                 , '공지사항 내용4입니당구리당당숭숭'
                 , DEFAULT
                 , DEFAULT
                 , DEFAULT
                 );
                 
INSERT INTO NOTICE(NOTICE_NO, MEM_NO, NOTICE_TITLE, NOTICE_CONTENT, NOTICE_DATE, COUNT, STATUS)
            VALUES(SEQ_NOTICE_NO.NEXTVAL
                 , 1
                 , '공지사항 제목5'
                 , '공지사항 내용5입니당구리당당숭숭'
                 , DEFAULT
                 , DEFAULT
                 , DEFAULT
                 );
------------------------------- SERVICE_CENTER ---------------------------------
CREATE TABLE SERVICE_CENTER(
    INQUIRY_NO NUMBER CONSTRAINT INQUIRY_NO_PK PRIMARY KEY,
    MEM_NO NUMBER CONSTRAINT SERVICE_MEM_NO_FK REFERENCES MEMBER ON DELETE CASCADE NOT NULL,
    CONTENT VARCHAR2(3000) CONSTRAINT CONTENT_NN NOT NULL,
    ANSWER VARCHAR2(3000),
    INQUIRY_DATE DATE DEFAULT SYSDATE,
    ANSWER_DATE DATE,
    STATUS CHAR(1) DEFAULT 'Y'
);

COMMENT ON COLUMN SERVICE_CENTER.INQUIRY_NO IS '문의번호';
COMMENT ON COLUMN SERVICE_CENTER.MEM_NO IS '사용자번호';
COMMENT ON COLUMN SERVICE_CENTER.CONTENT IS '문의 내용';
COMMENT ON COLUMN SERVICE_CENTER.ANSWER IS '답변내용';
COMMENT ON COLUMN SERVICE_CENTER.INQUIRY_DATE IS '작성한 날짜';
COMMENT ON COLUMN SERVICE_CENTER.ANSWER_DATE IS '답변날짜';
COMMENT ON COLUMN SERVICE_CENTER.STATUS IS '질문글존재유무';

CREATE SEQUENCE SEQ_INQUIRY_NO
                INCREMENT BY    1 
                START WITH      1
                MINVALUE        1
                MAXVALUE        99999
                NOCYCLE
                NOCACHE
                NOORDER;
             
INSERT INTO SERVICE_CENTER(INQUIRY_NO, MEM_NO, CONTENT, ANSWER, INQUIRY_DATE, ANSWER_DATE, STATUS)
            VALUES(SEQ_INQUIRY_NO.NEXTVAL
                    , 1
                    , '날씨도 끈적하고 너무 힘들어요.'
                    , '그랬군요, 집에서 시원한 에어컨 바람을 쐬는건 어떨까요?'
                    , DEFAULT
                    , SYSDATE
                    , 'Y'
                    );
                    
INSERT INTO SERVICE_CENTER(INQUIRY_NO, MEM_NO, CONTENT, ANSWER, INQUIRY_DATE, ANSWER_DATE, STATUS)
            VALUES(SEQ_INQUIRY_NO.NEXTVAL
                    , 2
                    , '날씨도 끈적하고 너무 힘들어요.'
                    , '그랬군요, 집에서 시원한 에어컨 바람을 쐬는건 어떨까요?'
                    , DEFAULT
                    , SYSDATE
                    , 'Y'
                    ); 
                    
INSERT INTO SERVICE_CENTER(INQUIRY_NO, MEM_NO, CONTENT, ANSWER, INQUIRY_DATE, ANSWER_DATE, STATUS)
            VALUES(SEQ_INQUIRY_NO.NEXTVAL
                    , 3
                    , '날씨도 끈적하고 너무 힘들어요.'
                    , '그랬군요, 집에서 시원한 에어컨 바람을 쐬는건 어떨까요?'
                    , DEFAULT
                    , SYSDATE
                    , 'Y'
                    );
                    
INSERT INTO SERVICE_CENTER(INQUIRY_NO, MEM_NO, CONTENT, ANSWER, INQUIRY_DATE, ANSWER_DATE, STATUS)
            VALUES(SEQ_INQUIRY_NO.NEXTVAL
                    , 4
                    , '날씨도 끈적하고 너무 힘들어요.'
                    , '그랬군요, 집에서 시원한 에어컨 바람을 쐬는건 어떨까요?'
                    , DEFAULT
                    , SYSDATE
                    , 'Y'
                    );
                    
INSERT INTO SERVICE_CENTER(INQUIRY_NO, MEM_NO, CONTENT, ANSWER, INQUIRY_DATE, ANSWER_DATE, STATUS)
            VALUES(SEQ_INQUIRY_NO.NEXTVAL
                    , 5
                    , '날씨도 끈적하고 너무 힘들어요.'
                    , '그랬군요, 집에서 시원한 에어컨 바람을 쐬는건 어떨까요?'
                    , DEFAULT
                    , SYSDATE
                    , 'Y'
                    );                   
---------------------------------- READGOAL ------------------------------------
CREATE TABLE READGOAL(   
    MEM_NO NUMBER CONSTRAINT MEM_NO_PFK REFERENCES MEMBER ON DELETE CASCADE,
    RG_BOOK NUMBER CONSTRAINT RG_BOOK_NN NOT NULL,  
    RG_START DATE,
    RG_END DATE,
    STATUS CHAR(1) DEFAULT 'Y',
    
    PRIMARY KEY(MEM_NO)
);

COMMENT ON COLUMN READGOAL.MEM_NO IS '사용자 번호';
COMMENT ON COLUMN READGOAL.RG_BOOK IS '목표책수';
COMMENT ON COLUMN READGOAL.RG_START IS '시작일';
COMMENT ON COLUMN READGOAL.RG_END IS '종료일';
COMMENT ON COLUMN READGOAL.STATUS IS '읽기목표존재유무';

CREATE SEQUENCE SEQ_RG_NO
                INCREMENT BY    1 
                START WITH      1
                MINVALUE        1
                MAXVALUE        99999
                NOCYCLE
                NOCACHE
                NOORDER;

INSERT INTO READGOAL(MEM_NO, RG_BOOK, RG_START, RG_END, STATUS)
            VALUES(SEQ_RG_NO.NEXTVAL
                 , 55
                 , SYSDATE-20
                 , SYSDATE
                 , DEFAULT
                 );
                    
INSERT INTO READGOAL(MEM_NO, RG_BOOK, RG_START, RG_END, STATUS)
            VALUES(SEQ_RG_NO.NEXTVAL
                 , 40
                 , SYSDATE-10
                 , SYSDATE
                 , DEFAULT
                 );
                    
INSERT INTO READGOAL(MEM_NO, RG_BOOK, RG_START, RG_END, STATUS)
            VALUES(SEQ_RG_NO.NEXTVAL
                 , 35
                 , SYSDATE-30
                 , SYSDATE
                 , DEFAULT
                 );
                    
INSERT INTO READGOAL(MEM_NO, RG_BOOK, RG_START, RG_END, STATUS)
            VALUES(SEQ_RG_NO.NEXTVAL
                 , 120
                 , SYSDATE-60
                 , SYSDATE
                 , DEFAULT
                 );
                   
INSERT INTO READGOAL(MEM_NO, RG_BOOK, RG_START, RG_END, STATUS)
            VALUES(SEQ_RG_NO.NEXTVAL
                 , 80
                 , SYSDATE-31
                 , SYSDATE
                 , DEFAULT
                 );
----------------------------------- MEM_GIS ------------------------------------
CREATE TABLE MEM_GIS(
    GIS_ID NUMBER CONSTRAINT GIS_ID_PK PRIMARY KEY,
    GIS_MEM_NO NUMBER CONSTRAINT GIS_MEM_NO_FK REFERENCES MEMBER ON DELETE CASCADE NOT NULL,
    LTITUDE NUMBER(9, 6) CONSTRAINT LTITUDE_NN NOT NULL,
    LONGITUDE NUMBER(9, 6) CONSTRAINT LONGITUDE_NN NOT NULL,
    ADDRESS VARCHAR2(1000) CONSTRAINT ADDRESS_NN NOT NULL 
);

COMMENT ON COLUMN MEM_GIS.GIS_ID IS '사용자 위치 ID';
COMMENT ON COLUMN MEM_GIS.GIS_MEM_NO IS '사용자 번호';
COMMENT ON COLUMN MEM_GIS.LTITUDE IS '위도';
COMMENT ON COLUMN MEM_GIS.LONGITUDE IS '경도';
COMMENT ON COLUMN MEM_GIS.ADDRESS IS '주소';
                
INSERT INTO MEM_GIS(GIS_ID, GIS_MEM_NO, LTITUDE, LONGITUDE, ADDRESS)
             VALUES(124124
                  , 1
                  , 123.456789
                  , 123.456789
                  , '어딘가'
                  );
                  
INSERT INTO MEM_GIS(GIS_ID, GIS_MEM_NO, LTITUDE, LONGITUDE, ADDRESS)
             VALUES(845124
                  , 2
                  , 123.456789
                  , 123.456789
                  , '어딘가2'
                  );
                  
INSERT INTO MEM_GIS(GIS_ID, GIS_MEM_NO, LTITUDE, LONGITUDE, ADDRESS)
             VALUES(975185
                  , 3
                  , 123.456789
                  , 123.456789
                  , '어딘가3'
                  );
                  
INSERT INTO MEM_GIS(GIS_ID, GIS_MEM_NO, LTITUDE, LONGITUDE, ADDRESS)
             VALUES(179264
                  , 4
                  , 123.456789
                  , 123.456789
                  , '어딘가4'
                  );
                  
INSERT INTO MEM_GIS(GIS_ID, GIS_MEM_NO, LTITUDE, LONGITUDE, ADDRESS)
             VALUES(555874
                  , 5
                  , 123.456789
                  , 123.456789
                  , '어딘가5'
                  );
----------------------------------- FOLLOW -------------------------------------
CREATE TABLE FOLLOW(
    FOLLOWER_ID NUMBER CONSTRAINT FOLLOWER_ID_FK REFERENCES MEMBER ON DELETE CASCADE NOT NULL,
    FOLLOWING_ID NUMBER CONSTRAINT FOLLOWING_ID_FK REFERENCES MEMBER ON DELETE CASCADE NOT NULL,
    
    CONSTRAINT FOLLOW_PFK PRIMARY KEY(FOLLOWER_ID,FOLLOWING_ID) 
);

COMMENT ON COLUMN FOLLOW.FOLLOWER_ID IS '팔로우를 시도한 사람 ID';
COMMENT ON COLUMN FOLLOW.FOLLOWING_ID IS '팔로우 할 대상 ID';

INSERT INTO FOLLOW(FOLLOWER_ID, FOLLOWING_ID)
            VALUES(1
                 , 1
                   );
                   
INSERT INTO FOLLOW(FOLLOWER_ID, FOLLOWING_ID)
            VALUES(1
                 , 2
                   );
                   
INSERT INTO FOLLOW(FOLLOWER_ID, FOLLOWING_ID)
            VALUES(3
                 , 2
                   );
                   
INSERT INTO FOLLOW(FOLLOWER_ID, FOLLOWING_ID)
            VALUES(2
                 , 3
                   );
                   
INSERT INTO FOLLOW(FOLLOWER_ID, FOLLOWING_ID)
            VALUES(2
                 , 5
                   );
----------------------------------- GENRE --------------------------------------
CREATE TABLE GENRE(
    G_CODE VARCHAR2(100) CONSTRAINT G_CODE_PK PRIMARY KEY,
    G_NAME VARCHAR2(60) CONSTRAINT G_NAME_NN NOT NULL
); 

COMMENT ON COLUMN GENRE.G_CODE IS '장르 ID';
COMMENT ON COLUMN GENRE.G_NAME IS '장르이름';

INSERT INTO GENRE(G_CODE, G_NAME)
           VALUES('G1'
                , '소설'
                );
                
INSERT INTO GENRE(G_CODE, G_NAME)
           VALUES('G2'
                , '에세이'
                );
                
INSERT INTO GENRE(G_CODE, G_NAME)
           VALUES('G3'
                , '시'
                );
                
INSERT INTO GENRE(G_CODE, G_NAME)
           VALUES('G4'
                , '인문'
                );
                
INSERT INTO GENRE(G_CODE, G_NAME)
           VALUES('G5'
                , '자기계발'
                );
------------------------------------ BOOK --------------------------------------
CREATE TABLE BOOK(
  BOOK_NO NUMBER CONSTRAINT BOOK_NO_PK PRIMARY KEY,
  G_CODE VARCHAR2(100) CONSTRAINT G_CODE_FK REFERENCES GENRE ON DELETE CASCADE NOT NULL,
  BOOK_TITLE VARCHAR2(500) CONSTRAINT BOOK_TITLE_NN NOT NULL,
  BOOK_IMAGE VARCHAR2(4000) CONSTRAINT BOOK_IMAGE_NN NOT NULL,
  BOOK_WRITER VARCHAR2(100) CONSTRAINT BOOK_WRITER_NN NOT NULL,
  BOOK_EDITOR VARCHAR2(100),
  BOOK_PUBLISHER VARCHAR2(100) CONSTRAINT BOOK_PUBLISHER_NN NOT NULL,
  STORY VARCHAR2(4000),
  BOOK_LIKE NUMBER DEFAULT 0,
  VOTE_RESULT NUMBER DEFAULT 0
);

COMMENT ON COLUMN BOOK.BOOK_NO IS '책번호';
COMMENT ON COLUMN BOOK.G_CODE IS '장르ID';
COMMENT ON COLUMN BOOK.BOOK_TITLE IS '책제목';
COMMENT ON COLUMN BOOK.BOOK_IMAGE IS '책 이미지';
COMMENT ON COLUMN BOOK.BOOK_WRITER IS '작가정보';
COMMENT ON COLUMN BOOK.BOOK_EDITOR IS '엮은이';
COMMENT ON COLUMN BOOK.BOOK_PUBLISHER IS '출판사';
COMMENT ON COLUMN BOOK.STORY IS '줄거리';
COMMENT ON COLUMN BOOK.BOOK_LIKE IS '좋아요수';
COMMENT ON COLUMN BOOK.VOTE_RESULT IS '온라인 투표 결과 COUNT';


CREATE SEQUENCE SEQ_BOOK_NO
                INCREMENT BY    1 
                START WITH      1
                MINVALUE        1
                MAXVALUE        99999
                NOCYCLE
                NOCACHE
                NOORDER;

INSERT INTO BOOK(BOOK_NO,
                G_CODE,
                BOOK_TITLE,
                BOOK_IMAGE,
                BOOK_WRITER,
                BOOK_EDITOR,
                BOOK_PUBLISHER,
                STORY,
                BOOK_LIKE,
                VOTE_RESULT)
            VALUES(SEQ_BOOK_NO.NEXTVAL
                ,'G1'
                ,'화려한 발차기가 나를 감싸네'
                ,'resources/book/img/책1.jpg'
                ,'불꽃남자서동진' 
                ,'엮은이1'
                ,'이쁨출판사'
                ,'갑작스럽게 하게된 3만명앞에서 10분간의 스피치타임, 나는 태권도를 하기로 했다.'
                ,31
                ,0
                );
                
INSERT INTO BOOK(BOOK_NO,
                G_CODE,
                BOOK_TITLE,
                BOOK_IMAGE,
                BOOK_WRITER,
                BOOK_EDITOR,
                BOOK_PUBLISHER,
                STORY,
                BOOK_LIKE,
                VOTE_RESULT)
            VALUES(SEQ_BOOK_NO.NEXTVAL
                ,'G2'
                ,'화려한 발차기가 나를 감싸네22222'
                ,'resources/book/img/책2.jpg'
                ,'불꽃남자서동진222' 
                ,'엮은이2'
                ,'이쁨출판사222'
                ,'2갑작스럽게 하게된 20만명앞에서 10분간의 스피치타임, 나는 태권도를 하기로 했다.'
                ,10
                ,0
                );
                
INSERT INTO BOOK(BOOK_NO,
                G_CODE,
                BOOK_TITLE,
                BOOK_IMAGE,
                BOOK_WRITER,
                BOOK_EDITOR,
                BOOK_PUBLISHER,
                STORY,
                BOOK_LIKE,
                VOTE_RESULT)
            VALUES(SEQ_BOOK_NO.NEXTVAL
                ,'G3'
                ,'화려한 발차기가 나를 감싸네3'
                ,'resources/book/img/책3.jpg'
                ,'불꽃남자서동진333' 
                ,'엮은이3'
                ,'이쁨출판사3'
                ,'3갑작스럽게 하게된 30만명앞에서 10분간의 스피치타임, 나는 태권도를 하기로 했다.'
                ,59
                ,0
                );  
                
INSERT INTO BOOK(BOOK_NO,
                G_CODE,
                BOOK_TITLE,
                BOOK_IMAGE,
                BOOK_WRITER,
                BOOK_EDITOR,
                BOOK_PUBLISHER,
                STORY,
                BOOK_LIKE,
                VOTE_RESULT)
            VALUES(SEQ_BOOK_NO.NEXTVAL
                ,'G4'
                ,'화려한 발차기가 나를 감싸네4'
                ,'resources/book/img/책4.jpg'
                ,'불꽃남자서동진44' 
                ,'엮은이4'
                ,'이쁨출판사44'
                ,'갑작스럽게 하게된 4만명앞에서 10분간의 스피치타임, 나는 태권도를 하기로 했다.'
                ,950
                ,0
                );
                
INSERT INTO BOOK(BOOK_NO,
                G_CODE,
                BOOK_TITLE,
                BOOK_IMAGE,
                BOOK_WRITER,
                BOOK_EDITOR,
                BOOK_PUBLISHER,
                STORY,
                BOOK_LIKE,
                VOTE_RESULT)
            VALUES(SEQ_BOOK_NO.NEXTVAL
                ,'G5'
                ,'화려한 발차기가 나를 감싸네55555'
                ,'resources/book/img/책5.jpg'
                ,'불꽃남자서동진555' 
                ,'엮은이5'
                ,'이쁨출판사55'
                ,'갑작스럽게 하게된 5000만명앞에서 10분간의 스피치타임, 나는 태권도를 하기로 했다.'
                ,5000
                ,0
                );
------------------------------------- VOTE -------------------------------------
CREATE TABLE VOTE(
    VOTE_NO NUMBER CONSTRAINT VOTE_NO_PK PRIMARY KEY,
    MEM_NO NUMBER CONSTRAINT VOTE_MEM_NO_FK REFERENCES MEMBER ON DELETE CASCADE NOT NULL,
    VOTE_TITLE VARCHAR2(500) CONSTRAINT VOTE_TITLE_NN NOT NULL,
    BOOK_NO1 NUMBER CONSTRAINT BOOK_NO1_FK REFERENCES BOOK ON DELETE CASCADE NOT NULL,
    BOOK_NO2 NUMBER CONSTRAINT BOOK_NO2_FK REFERENCES BOOK ON DELETE CASCADE NOT NULL,
    VOTE_STARTDATE DATE DEFAULT SYSDATE,
    VOTE_ENDDATE DATE CONSTRAINT VOTE_ENDDATE_NN NOT NULL,
    VOTE_COUNT1 NUMBER DEFAULT 0,
    VOTE_COUNT2 NUMBER DEFAULT 0,
    STATUS CHAR(1) DEFAULT 'Y'
);

COMMENT ON COLUMN VOTE.VOTE_NO IS '투표번호ID';
COMMENT ON COLUMN VOTE.MEM_NO IS '사용자 번호';
COMMENT ON COLUMN VOTE.VOTE_TITLE IS '투표 제목';
COMMENT ON COLUMN VOTE.BOOK_NO1 IS '투표도서1';
COMMENT ON COLUMN VOTE.BOOK_NO2 IS '투표도서2';
COMMENT ON COLUMN VOTE.VOTE_STARTDATE IS '투표 시작일(시간)';
COMMENT ON COLUMN VOTE.VOTE_ENDDATE IS '투표 종료일(시간)';
COMMENT ON COLUMN VOTE.VOTE_COUNT1 IS '책1 투표 수 현황';
COMMENT ON COLUMN VOTE.VOTE_COUNT2 IS '책2 투표 수 현황';
COMMENT ON COLUMN VOTE.STATUS IS '투표 글 존재 유무';

CREATE SEQUENCE SEQ_VOTE_NO
                INCREMENT BY    1 
                START WITH      1
                MINVALUE        1
                MAXVALUE        99999
                NOCYCLE
                NOCACHE
                NOORDER;

INSERT INTO VOTE(VOTE_NO, MEM_NO, VOTE_TITLE, BOOK_NO1, BOOK_NO2, VOTE_STARTDATE, VOTE_ENDDATE, VOTE_COUNT1, VOTE_COUNT2, STATUS)
          VALUES(SEQ_VOTE_NO.NEXTVAL
               , 2
               , '투표 제목1'
               , 1
               , 2
               , DEFAULT
               , SYSDATE
               , DEFAULT
               , 0
               , DEFAULT
               );
               
INSERT INTO VOTE(VOTE_NO, MEM_NO, VOTE_TITLE, BOOK_NO1, BOOK_NO2, VOTE_STARTDATE, VOTE_ENDDATE, VOTE_COUNT1, VOTE_COUNT2, STATUS)
          VALUES(SEQ_VOTE_NO.NEXTVAL
               , 3
               , '투표 제목1'
               , 2
               , 3
               , DEFAULT
               , SYSDATE
               , DEFAULT
               , 0
               , DEFAULT
               );
               
INSERT INTO VOTE(VOTE_NO, MEM_NO, VOTE_TITLE, BOOK_NO1, BOOK_NO2, VOTE_STARTDATE, VOTE_ENDDATE, VOTE_COUNT1, VOTE_COUNT2, STATUS)
          VALUES(SEQ_VOTE_NO.NEXTVAL
               , 4
               , '투표 제목1'
               , 4
               , 5
               , DEFAULT
               , SYSDATE
               , DEFAULT
               , 0
               , DEFAULT
               );
               
INSERT INTO VOTE(VOTE_NO, MEM_NO, VOTE_TITLE, BOOK_NO1, BOOK_NO2, VOTE_STARTDATE, VOTE_ENDDATE, VOTE_COUNT1, VOTE_COUNT2, STATUS)
          VALUES(SEQ_VOTE_NO.NEXTVAL
               , 5
               , '투표 제목1'
               , 5
               , 1
               , DEFAULT
               , SYSDATE
               , DEFAULT
               , 0
               , DEFAULT
               );
               
INSERT INTO VOTE(VOTE_NO, MEM_NO, VOTE_TITLE, BOOK_NO1, BOOK_NO2, VOTE_STARTDATE, VOTE_ENDDATE, VOTE_COUNT1, VOTE_COUNT2, STATUS)
          VALUES(SEQ_VOTE_NO.NEXTVAL
               , 3
               , '투표 제목1'
               , 2
               , 5
               , DEFAULT
               , SYSDATE
               , DEFAULT
               , 0
               , DEFAULT
               );
--------------------------------- COMMENTARY -----------------------------------
CREATE TABLE COMMENTARY(
    WRITE_NO NUMBER CONSTRAINT WRITE_NO_PK PRIMARY KEY,
    MEM_NO NUMBER CONSTRAINT COMMENTARY_MEM_NO_FK REFERENCES MEMBER ON DELETE CASCADE NOT NULL,
    BOOK_NO NUMBER CONSTRAINT COMMENTARY_BOOK_NO_FK REFERENCES BOOK ON DELETE CASCADE NOT NULL,
    CONTENT VARCHAR2(3000) CONSTRAINT COMMENTARY_CONTENT_NN NOT NULL,
    RATING NUMBER DEFAULT 1 CONSTRAINT COMMENTARY_RATING_NN NOT NULL,
    WRITE_DATE DATE DEFAULT SYSDATE,
    STATUS CHAR(1) DEFAULT 'Y'
);               

COMMENT ON COLUMN COMMENTARY.WRITE_NO IS '감상문 고유 ID';
COMMENT ON COLUMN COMMENTARY.MEM_NO IS '사용자 번호';
COMMENT ON COLUMN COMMENTARY.BOOK_NO IS '책번호';
COMMENT ON COLUMN COMMENTARY.CONTENT IS '감상문 내용';
COMMENT ON COLUMN COMMENTARY.RATING IS '평점';
COMMENT ON COLUMN COMMENTARY.WRITE_DATE IS '작성날짜';
COMMENT ON COLUMN COMMENTARY.WRITE_DATE IS '감상문존재유무';
   
CREATE SEQUENCE SEQ_COMMENTARY_NO
                INCREMENT BY    1 
                START WITH      1
                MINVALUE        1
                MAXVALUE        99999
                NOCYCLE
                NOCACHE
                NOORDER;    
                
INSERT INTO COMMENTARY(
                WRITE_NO,
                MEM_NO ,
                BOOK_NO,
                CONTENT,
                RATING,
                WRITE_DATE)
            VALUES(SEQ_COMMENTARY_NO.NEXTVAL
                    , 4
                    , 5
                    , '직접 해보는건 어떨까요? 핑프세요?'
                    , 4
                    , SYSDATE
                    ); 
                    
INSERT INTO COMMENTARY(
                WRITE_NO,
                MEM_NO ,
                BOOK_NO,
                CONTENT,
                RATING,
                WRITE_DATE)
            VALUES(SEQ_COMMENTARY_NO.NEXTVAL
                    , 5
                    , 2
                    , '직접 해보는건 어떨까요? 핑프세요?'
                    , 4
                    , SYSDATE
                    ); 
                    
INSERT INTO COMMENTARY(
                WRITE_NO,
                MEM_NO ,
                BOOK_NO,
                CONTENT,
                RATING,
                WRITE_DATE)
            VALUES(SEQ_COMMENTARY_NO.NEXTVAL
                    , 1
                    , 3
                    , '직접 해보는건 어떨까요? 핑프세요?'
                    , 4
                    , SYSDATE
                    ); 
                    
INSERT INTO COMMENTARY(
                WRITE_NO,
                MEM_NO ,
                BOOK_NO,
                CONTENT,
                RATING,
                WRITE_DATE)
            VALUES(SEQ_COMMENTARY_NO.NEXTVAL
                    , 2
                    , 4
                    , '직접 해보는건 어떨까요? 핑프세요?'
                    , 4
                    , SYSDATE);
                    
INSERT INTO COMMENTARY(
                WRITE_NO,
                MEM_NO ,
                BOOK_NO,
                CONTENT,
                RATING,
                WRITE_DATE)
            VALUES(SEQ_COMMENTARY_NO.NEXTVAL
                    , 3
                    , 5
                    , '직접 해보는건 어떨까요? 핑프세요?'
                    , 4
                    , SYSDATE
                    ); 
----------------------------------- LIBRARY ------------------------------------
CREATE TABLE LIBRARY(
    L_NO NUMBER CONSTRAINT L_NO_PK PRIMARY KEY,
    L_NAME VARCHAR2(50) CONSTRAINT L_NAME_NN NOT NULL,
    L_LATITUDE NUMBER CONSTRAINT L_LATITUDE_NN NOT NULL,
    L_LONGITUDE NUMBER CONSTRAINT L_LONGITUDE_NN NOT NULL,
    L_LOCATION_NAME VARCHAR2(100) CONSTRAINT L_LOCATION_NAME_NN NOT NULL,
    L_LOCATION VARCHAR2(100) CONSTRAINT L_LOCATION_NN NOT NULL,
    HOLIDAYINFO VARCHAR2(500),
    L_OPEN VARCHAR2(50),
    L_END VARCHAR2(50),
    L_TEL VARCHAR2(20),
    L_ADDRESS VARCHAR2(1000) CONSTRAINT L_ADDRESS_NN NOT NULL
);

COMMENT ON COLUMN LIBRARY.L_NO IS '서고번호';
COMMENT ON COLUMN LIBRARY.L_NAME IS '서고이름';
COMMENT ON COLUMN LIBRARY.L_LATITUDE IS '서고위도';
COMMENT ON COLUMN LIBRARY.L_LONGITUDE IS '서고경도';
COMMENT ON COLUMN LIBRARY.L_LOCATION_NAME IS '서고 시도명';
COMMENT ON COLUMN LIBRARY.L_LOCATION IS '서고 시군구';
COMMENT ON COLUMN LIBRARY.HOLIDAYINFO IS '휴관일 정보';
COMMENT ON COLUMN LIBRARY.L_OPEN IS '운영시작일시';
COMMENT ON COLUMN LIBRARY.L_END IS '운영종료일시';
COMMENT ON COLUMN LIBRARY.L_TEL IS '서고 전화번호';
COMMENT ON COLUMN LIBRARY.L_ADDRESS IS '서고 도로명주소';

CREATE SEQUENCE SEQ_LIBRARY_NO
                INCREMENT BY    1 
                START WITH      1
                MINVALUE        1
                MAXVALUE        99999
                NOCYCLE
                NOCACHE
                NOORDER; 
                
INSERT INTO LIBRARY(
                L_NO,
                L_NAME,
                L_LATITUDE,
                L_LONGITUDE,
                L_LOCATION_NAME,
                L_LOCATION,
                HOLIDAYINFO,
                L_OPEN,
                L_END,
                L_TEL,
                L_ADDRESS)
            VALUES(SEQ_LIBRARY_NO.NEXTVAL
                    , '대도서관1'
                    , 123.456789
                    , 123.456789
                    , '서울시'
                    , '강남구'
                    , '공휴일, 매월 마지막주 수요일'
                    , '오전10시 30분'
                    , '오후10시'
                    , '010-0112-0112'
                    , '하하하하하'
                    );
                    
INSERT INTO LIBRARY(
                L_NO,
                L_NAME,
                L_LATITUDE,
                L_LONGITUDE,
                L_LOCATION_NAME,
                L_LOCATION,
                HOLIDAYINFO,
                L_OPEN,
                L_END,
                L_TEL,
                L_ADDRESS)
            VALUES(SEQ_LIBRARY_NO.NEXTVAL
                    , '대도서관2'
                    , 123.456789
                    , 123.456789
                    , '서울시'
                    , '강남구'
                    , '공휴일'
                    , '10:00'
                    , '22:00'
                    , '010-0112-0112'
                    , '하하하하하'
                    );
                    
INSERT INTO LIBRARY(
                L_NO,
                L_NAME,
                L_LATITUDE,
                L_LONGITUDE,
                L_LOCATION_NAME,
                L_LOCATION,
                HOLIDAYINFO,
                L_OPEN,
                L_END,
                L_TEL,
                L_ADDRESS)
            VALUES(SEQ_LIBRARY_NO.NEXTVAL
                    , '대도서관3'
                    , 123.456789
                    , 123.456789
                    , '서울시'
                    , '강남구'
                    , '공휴일, 매주 금요일'
                    , '오전9시'
                    , '오후6시'
                    , '010-0112-0112'
                    , '하하하하하'
                    );
                    
INSERT INTO LIBRARY(
                L_NO,
                L_NAME,
                L_LATITUDE,
                L_LONGITUDE,
                L_LOCATION_NAME,
                L_LOCATION,
                HOLIDAYINFO,
                L_OPEN,
                L_END,
                L_TEL,
                L_ADDRESS)
            VALUES(SEQ_LIBRARY_NO.NEXTVAL
                    , '대도서관4'
                    , 123.456789
                    , 123.456789
                    , '서울시'
                    , '강남구'
                    , '국가공휴일, 매월 셋째주 월요일'
                    , '오전8시30분'
                    , '오후9시30분'
                    , '010-0112-0112'
                    , '하하하하하'
                    );
                    
INSERT INTO LIBRARY(
                L_NO,
                L_NAME,
                L_LATITUDE,
                L_LONGITUDE,
                L_LOCATION_NAME,
                L_LOCATION,
                HOLIDAYINFO,
                L_OPEN,
                L_END,
                L_TEL,
                L_ADDRESS)
            VALUES(SEQ_LIBRARY_NO.NEXTVAL
                    , '대도서관5'
                    , 123.456789
                    , 123.456789
                    , '서울시'
                    , '강남구'
                    , '연중무휴'
                    , '09:00'
                    , '18:00'
                    , '010-0112-0112'
                    , '하하하하하'
                    );
----------------------------------- LIKES --------------------------------------
CREATE TABLE LIKES (
    MEM_NO NUMBER CONSTRAINT LIKES_MEM_NO_FK REFERENCES MEMBER ON DELETE CASCADE NOT NULL,
    BOOK_NO NUMBER CONSTRAINT LIKES_BOOK_NO_FK REFERENCES BOOK ON DELETE CASCADE NOT NULL,

    CONSTRAINT LIKES_PFK PRIMARY KEY(MEM_NO, BOOK_NO)
);

COMMENT ON COLUMN LIKES.MEM_NO IS '사용자 번호';
COMMENT ON COLUMN LIKES.BOOK_NO IS '책 번호';

INSERT INTO LIKES(
                MEM_NO,
                BOOK_NO
                )
            VALUES(
                    1
                    , 3
                    );
                    
INSERT INTO LIKES(
                MEM_NO,
                BOOK_NO
                )
            VALUES(
                    2
                    , 4
                    );
                    
INSERT INTO LIKES(
                MEM_NO,
                BOOK_NO
                )
            VALUES(
                    2
                    , 5
                    );
                    
INSERT INTO LIKES(
                MEM_NO,
                BOOK_NO
                )
            VALUES(
                    3
                    , 4
                    );
                    
INSERT INTO LIKES(
                MEM_NO,
                BOOK_NO
                )
            VALUES(
                    1
                    , 4
                    );
----------------------------------- REVIEW --------------------------------------
CREATE TABLE REVIEW(
    REVIEW_NO   NUMBER CONSTRAINT REVIEW_NO_PK PRIMARY KEY,
    REVIEW      VARCHAR2(900) CONSTRAINT REVIEW_NN NOT NULL,
    BOOK_NO     NUMBER CONSTRAINT BOOK_NO_FK REFERENCES BOOK ON DELETE CASCADE NOT NULL,
    MEM_NO      NUMBER CONSTRAINT REVIEW_MEM_NO_FK REFERENCES MEMBER ON DELETE CASCADE NOT NULL,
    REVIEW_DATE DATE DEFAULT SYSDATE,
    REVIEW_LIKE NUMBER DEFAULT 0, 
    RATING      NUMBER DEFAULT 1 CONSTRAINT RATING_NN NOT NULL,
    STATUS      CHAR(1) DEFAULT 'Y'
);

COMMENT ON COLUMN REVIEW.REVIEW_NO IS '리뷰번호';
COMMENT ON COLUMN REVIEW.REVIEW IS '리뷰내용';
COMMENT ON COLUMN REVIEW.BOOK_NO IS '책번호';
COMMENT ON COLUMN REVIEW.MEM_NO IS '사용자번호';
COMMENT ON COLUMN REVIEW.REVIEW_DATE IS '리뷰작성날짜';
COMMENT ON COLUMN REVIEW.REVIEW_LIKE IS '좋아요 개수';
COMMENT ON COLUMN REVIEW.RATING IS '별점 개수';
COMMENT ON COLUMN REVIEW.STATUS IS '리뷰 존재여부';

CREATE SEQUENCE SEQ_REVIEW;

INSERT INTO REVIEW(
                REVIEW_NO,
                REVIEW,
                BOOK_NO,
                MEM_NO,
                REVIEW_LIKE,
                RATING,
                STATUS
                )
            VALUES(  SEQ_REVIEW.NEXTVAL
                    ,'리뷰내용이 들어올 자리입니다.1'
                    ,3
                    ,4
                    ,35
                    ,5
                    ,DEFAULT
                    );
                    
INSERT INTO REVIEW(
                REVIEW_NO,
                REVIEW,
                BOOK_NO,
                MEM_NO,
                REVIEW_LIKE,
                RATING,
                STATUS
                )
            VALUES(  SEQ_REVIEW.NEXTVAL
                    ,'리뷰내용이 들어올 자리입니다.2'
                    ,2
                    ,2
                    ,10
                    ,4
                    ,DEFAULT
                    );
                    
INSERT INTO REVIEW(
                REVIEW_NO,
                REVIEW,
                BOOK_NO,
                MEM_NO,
                REVIEW_LIKE,
                RATING,
                STATUS
                )
            VALUES(  SEQ_REVIEW.NEXTVAL
                    ,'리뷰내용이 들어올 자리입니다.3'
                    ,4
                    ,5
                    ,350
                    ,2
                    ,DEFAULT
                    );
                    
INSERT INTO REVIEW(
                REVIEW_NO,
                REVIEW,
                BOOK_NO,
                MEM_NO,
                REVIEW_LIKE,
                RATING,
                STATUS
                )
            VALUES(  SEQ_REVIEW.NEXTVAL
                    ,'리뷰내용이 들어올 자리입니다.4'
                    ,3
                    ,4
                    ,2
                    ,1
                    ,DEFAULT
                    );
                    
INSERT INTO REVIEW(
                REVIEW_NO,
                REVIEW,
                BOOK_NO,
                MEM_NO,
                REVIEW_LIKE,
                RATING,
                STATUS
                )
            VALUES(  SEQ_REVIEW.NEXTVAL
                    ,'리뷰내용이 들어올 자리입니다.5'
                    ,4
                    ,5
                    ,15
                    ,3
                    ,DEFAULT
                    );
-------------------------------- REVIEW_ANSWER ---------------------------------
CREATE TABLE REVIEW_ANSWER(
    R_ANSWER_NO NUMBER CONSTRAINT R_ANSWER_NO_PK PRIMARY KEY,
    REVIEW_NO NUMBER CONSTRAINT REVIEW_NO_FK REFERENCES REVIEW ON DELETE CASCADE NOT NULL,
    R_ANSWER VARCHAR2(900) CONSTRAINT R_ANSWER_NN NOT NULL,
    STATUS CHAR(1) DEFAULT 'Y'
);

COMMENT ON COLUMN REVIEW_ANSWER.R_ANSWER_NO IS '리뷰에 대한 답글 번호';
COMMENT ON COLUMN REVIEW_ANSWER.R_ANSWER IS '리뷰번호';
COMMENT ON COLUMN REVIEW_ANSWER.REVIEW_NO IS '리뷰에 대한 답글';
COMMENT ON COLUMN REVIEW_ANSWER.REVIEW_NO IS '리뷰 댓글 존재 여부';

CREATE SEQUENCE SEQ_R_ANSWER_NO;

INSERT INTO REVIEW_ANSWER(R_ANSWER_NO, REVIEW_NO, R_ANSWER, STATUS)
                   VALUES(SEQ_R_ANSWER_NO.NEXTVAL
                        , 1
                        , '리뷰에대한 답글 1입니다 ㅋㅌㅋㅌㅋㅌㅋㅌ'
                        , 'Y'
                        );
                        
INSERT INTO REVIEW_ANSWER(R_ANSWER_NO, REVIEW_NO, R_ANSWER, STATUS)
                   VALUES(SEQ_R_ANSWER_NO.NEXTVAL
                        , 2
                        , '리뷰에대한 답글 2입니다 ㅋㅌㅋㅌㅋㅌㅋㅌ'
                        , 'Y'
                        );
                        
INSERT INTO REVIEW_ANSWER(R_ANSWER_NO, REVIEW_NO, R_ANSWER, STATUS)
                   VALUES(SEQ_R_ANSWER_NO.NEXTVAL
                        , 3
                        , '리뷰에대한 답글 3입니다 ㅋㅌㅋㅌㅋㅌㅋㅌ'
                        , 'Y'
                        );
                        
INSERT INTO REVIEW_ANSWER(R_ANSWER_NO, REVIEW_NO, R_ANSWER, STATUS)
                   VALUES(SEQ_R_ANSWER_NO.NEXTVAL
                        , 4
                        , '리뷰에대한 답글 4입니다 ㅋㅌㅋㅌㅋㅌㅋㅌ'
                        , 'Y'
                        );
                        
INSERT INTO REVIEW_ANSWER(R_ANSWER_NO, REVIEW_NO, R_ANSWER, STATUS)
                   VALUES(SEQ_R_ANSWER_NO.NEXTVAL
                        , 5
                        , '리뷰에대한 답글 5입니다 ㅋㅌㅋㅌㅋㅌㅋㅌ'
                        , 'Y'
                        );
-------------------------------- REVIEW_ANSWER ---------------------------------
CREATE TABLE FNA(
    FNA_NO NUMBER CONSTRAINT FNA_NO_PK PRIMARY KEY,
    FNA_TITLE VARCHAR2(3000) CONSTRAINT FNA_TITLE_NN NOT NULL,
    CONTENT VARCHAR2(3000) CONSTRAINT FNA_CONTENT_NN NOT NULL,
    ANSWER VARCHAR2(3000),
    INQUIRY_DATE DATE DEFAULT SYSDATE,
    STATUS CHAR(1) DEFAULT 'Y'
);

COMMENT ON COLUMN FNA.FNA_NO IS 'FNA번호';
COMMENT ON COLUMN FNA.FNA_TITLE IS 'FNA제목';
COMMENT ON COLUMN FNA.CONTENT IS '자주하는 질문내용';
COMMENT ON COLUMN FNA.ANSWER IS '답변내용';
COMMENT ON COLUMN FNA.INQUIRY_DATE IS '작성한 날짜';
COMMENT ON COLUMN FNA.STATUS IS 'FNA 존재유무상태';

CREATE SEQUENCE SEQ_FNA_NO;

INSERT INTO FNA(FNA_NO, FNA_TITLE, CONTENT, ANSWER, INQUIRY_DATE, STATUS)
         VALUES(SEQ_FNA_NO.NEXTVAL
              , 'FNA제목1'
              , 'FNA 질문 내용입니다람쥐렁이1'
              , 'FNA에 대한 답변 내용입니다람쥐렁이1'
              , DEFAULT
              , DEFAULT
              );
              
INSERT INTO FNA(FNA_NO, FNA_TITLE, CONTENT, ANSWER, INQUIRY_DATE, STATUS)
         VALUES(SEQ_FNA_NO.NEXTVAL
              , 'FNA제목2'
              , 'FNA 질문 내용입니다람쥐렁이2'
              , 'FNA에 대한 답변 내용입니다람쥐렁이2'
              , DEFAULT
              , DEFAULT
              );
              
INSERT INTO FNA(FNA_NO, FNA_TITLE, CONTENT, ANSWER, INQUIRY_DATE, STATUS)
         VALUES(SEQ_FNA_NO.NEXTVAL
              , 'FNA제목3'
              , 'FNA 질문 내용입니다람쥐렁이3'
              , 'FNA에 대한 답변 내용입니다람쥐렁이3'
              , DEFAULT
              , DEFAULT
              );
              
INSERT INTO FNA(FNA_NO, FNA_TITLE, CONTENT, ANSWER, INQUIRY_DATE, STATUS)
         VALUES(SEQ_FNA_NO.NEXTVAL
              , 'FNA제목4'
              , 'FNA 질문 내용입니다람쥐렁이4'
              , 'FNA에 대한 답변 내용입니다람쥐렁이4'
              , DEFAULT
              , DEFAULT
              );
              
INSERT INTO FNA(FNA_NO, FNA_TITLE, CONTENT, ANSWER, INQUIRY_DATE, STATUS)
         VALUES(SEQ_FNA_NO.NEXTVAL
              , 'FNA제목5'
              , 'FNA 질문 내용입니다람쥐렁이5'
              , 'FNA에 대한 답변 내용입니다람쥐렁이5'
              , DEFAULT
              , DEFAULT
              );
---------------------------------- VOTE_ANSWER ---------------------------------          
CREATE TABLE VOTE_ANSWER(
    V_ANSWER_NO NUMBER CONSTRAINT V_ANSWER_NO_PK PRIMARY KEY,
    VOTE_NO NUMBER CONSTRAINT VOTE_NO_FK REFERENCES VOTE ON DELETE CASCADE NOT NULL,
    MEM_NO NUMBER CONSTRAINT VOTE_ANSWER_MEM_NO_FK REFERENCES MEMBER ON DELETE CASCADE NOT NULL,
    V_ANSWER VARCHAR2(900) CONSTRAINT V_ANSWER_NN NOT NULL,
    ANSWER_DATE DATE DEFAULT SYSDATE,
    STATUS CHAR(1) DEFAULT 'Y'
);
              
COMMENT ON COLUMN VOTE_ANSWER.V_ANSWER_NO IS '투표에 대한 답글 번호';
COMMENT ON COLUMN VOTE_ANSWER.VOTE_NO IS '투표번호ID';
COMMENT ON COLUMN VOTE_ANSWER.MEM_NO IS '투표 작성자 번호';
COMMENT ON COLUMN VOTE_ANSWER.V_ANSWER IS '투표 댓글';
COMMENT ON COLUMN VOTE_ANSWER.ANSWER_DATE IS '투표 댓글 작성 날짜';
COMMENT ON COLUMN VOTE_ANSWER.STATUS IS '투표 댓글 존재 유무(Y존재 N삭제)';
             
CREATE SEQUENCE SEQ_V_ANSWER_NO;

INSERT INTO VOTE_ANSWER(V_ANSWER_NO, VOTE_NO, MEM_NO, V_ANSWER, ANSWER_DATE, STATUS)
                 VALUES(SEQ_V_ANSWER_NO.NEXTVAL
                      , 1
                      , 2
                      , '투표에 대한 댓글1 입니다람쥐렁이빨대나무엇이든물어보살'
                      , DEFAULT
                      , 'Y'
                      );
                      
INSERT INTO VOTE_ANSWER(V_ANSWER_NO, VOTE_NO, MEM_NO, V_ANSWER, ANSWER_DATE, STATUS)
                 VALUES(SEQ_V_ANSWER_NO.NEXTVAL
                      , 2
                      , 3
                      , '투표에 대한 댓글2 입니다람쥐렁이빨대나무엇이든물어보살'
                      , DEFAULT
                      , 'Y'
                      );
                      
INSERT INTO VOTE_ANSWER(V_ANSWER_NO, VOTE_NO, MEM_NO, V_ANSWER, ANSWER_DATE, STATUS)
                 VALUES(SEQ_V_ANSWER_NO.NEXTVAL
                      , 3
                      , 4
                      , '투표에 대한 댓글3 입니다람쥐렁이빨대나무엇이든물어보살'
                      , DEFAULT
                      , 'Y'
                      );
                      
INSERT INTO VOTE_ANSWER(V_ANSWER_NO, VOTE_NO, MEM_NO, V_ANSWER, ANSWER_DATE, STATUS)
                 VALUES(SEQ_V_ANSWER_NO.NEXTVAL
                      , 4
                      , 5
                      , '투표에 대한 댓글4 입니다람쥐렁이빨대나무엇이든물어보살'
                      , DEFAULT
                      , 'Y'
                      );
                      
INSERT INTO VOTE_ANSWER(V_ANSWER_NO, VOTE_NO, MEM_NO, V_ANSWER, ANSWER_DATE, STATUS)
                 VALUES(SEQ_V_ANSWER_NO.NEXTVAL
                      , 5
                      , 5
                      , '투표에 대한 댓글1 입니다람쥐렁이빨대나무엇이든물어보살'
                      , DEFAULT
                      , 'Y'
                      );
                      
-------------------------------- MEMBER_SOCIAL ---------------------------------
CREATE TABLE MEMBER_SOCIAL(
    SOCIAL_ID NUMBER CONSTRAINT SOCIAL_ID_PK PRIMARY KEY,
    MEM_NO NUMBER CONSTRAINT MEMBER_SOCIAL_MEM_NO_FK REFERENCES MEMBER ON DELETE CASCADE NOT NULL,
    PROVIDER VARCHAR2(20) CONSTRAINT PROVIDER_NN NOT NULL,
    PROVIDER_ID VARCHAR2(60) CONSTRAINT PROVIDER_ID_NN NOT NULL
);

CREATE SEQUENCE SEQ_SOCIAL_ID;

COMMENT ON COLUMN MEMBER_SOCIAL.SOCIAL_ID IS '소셜로그인정보';
COMMENT ON COLUMN MEMBER_SOCIAL.MEM_NO IS '사용자 번호';
COMMENT ON COLUMN MEMBER_SOCIAL.PROVIDER IS '소셜로그인 제공자(KAKAO, GOOGLE, APPLE)';
COMMENT ON COLUMN MEMBER_SOCIAL.PROVIDER_ID IS '각 소셜 로그인에서 제공하는 회원 고유 ID';

INSERT INTO MEMBER_SOCIAL(SOCIAL_ID, MEM_NO, PROVIDER, PROVIDER_ID)
                   VALUES(SEQ_SOCIAL_ID.NEXTVAL
                        , 2
                        , 'KAKAO'
                        , '31CS24'
                        );
                        
INSERT INTO MEMBER_SOCIAL(SOCIAL_ID, MEM_NO, PROVIDER, PROVIDER_ID)
                   VALUES(SEQ_SOCIAL_ID.NEXTVAL
                        , 3
                        , 'GOOGLE'
                        , '48SG94'
                        );
                        
INSERT INTO MEMBER_SOCIAL(SOCIAL_ID, MEM_NO, PROVIDER, PROVIDER_ID)
                   VALUES(SEQ_SOCIAL_ID.NEXTVAL
                        , 4
                        , 'APPLE'
                        , '27CB94'
                        );
                        
INSERT INTO MEMBER_SOCIAL(SOCIAL_ID, MEM_NO, PROVIDER, PROVIDER_ID)
                   VALUES(SEQ_SOCIAL_ID.NEXTVAL
                        , 5
                        , 'KAKAO'
                        , '31PJ95'
                        );
                        
INSERT INTO MEMBER_SOCIAL(SOCIAL_ID, MEM_NO, PROVIDER, PROVIDER_ID)
                   VALUES(SEQ_SOCIAL_ID.NEXTVAL
                        , 2
                        , 'KAKAO'
                        , '31CS24'
                        );
----------------------------------- FINISH -------------------------------------
COMMIT;