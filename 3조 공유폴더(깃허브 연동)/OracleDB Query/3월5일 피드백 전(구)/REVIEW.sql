DROP TABLE REVIEW;
CREATE TABLE REVIEW
(
    MEM_NO      NUMBER PRIMARY KEY,
    VIEWCOUNT   NUMBER, 
    LIKES       NUMBER, 
    ANSWER      VARCHAR2(3000) CONSTRAINT ANS_NN NOT NULL,
    RATING      NUMBER DEFAULT 1 CONSTRAINT RATING_NN NOT NULL,
    BOOK_NO     NUMBER,
    
    CONSTRAINT MEM_NO_PFK FOREIGN KEY(MEM_NO)
    REFERENCES MEMBER(MEM_NO)
);
COMMENT ON COLUMN REVIEW.MEM_NO IS 'ȸ����ȣ';
COMMENT ON COLUMN REVIEW.VIEWCOUNT IS '��ȸ��';
COMMENT ON COLUMN REVIEW.LIKES IS '���ƿ�';
COMMENT ON COLUMN REVIEW.ANSWER IS '���';
COMMENT ON COLUMN REVIEW.RATING IS '����';
COMMENT ON COLUMN REVIEW.BOOK_NO IS 'å ��ȣ';
INSERT INTO REVIEW(
                MEM_NO,
                VIEWCOUNT,
                LIKES,
                ANSWER,
                RATING,
                BOOK_NO)
            VALUES(   7
                    , 7
                    , 4500
                    , '��������'
                    , 4
                    , 35
                    ); 
 INSERT INTO REVIEW(
                MEM_NO,
                VIEWCOUNT,
                LIKES,
                ANSWER,
                RATING,
                BOOK_NO)
            VALUES(   8
                    , 8
                    , 5100
                    , '��������'
                    , 5
                    , 355
                    ); 
INSERT INTO REVIEW(
                MEM_NO,
                VIEWCOUNT,
                LIKES,
                ANSWER,
                RATING,
                BOOK_NO)
            VALUES(   9
                    , 9
                    , 4990
                    , '��������'
                    , 999
                    , 99
                    ); 