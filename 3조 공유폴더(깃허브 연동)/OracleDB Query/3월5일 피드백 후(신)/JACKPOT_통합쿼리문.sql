-- ���� ������
------------------------------ TABLE & SEQUENCE ���Ź� --------------------------
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

COMMENT ON COLUMN MEMBER.MEM_NO IS '����ڹ�ȣ';
COMMENT ON COLUMN MEMBER.MEM_NAME IS '�̸�';
COMMENT ON COLUMN MEMBER.MEM_ID IS '���̵�';
COMMENT ON COLUMN MEMBER.MEM_PWD IS '��й�ȣ';
COMMENT ON COLUMN MEMBER.NICKNAME IS '�г���';
COMMENT ON COLUMN MEMBER.ADDRESS IS '�ּ�';
COMMENT ON COLUMN MEMBER.EMAIL IS '�̸���';
COMMENT ON COLUMN MEMBER.PROFILE IS '�����ʻ���';
COMMENT ON COLUMN MEMBER.PHONE IS '��ȭ��ȣ';
COMMENT ON COLUMN MEMBER.STATUS IS '����';


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
                    , '������'
                    , 'admin'
                    , '1234'
                    , 'admin'
                    , 'korea1'
                    , 'admin@naver.com'
                    , 'resources/member/����1'
                    , '010-1111-2222'
                    , 'Y'
                    );
                    
INSERT INTO MEMBER(MEM_NO,MEM_NAME,MEM_ID,MEM_PWD,NICKNAME,ADDRESS,EMAIL, PROFILE, PHONE, STATUS)
            VALUES(SEQ_MEM_NO.NEXTVAL
                    , '����'
                    , 'user02'
                    , 'pass02'
                    , 'younghoon'
                    , 'korea2'
                    , 'koreago@naver.com'
                    , 'resources/member/����2'
                    , '010-1221-2422'
                    , 'Y'
                    );                  
                    
INSERT INTO MEMBER(MEM_NO,MEM_NAME,MEM_ID,MEM_PWD,NICKNAME,ADDRESS,EMAIL, PROFILE, PHONE, STATUS)
            VALUES(SEQ_MEM_NO.NEXTVAL
                    , '������'
                    , 'user03'
                    , 'pass03'
                    , 'dongjin'
                    , 'korea3'
                    , 'koreaseo@naver.com'
                    , 'resources/member/����3'
                    , '010-3333-2422'
                    , 'Y'
                    );
                    
INSERT INTO MEMBER(MEM_NO,MEM_NAME,MEM_ID,MEM_PWD,NICKNAME,ADDRESS,EMAIL, PROFILE, PHONE, STATUS)
            VALUES(SEQ_MEM_NO.NEXTVAL
                    , '��ȣ��1'
                    , 'user04'
                    , 'pass04'
                    , 'hoseok1'
                    , 'korea4'
                    , 'koreao@naver.com'
                    , 'resources/member/����4'
                    , '010-5553-2422'
                    , 'Y'
                    );
                    
INSERT INTO MEMBER(MEM_NO,MEM_NAME,MEM_ID,MEM_PWD,NICKNAME,ADDRESS,EMAIL, PROFILE, PHONE, STATUS)
            VALUES(SEQ_MEM_NO.NEXTVAL
                    , '����1'
                    , 'user05'
                    , 'pass05'
                    , 'younghoon1'
                    , 'korea5'
                    , 'koreaseo@naver.com'
                    , 'resources/member/����5'
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

COMMENT ON COLUMN BOARD.BOARD_NO IS '�Խñ� ��ȣ';
COMMENT ON COLUMN BOARD.MEM_NO IS '�Խñ� �ۼ���';
COMMENT ON COLUMN BOARD.BOARD_TITLE IS '�Խñ� ����';
COMMENT ON COLUMN BOARD.BOARD_CONTENT IS '�Խñ� ����';
COMMENT ON COLUMN BOARD.COUNT IS '��ȸ��';
COMMENT ON COLUMN BOARD.WRITE_DATE IS '�ۼ�����';
COMMENT ON COLUMN BOARD.STATUS IS '�Խñ���������';

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
                , '�Խñ� ����1'
                , '�Խñ� ����1'
                , 0
                , SYSDATE
                , 'Y'
                );

INSERT INTO BOARD(BOARD_NO, MEM_NO, BOARD_TITLE, BOARD_CONTENT, COUNT, WRITE_DATE, STATUS)
           VALUES(SEQ_BOARD_NO.NEXTVAL
                , 2
                , '�Խñ� ����2'
                , '�Խñ� ����2'
                , 0
                , SYSDATE
                , 'Y'
                );
                
