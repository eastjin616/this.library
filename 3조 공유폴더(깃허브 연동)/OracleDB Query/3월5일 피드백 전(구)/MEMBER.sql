DROP TABLE MEMBER;
DROP TABLE REVIEW;
DROP TABLE SERVICE_CENTER;
CREATE TABLE MEMBER
(
MEM_NO NUMBER CONSTRAINT MEM_NO_PK PRIMARY KEY,
MEM_NAME VARCHAR2(30) CONSTRAINT MEM_NAME_NN NOT NULL,
MEM_ID VARCHAR2(30) CONSTRAINT MEM_ID_NN NOT NULL,
MEM_PWD VARCHAR2(30)CONSTRAINT MEM_PWD_NN NOT NULL,
NICKNAME VARCHAR2(30) CONSTRAINT NICKNAME_NN NOT NULL,
ADDRESS VARCHAR2(100),
EMAIL VARCHAR2(100)
);


COMMENT ON COLUMN MEMBER.MEM_NO IS 'ȸ����ȣ';
COMMENT ON COLUMN MEMBER.MEM_NAME IS '�̸�';
COMMENT ON COLUMN MEMBER.MEM_ID IS '���̵�';
COMMENT ON COLUMN MEMBER.MEM_PWD IS '��й�ȣ';
COMMENT ON COLUMN MEMBER.NICKNAME IS '�г���';
COMMENT ON COLUMN MEMBER.ADDRESS IS '�ּ�';
COMMENT ON COLUMN MEMBER.EMAIL IS '�̸���';

CREATE SEQUENCE MEMBER_SEQ
                INCREMENT BY    1 
                START WITH      1
                MINVALUE        1
                MAXVALUE        99999
                NOCYCLE
                NOCACHE
                NOORDER;
                
                
INSERT INTO MEMBER(MEM_NO,MEM_NAME,MEM_ID,MEM_PWD,NICKNAME,ADDRESS,EMAIL)
            VALUES(MEMBER_SEQ.NEXTVAL
                    , '��ȣ��'
                    , 'user01'
                    , 'pass01'
                    , 'hoseok'
                    , 'korea1'
                    , 'koreaho@naver.com'
                    );
INSERT INTO MEMBER(MEM_NO,MEM_NAME,MEM_ID,MEM_PWD,NICKNAME,ADDRESS,EMAIL)
            VALUES(MEMBER_SEQ.NEXTVAL
                    , '����'
                    , 'user02'
                    , 'pass02'
                    , 'younghoon'
                    , 'korea2'
                    , 'koreago@naver.com'
                    );                    
INSERT INTO MEMBER(MEM_NO,MEM_NAME,MEM_ID,MEM_PWD,NICKNAME,ADDRESS,EMAIL)
            VALUES(MEMBER_SEQ.NEXTVAL
                    , '������'
                    , 'user03'
                    , 'pass03'
                    , 'dongjin'
                    , 'korea3'
                    , 'koreaseo@naver.com'
                    );
INSERT INTO MEMBER(MEM_NO,MEM_NAME,MEM_ID,MEM_PWD,NICKNAME,ADDRESS,EMAIL)
            VALUES(MEMBER_SEQ.NEXTVAL
                    , '��ȣ��1'
                    , 'user04'
                    , 'pass04'
                    , 'hoseok1'
                    , 'korea4'
                    , 'koreao@naver.com'
                    );
INSERT INTO MEMBER(MEM_NO,MEM_NAME,MEM_ID,MEM_PWD,NICKNAME,ADDRESS,EMAIL)
            VALUES(MEMBER_SEQ.NEXTVAL
                    , '����1'
                    , 'user05'
                    , 'pass05'
                    , 'younghoon1'
                    , 'korea5'
                    , 'koreaseo@naver.com'
                    );
INSERT INTO MEMBER(MEM_NO,MEM_NAME,MEM_ID,MEM_PWD,NICKNAME,ADDRESS,EMAIL)
            VALUES(MEMBER_SEQ.NEXTVAL
                    , '������1'
                    , 'user06'
                    , 'pass06'
                    , 'dongjin1'
                    , 'korea6'
                    , 'koreaseo@naver.com'
                    );