INSERT INTO BOARD(BOARD_NO, MEM_NO, BOARD_TITLE, BOARD_CONTENT, COUNT, WRITE_DATE, STATUS)
           VALUES(SEQ_BOARD_NO.NEXTVAL
                , 3
                , '�Խñ� ����3'
                , '�Խñ� ����3'
                , 0
                , SYSDATE
                , 'Y'
                );
                
INSERT INTO BOARD(BOARD_NO, MEM_NO, BOARD_TITLE, BOARD_CONTENT, COUNT, WRITE_DATE, STATUS)
           VALUES(SEQ_BOARD_NO.NEXTVAL
                , 4
                , '�Խñ� ����4'
                , '�Խñ� ����4'
                , 0
                , SYSDATE
                , 'Y'
                );
                
INSERT INTO BOARD(BOARD_NO, MEM_NO, BOARD_TITLE, BOARD_CONTENT, COUNT, WRITE_DATE, STATUS)
           VALUES(SEQ_BOARD_NO.NEXTVAL
                , 5
                , '�Խñ� ����5'
                , '�Խñ� ����5'
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

COMMENT ON COLUMN BOARD_ANSWER.B_ANSWER_NO IS '�Խñۿ� ���� ��� ��ȣ';
COMMENT ON COLUMN BOARD_ANSWER.MEM_NO IS '�Խñ� �ۼ��� ��ȣ';
COMMENT ON COLUMN BOARD_ANSWER.BOARD_NO IS '�Խñ� ��ȣ';
COMMENT ON COLUMN BOARD_ANSWER.ANSWER_CONTENT IS '�Խñ� ��� ����';
COMMENT ON COLUMN BOARD_ANSWER.ANSWER_DATE IS '�Խñ� ��� �ۼ� ��¥';
COMMENT ON COLUMN BOARD_ANSWER.STATUS IS '����';

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
                       , '�Խñ� ��� ���� �Դϴ礷������������1'
                       , SYSDATE
                       , 'Y'
                       );
                       
INSERT INTO BOARD_ANSWER(B_ANSWER_NO, MEM_NO, BOARD_NO, ANSWER_CONTENT, ANSWER_DATE, STATUS)
                  VALUES(SEQ_B_ANSWER_NO.NEXTVAL
                       , 2
                       , 2
                       , '�Խñ� ��� ���� �Դϴ礷������������2'
                       , SYSDATE
                       , 'Y'
                       );
                       
INSERT INTO BOARD_ANSWER(B_ANSWER_NO, MEM_NO, BOARD_NO, ANSWER_CONTENT, ANSWER_DATE, STATUS)
                  VALUES(SEQ_B_ANSWER_NO.NEXTVAL
                       , 3
                       , 3
                       , '�Խñ� ��� ���� �Դϴ礷������������3'
                       , SYSDATE
                       , 'Y'
                       );
                       
INSERT INTO BOARD_ANSWER(B_ANSWER_NO, MEM_NO, BOARD_NO, ANSWER_CONTENT, ANSWER_DATE, STATUS)
                  VALUES(SEQ_B_ANSWER_NO.NEXTVAL
                       , 4
                       , 4
                       , '�Խñ� ��� ���� �Դϴ礷������������4'
                       , SYSDATE
                       , 'Y'
                       );
                       
INSERT INTO BOARD_ANSWER(B_ANSWER_NO, MEM_NO, BOARD_NO, ANSWER_CONTENT, ANSWER_DATE, STATUS)
                  VALUES(SEQ_B_ANSWER_NO.NEXTVAL
                       , 5
                       , 5
                       , '�Խñ� ��� ���� �Դϴ礷������������5'
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

COMMENT ON COLUMN ATTACHMENT.FILE_NO IS '���Ϲ�ȣ';
COMMENT ON COLUMN ATTACHMENT.WRITE_NO IS '�Խñ� ��ȣ';
COMMENT ON COLUMN ATTACHMENT.ORIGIN_NAME IS '���Ͽ�����';
COMMENT ON COLUMN ATTACHMENT.CHANGE_NAME IS '���ϼ�����';
COMMENT ON COLUMN ATTACHMENT.FILE_PATH IS '�����������';
COMMENT ON COLUMN ATTACHMENT.UPLOAD_DATE IS '���ε� ��¥';
COMMENT ON COLUMN ATTACHMENT.STATUS IS '÷������ ���� ����';

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
                     , '����1.jpg'
                     , '121504101'
                     , 'jsp/resources/board/'
                     , DEFAULT
                     , DEFAULT
                     );

INSERT INTO ATTACHMENT(FILE_NO, WRITE_NO, ORIGIN_NAME, CHANGE_NAME, UPLOAD_DATE)
                VALUES(SEQ_FILE_NO.NEXTVAL
                     , 2
                     , '����2.jpg'
                     , '121504102'
                     , DEFAULT
                     );
                     
INSERT INTO ATTACHMENT(FILE_NO, WRITE_NO, ORIGIN_NAME, CHANGE_NAME, UPLOAD_DATE)
                VALUES(SEQ_FILE_NO.NEXTVAL
                     , 3
                     , '����3.jpg'
                     , '121504103'
                     , DEFAULT
                     );
                     
INSERT INTO ATTACHMENT(FILE_NO, WRITE_NO, ORIGIN_NAME, CHANGE_NAME, UPLOAD_DATE)
                VALUES(SEQ_FILE_NO.NEXTVAL
                     , 4
                     , '����4.jpg'
                     , '121504104'
                     , DEFAULT
                     );
                     
INSERT INTO ATTACHMENT(FILE_NO, WRITE_NO, ORIGIN_NAME, CHANGE_NAME, FILE_PATH, UPLOAD_DATE, STATUS)
                VALUES(SEQ_FILE_NO.NEXTVAL
                     , 1
                     , '����1.jpg'
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

COMMENT ON COLUMN NOTICE.NOTICE_NO IS '�������� ��ȣ';
COMMENT ON COLUMN NOTICE.MEM_NO IS '������(�ۼ���) ��ȣ';
COMMENT ON COLUMN NOTICE.NOTICE_TITLE IS '�������� ����';
COMMENT ON COLUMN NOTICE.NOTICE_CONTENT IS '�������� ����';
COMMENT ON COLUMN NOTICE.NOTICE_DATE IS '�ۼ�����';
COMMENT ON COLUMN NOTICE.COUNT IS '��ȸ��';
COMMENT ON COLUMN NOTICE.STATUS IS '����������������';

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
                 , '�������� ����1'
                 , '�������� ����1�Դϴ籸��������'
                 , DEFAULT
                 , DEFAULT
                 , DEFAULT
                 );
                 
INSERT INTO NOTICE(NOTICE_NO, MEM_NO, NOTICE_TITLE, NOTICE_CONTENT, NOTICE_DATE, COUNT, STATUS)
            VALUES(SEQ_NOTICE_NO.NEXTVAL
                 , 1
                 , '�������� ����2'
                 , '�������� ����2�Դϴ籸��������'
                 , DEFAULT
                 , DEFAULT
                 , DEFAULT
                 );
                 
INSERT INTO NOTICE(NOTICE_NO, MEM_NO, NOTICE_TITLE, NOTICE_CONTENT, NOTICE_DATE, COUNT, STATUS)
            VALUES(SEQ_NOTICE_NO.NEXTVAL
                 , 1
                 , '�������� ����3'
                 , '�������� ����3�Դϴ籸��������'
                 , DEFAULT
                 , DEFAULT
                 , DEFAULT
                 );
                 
INSERT INTO NOTICE(NOTICE_NO, MEM_NO, NOTICE_TITLE, NOTICE_CONTENT, NOTICE_DATE, COUNT, STATUS)
            VALUES(SEQ_NOTICE_NO.NEXTVAL
                 , 1
                 , '�������� ����4'
                 , '�������� ����4�Դϴ籸��������'
                 , DEFAULT
                 , DEFAULT
                 , DEFAULT
                 );
                 
INSERT INTO NOTICE(NOTICE_NO, MEM_NO, NOTICE_TITLE, NOTICE_CONTENT, NOTICE_DATE, COUNT, STATUS)
            VALUES(SEQ_NOTICE_NO.NEXTVAL
                 , 1
                 , '�������� ����5'
                 , '�������� ����5�Դϴ籸��������'
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

COMMENT ON COLUMN SERVICE_CENTER.INQUIRY_NO IS '���ǹ�ȣ';
COMMENT ON COLUMN SERVICE_CENTER.MEM_NO IS '����ڹ�ȣ';
COMMENT ON COLUMN SERVICE_CENTER.CONTENT IS '���� ����';
COMMENT ON COLUMN SERVICE_CENTER.ANSWER IS '�亯����';
COMMENT ON COLUMN SERVICE_CENTER.INQUIRY_DATE IS '�ۼ��� ��¥';
COMMENT ON COLUMN SERVICE_CENTER.ANSWER_DATE IS '�亯��¥';
COMMENT ON COLUMN SERVICE_CENTER.STATUS IS '��������������';

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
                    , '������ �����ϰ� �ʹ� ������.'
                    , '�׷�����, ������ �ÿ��� ������ �ٶ��� ���°� ����?'
                    , DEFAULT
                    , SYSDATE
                    , 'Y'
                    );
                    
INSERT INTO SERVICE_CENTER(INQUIRY_NO, MEM_NO, CONTENT, ANSWER, INQUIRY_DATE, ANSWER_DATE, STATUS)
            VALUES(SEQ_INQUIRY_NO.NEXTVAL
                    , 2
                    , '������ �����ϰ� �ʹ� ������.'
                    , '�׷�����, ������ �ÿ��� ������ �ٶ��� ���°� ����?'
                    , DEFAULT
                    , SYSDATE
                    , 'Y'
                    ); 
                    
INSERT INTO SERVICE_CENTER(INQUIRY_NO, MEM_NO, CONTENT, ANSWER, INQUIRY_DATE, ANSWER_DATE, STATUS)
            VALUES(SEQ_INQUIRY_NO.NEXTVAL
                    , 3
                    , '������ �����ϰ� �ʹ� ������.'
                    , '�׷�����, ������ �ÿ��� ������ �ٶ��� ���°� ����?'
                    , DEFAULT
                    , SYSDATE
                    , 'Y'
                    );
                    
INSERT INTO SERVICE_CENTER(INQUIRY_NO, MEM_NO, CONTENT, ANSWER, INQUIRY_DATE, ANSWER_DATE, STATUS)
            VALUES(SEQ_INQUIRY_NO.NEXTVAL
                    , 4
                    , '������ �����ϰ� �ʹ� ������.'
                    , '�׷�����, ������ �ÿ��� ������ �ٶ��� ���°� ����?'
                    , DEFAULT
                    , SYSDATE
                    , 'Y'
                    );
                    
INSERT INTO SERVICE_CENTER(INQUIRY_NO, MEM_NO, CONTENT, ANSWER, INQUIRY_DATE, ANSWER_DATE, STATUS)
            VALUES(SEQ_INQUIRY_NO.NEXTVAL
                    , 5
                    , '������ �����ϰ� �ʹ� ������.'
                    , '�׷�����, ������ �ÿ��� ������ �ٶ��� ���°� ����?'
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

COMMENT ON COLUMN READGOAL.MEM_NO IS '����� ��ȣ';
COMMENT ON COLUMN READGOAL.RG_BOOK IS '��ǥå��';
COMMENT ON COLUMN READGOAL.RG_START IS '������';
COMMENT ON COLUMN READGOAL.RG_END IS '������';
COMMENT ON COLUMN READGOAL.STATUS IS '�б��ǥ��������';

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

COMMENT ON COLUMN MEM_GIS.GIS_ID IS '����� ��ġ ID';
COMMENT ON COLUMN MEM_GIS.GIS_MEM_NO IS '����� ��ȣ';
COMMENT ON COLUMN MEM_GIS.LTITUDE IS '����';
COMMENT ON COLUMN MEM_GIS.LONGITUDE IS '�浵';
COMMENT ON COLUMN MEM_GIS.ADDRESS IS '�ּ�';
                
INSERT INTO MEM_GIS(GIS_ID, GIS_MEM_NO, LTITUDE, LONGITUDE, ADDRESS)
             VALUES(124124
                  , 1
                  , 123.456789
                  , 123.456789
                  , '���'
                  );
                  
INSERT INTO MEM_GIS(GIS_ID, GIS_MEM_NO, LTITUDE, LONGITUDE, ADDRESS)
             VALUES(845124
                  , 2
                  , 123.456789
                  , 123.456789
                  , '���2'
                  );
                  
INSERT INTO MEM_GIS(GIS_ID, GIS_MEM_NO, LTITUDE, LONGITUDE, ADDRESS)
             VALUES(975185
                  , 3
                  , 123.456789
                  , 123.456789
                  , '���3'
                  );
                  
INSERT INTO MEM_GIS(GIS_ID, GIS_MEM_NO, LTITUDE, LONGITUDE, ADDRESS)
             VALUES(179264
                  , 4
                  , 123.456789
                  , 123.456789
                  , '���4'
                  );
                  
INSERT INTO MEM_GIS(GIS_ID, GIS_MEM_NO, LTITUDE, LONGITUDE, ADDRESS)
             VALUES(555874
                  , 5
                  , 123.456789
                  , 123.456789
                  , '���5'
                  );
----------------------------------- FOLLOW -------------------------------------
CREATE TABLE FOLLOW(
    FOLLOWER_ID NUMBER CONSTRAINT FOLLOWER_ID_FK REFERENCES MEMBER ON DELETE CASCADE NOT NULL,
    FOLLOWING_ID NUMBER CONSTRAINT FOLLOWING_ID_FK REFERENCES MEMBER ON DELETE CASCADE NOT NULL,
    
    CONSTRAINT FOLLOW_PFK PRIMARY KEY(FOLLOWER_ID,FOLLOWING_ID) 
);

COMMENT ON COLUMN FOLLOW.FOLLOWER_ID IS '�ȷο츦 �õ��� ��� ID';
COMMENT ON COLUMN FOLLOW.FOLLOWING_ID IS '�ȷο� �� ��� ID';

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

COMMENT ON COLUMN GENRE.G_CODE IS '�帣 ID';
COMMENT ON COLUMN GENRE.G_NAME IS '�帣�̸�';

INSERT INTO GENRE(G_CODE, G_NAME)
           VALUES('G1'
                , '�Ҽ�'
                );
                
INSERT INTO GENRE(G_CODE, G_NAME)
           VALUES('G2'
                , '������'
                );
                
INSERT INTO GENRE(G_CODE, G_NAME)
           VALUES('G3'
                , '��'
                );
                
INSERT INTO GENRE(G_CODE, G_NAME)
           VALUES('G4'
                , '�ι�'
                );
                
INSERT INTO GENRE(G_CODE, G_NAME)
           VALUES('G5'
                , '�ڱ���'
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

COMMENT ON COLUMN BOOK.BOOK_NO IS 'å��ȣ';
COMMENT ON COLUMN BOOK.G_CODE IS '�帣ID';
COMMENT ON COLUMN BOOK.BOOK_TITLE IS 'å����';
COMMENT ON COLUMN BOOK.BOOK_IMAGE IS 'å �̹���';
COMMENT ON COLUMN BOOK.BOOK_WRITER IS '�۰�����';
COMMENT ON COLUMN BOOK.BOOK_EDITOR IS '������';
COMMENT ON COLUMN BOOK.BOOK_PUBLISHER IS '���ǻ�';
COMMENT ON COLUMN BOOK.STORY IS '�ٰŸ�';
COMMENT ON COLUMN BOOK.BOOK_LIKE IS '���ƿ��';
COMMENT ON COLUMN BOOK.VOTE_RESULT IS '�¶��� ��ǥ ��� COUNT';


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
                ,'ȭ���� �����Ⱑ ���� ���γ�'
                ,'resources/book/img/å1.jpg'
                ,'�Ҳɳ��ڼ�����' 
                ,'������1'
                ,'�̻����ǻ�'
                ,'���۽����� �ϰԵ� 3����տ��� 10�а��� ����ġŸ��, ���� �±ǵ��� �ϱ�� �ߴ�.'
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
                ,'ȭ���� �����Ⱑ ���� ���γ�22222'
                ,'resources/book/img/å2.jpg'
                ,'�Ҳɳ��ڼ�����222' 
                ,'������2'
                ,'�̻����ǻ�222'
                ,'2���۽����� �ϰԵ� 20����տ��� 10�а��� ����ġŸ��, ���� �±ǵ��� �ϱ�� �ߴ�.'
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
                ,'ȭ���� �����Ⱑ ���� ���γ�3'
                ,'resources/book/img/å3.jpg'
                ,'�Ҳɳ��ڼ�����333' 
                ,'������3'
                ,'�̻����ǻ�3'
                ,'3���۽����� �ϰԵ� 30����տ��� 10�а��� ����ġŸ��, ���� �±ǵ��� �ϱ�� �ߴ�.'
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
                ,'ȭ���� �����Ⱑ ���� ���γ�4'
                ,'resources/book/img/å4.jpg'
                ,'�Ҳɳ��ڼ�����44' 
                ,'������4'
                ,'�̻����ǻ�44'
                ,'���۽����� �ϰԵ� 4����տ��� 10�а��� ����ġŸ��, ���� �±ǵ��� �ϱ�� �ߴ�.'
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
                ,'ȭ���� �����Ⱑ ���� ���γ�55555'
                ,'resources/book/img/å5.jpg'
                ,'�Ҳɳ��ڼ�����555' 
                ,'������5'
                ,'�̻����ǻ�55'
                ,'���۽����� �ϰԵ� 5000����տ��� 10�а��� ����ġŸ��, ���� �±ǵ��� �ϱ�� �ߴ�.'
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

COMMENT ON COLUMN VOTE.VOTE_NO IS '��ǥ��ȣID';
COMMENT ON COLUMN VOTE.MEM_NO IS '����� ��ȣ';
COMMENT ON COLUMN VOTE.VOTE_TITLE IS '��ǥ ����';
COMMENT ON COLUMN VOTE.BOOK_NO1 IS '��ǥ����1';
COMMENT ON COLUMN VOTE.BOOK_NO2 IS '��ǥ����2';
COMMENT ON COLUMN VOTE.VOTE_STARTDATE IS '��ǥ ������(�ð�)';
COMMENT ON COLUMN VOTE.VOTE_ENDDATE IS '��ǥ ������(�ð�)';
COMMENT ON COLUMN VOTE.VOTE_COUNT1 IS 'å1 ��ǥ �� ��Ȳ';
COMMENT ON COLUMN VOTE.VOTE_COUNT2 IS 'å2 ��ǥ �� ��Ȳ';
COMMENT ON COLUMN VOTE.STATUS IS '��ǥ �� ���� ����';

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
               , '��ǥ ����1'
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
               , '��ǥ ����1'
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
               , '��ǥ ����1'
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
               , '��ǥ ����1'
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
               , '��ǥ ����1'
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

COMMENT ON COLUMN COMMENTARY.WRITE_NO IS '���� ���� ID';
COMMENT ON COLUMN COMMENTARY.MEM_NO IS '����� ��ȣ';
COMMENT ON COLUMN COMMENTARY.BOOK_NO IS 'å��ȣ';
COMMENT ON COLUMN COMMENTARY.CONTENT IS '���� ����';
COMMENT ON COLUMN COMMENTARY.RATING IS '����';
COMMENT ON COLUMN COMMENTARY.WRITE_DATE IS '�ۼ���¥';
COMMENT ON COLUMN COMMENTARY.WRITE_DATE IS '������������';
   
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
                    , '���� �غ��°� ����? ��������?'
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
                    , '���� �غ��°� ����? ��������?'
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
                    , '���� �غ��°� ����? ��������?'
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
                    , '���� �غ��°� ����? ��������?'
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
                    , '���� �غ��°� ����? ��������?'
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

COMMENT ON COLUMN LIBRARY.L_NO IS '�����ȣ';
COMMENT ON COLUMN LIBRARY.L_NAME IS '�����̸�';
COMMENT ON COLUMN LIBRARY.L_LATITUDE IS '��������';
COMMENT ON COLUMN LIBRARY.L_LONGITUDE IS '����浵';
COMMENT ON COLUMN LIBRARY.L_LOCATION_NAME IS '���� �õ���';
COMMENT ON COLUMN LIBRARY.L_LOCATION IS '���� �ñ���';
COMMENT ON COLUMN LIBRARY.HOLIDAYINFO IS '�ް��� ����';
COMMENT ON COLUMN LIBRARY.L_OPEN IS '������Ͻ�';
COMMENT ON COLUMN LIBRARY.L_END IS '������Ͻ�';
COMMENT ON COLUMN LIBRARY.L_TEL IS '���� ��ȭ��ȣ';
COMMENT ON COLUMN LIBRARY.L_ADDRESS IS '���� ���θ��ּ�';

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
                    , '�뵵����1'
                    , 123.456789
                    , 123.456789
                    , '�����'
                    , '������'
                    , '������, �ſ� �������� ������'
                    , '����10�� 30��'
                    , '����10��'
                    , '010-0112-0112'
                    , '����������'
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
                    , '�뵵����2'
                    , 123.456789
                    , 123.456789
                    , '�����'
                    , '������'
                    , '������'
                    , '10:00'
                    , '22:00'
                    , '010-0112-0112'
                    , '����������'
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
                    , '�뵵����3'
                    , 123.456789
                    , 123.456789
                    , '�����'
                    , '������'
                    , '������, ���� �ݿ���'
                    , '����9��'
                    , '����6��'
                    , '010-0112-0112'
                    , '����������'
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
                    , '�뵵����4'
                    , 123.456789
                    , 123.456789
                    , '�����'
                    , '������'
                    , '����������, �ſ� ��°�� ������'
                    , '����8��30��'
                    , '����9��30��'
                    , '010-0112-0112'
                    , '����������'
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
                    , '�뵵����5'
                    , 123.456789
                    , 123.456789
                    , '�����'
                    , '������'
                    , '���߹���'
                    , '09:00'
                    , '18:00'
                    , '010-0112-0112'
                    , '����������'
                    );
----------------------------------- LIKES --------------------------------------
CREATE TABLE LIKES (
    MEM_NO NUMBER CONSTRAINT LIKES_MEM_NO_FK REFERENCES MEMBER ON DELETE CASCADE NOT NULL,
    BOOK_NO NUMBER CONSTRAINT LIKES_BOOK_NO_FK REFERENCES BOOK ON DELETE CASCADE NOT NULL,

    CONSTRAINT LIKES_PFK PRIMARY KEY(MEM_NO, BOOK_NO)
);

COMMENT ON COLUMN LIKES.MEM_NO IS '����� ��ȣ';
COMMENT ON COLUMN LIKES.BOOK_NO IS 'å ��ȣ';

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

COMMENT ON COLUMN REVIEW.REVIEW_NO IS '�����ȣ';
COMMENT ON COLUMN REVIEW.REVIEW IS '���䳻��';
COMMENT ON COLUMN REVIEW.BOOK_NO IS 'å��ȣ';
COMMENT ON COLUMN REVIEW.MEM_NO IS '����ڹ�ȣ';
COMMENT ON COLUMN REVIEW.REVIEW_DATE IS '�����ۼ���¥';
COMMENT ON COLUMN REVIEW.REVIEW_LIKE IS '���ƿ� ����';
COMMENT ON COLUMN REVIEW.RATING IS '���� ����';
COMMENT ON COLUMN REVIEW.STATUS IS '���� ���翩��';

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
                    ,'���䳻���� ���� �ڸ��Դϴ�.1'
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
                    ,'���䳻���� ���� �ڸ��Դϴ�.2'
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
                    ,'���䳻���� ���� �ڸ��Դϴ�.3'
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
                    ,'���䳻���� ���� �ڸ��Դϴ�.4'
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
                    ,'���䳻���� ���� �ڸ��Դϴ�.5'
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

COMMENT ON COLUMN REVIEW_ANSWER.R_ANSWER_NO IS '���信 ���� ��� ��ȣ';
COMMENT ON COLUMN REVIEW_ANSWER.R_ANSWER IS '�����ȣ';
COMMENT ON COLUMN REVIEW_ANSWER.REVIEW_NO IS '���信 ���� ���';
COMMENT ON COLUMN REVIEW_ANSWER.REVIEW_NO IS '���� ��� ���� ����';

CREATE SEQUENCE SEQ_R_ANSWER_NO;

INSERT INTO REVIEW_ANSWER(R_ANSWER_NO, REVIEW_NO, R_ANSWER, STATUS)
                   VALUES(SEQ_R_ANSWER_NO.NEXTVAL
                        , 1
                        , '���信���� ��� 1�Դϴ� ����������������'
                        , 'Y'
                        );
                        
INSERT INTO REVIEW_ANSWER(R_ANSWER_NO, REVIEW_NO, R_ANSWER, STATUS)
                   VALUES(SEQ_R_ANSWER_NO.NEXTVAL
                        , 2
                        , '���信���� ��� 2�Դϴ� ����������������'
                        , 'Y'
                        );
                        
INSERT INTO REVIEW_ANSWER(R_ANSWER_NO, REVIEW_NO, R_ANSWER, STATUS)
                   VALUES(SEQ_R_ANSWER_NO.NEXTVAL
                        , 3
                        , '���信���� ��� 3�Դϴ� ����������������'
                        , 'Y'
                        );
                        
INSERT INTO REVIEW_ANSWER(R_ANSWER_NO, REVIEW_NO, R_ANSWER, STATUS)
                   VALUES(SEQ_R_ANSWER_NO.NEXTVAL
                        , 4
                        , '���信���� ��� 4�Դϴ� ����������������'
                        , 'Y'
                        );
                        
INSERT INTO REVIEW_ANSWER(R_ANSWER_NO, REVIEW_NO, R_ANSWER, STATUS)
                   VALUES(SEQ_R_ANSWER_NO.NEXTVAL
                        , 5
                        , '���信���� ��� 5�Դϴ� ����������������'
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

COMMENT ON COLUMN FNA.FNA_NO IS 'FNA��ȣ';
COMMENT ON COLUMN FNA.FNA_TITLE IS 'FNA����';
COMMENT ON COLUMN FNA.CONTENT IS '�����ϴ� ��������';
COMMENT ON COLUMN FNA.ANSWER IS '�亯����';
COMMENT ON COLUMN FNA.INQUIRY_DATE IS '�ۼ��� ��¥';
COMMENT ON COLUMN FNA.STATUS IS 'FNA ������������';

CREATE SEQUENCE SEQ_FNA_NO;

INSERT INTO FNA(FNA_NO, FNA_TITLE, CONTENT, ANSWER, INQUIRY_DATE, STATUS)
         VALUES(SEQ_FNA_NO.NEXTVAL
              , 'FNA����1'
              , 'FNA ���� �����Դϴٶ��㷷��1'
              , 'FNA�� ���� �亯 �����Դϴٶ��㷷��1'
              , DEFAULT
              , DEFAULT
              );
              
INSERT INTO FNA(FNA_NO, FNA_TITLE, CONTENT, ANSWER, INQUIRY_DATE, STATUS)
         VALUES(SEQ_FNA_NO.NEXTVAL
              , 'FNA����2'
              , 'FNA ���� �����Դϴٶ��㷷��2'
              , 'FNA�� ���� �亯 �����Դϴٶ��㷷��2'
              , DEFAULT
              , DEFAULT
              );
              
INSERT INTO FNA(FNA_NO, FNA_TITLE, CONTENT, ANSWER, INQUIRY_DATE, STATUS)
         VALUES(SEQ_FNA_NO.NEXTVAL
              , 'FNA����3'
              , 'FNA ���� �����Դϴٶ��㷷��3'
              , 'FNA�� ���� �亯 �����Դϴٶ��㷷��3'
              , DEFAULT
              , DEFAULT
              );
              
INSERT INTO FNA(FNA_NO, FNA_TITLE, CONTENT, ANSWER, INQUIRY_DATE, STATUS)
         VALUES(SEQ_FNA_NO.NEXTVAL
              , 'FNA����4'
              , 'FNA ���� �����Դϴٶ��㷷��4'
              , 'FNA�� ���� �亯 �����Դϴٶ��㷷��4'
              , DEFAULT
              , DEFAULT
              );
              
INSERT INTO FNA(FNA_NO, FNA_TITLE, CONTENT, ANSWER, INQUIRY_DATE, STATUS)
         VALUES(SEQ_FNA_NO.NEXTVAL
              , 'FNA����5'
              , 'FNA ���� �����Դϴٶ��㷷��5'
              , 'FNA�� ���� �亯 �����Դϴٶ��㷷��5'
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
              
COMMENT ON COLUMN VOTE_ANSWER.V_ANSWER_NO IS '��ǥ�� ���� ��� ��ȣ';
COMMENT ON COLUMN VOTE_ANSWER.VOTE_NO IS '��ǥ��ȣID';
COMMENT ON COLUMN VOTE_ANSWER.MEM_NO IS '��ǥ �ۼ��� ��ȣ';
COMMENT ON COLUMN VOTE_ANSWER.V_ANSWER IS '��ǥ ���';
COMMENT ON COLUMN VOTE_ANSWER.ANSWER_DATE IS '��ǥ ��� �ۼ� ��¥';
COMMENT ON COLUMN VOTE_ANSWER.STATUS IS '��ǥ ��� ���� ����(Y���� N����)';
             
CREATE SEQUENCE SEQ_V_ANSWER_NO;

INSERT INTO VOTE_ANSWER(V_ANSWER_NO, VOTE_NO, MEM_NO, V_ANSWER, ANSWER_DATE, STATUS)
                 VALUES(SEQ_V_ANSWER_NO.NEXTVAL
                      , 1
                      , 2
                      , '��ǥ�� ���� ���1 �Դϴٶ��㷷�̻��볪�����̵繰���'
                      , DEFAULT
                      , 'Y'
                      );
                      
INSERT INTO VOTE_ANSWER(V_ANSWER_NO, VOTE_NO, MEM_NO, V_ANSWER, ANSWER_DATE, STATUS)
                 VALUES(SEQ_V_ANSWER_NO.NEXTVAL
                      , 2
                      , 3
                      , '��ǥ�� ���� ���2 �Դϴٶ��㷷�̻��볪�����̵繰���'
                      , DEFAULT
                      , 'Y'
                      );
                      
INSERT INTO VOTE_ANSWER(V_ANSWER_NO, VOTE_NO, MEM_NO, V_ANSWER, ANSWER_DATE, STATUS)
                 VALUES(SEQ_V_ANSWER_NO.NEXTVAL
                      , 3
                      , 4
                      , '��ǥ�� ���� ���3 �Դϴٶ��㷷�̻��볪�����̵繰���'
                      , DEFAULT
                      , 'Y'
                      );
                      
INSERT INTO VOTE_ANSWER(V_ANSWER_NO, VOTE_NO, MEM_NO, V_ANSWER, ANSWER_DATE, STATUS)
                 VALUES(SEQ_V_ANSWER_NO.NEXTVAL
                      , 4
                      , 5
                      , '��ǥ�� ���� ���4 �Դϴٶ��㷷�̻��볪�����̵繰���'
                      , DEFAULT
                      , 'Y'
                      );
                      
INSERT INTO VOTE_ANSWER(V_ANSWER_NO, VOTE_NO, MEM_NO, V_ANSWER, ANSWER_DATE, STATUS)
                 VALUES(SEQ_V_ANSWER_NO.NEXTVAL
                      , 5
                      , 5
                      , '��ǥ�� ���� ���1 �Դϴٶ��㷷�̻��볪�����̵繰���'
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

COMMENT ON COLUMN MEMBER_SOCIAL.SOCIAL_ID IS '�Ҽȷα�������';
COMMENT ON COLUMN MEMBER_SOCIAL.MEM_NO IS '����� ��ȣ';
COMMENT ON COLUMN MEMBER_SOCIAL.PROVIDER IS '�Ҽȷα��� ������(KAKAO, GOOGLE, APPLE)';
COMMENT ON COLUMN MEMBER_SOCIAL.PROVIDER_ID IS '�� �Ҽ� �α��ο��� �����ϴ� ȸ�� ���� ID';

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