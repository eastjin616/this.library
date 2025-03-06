DROP TABLE READGOAL;
CREATE TABLE READGOAL
(   RG_NO NUMBER PRIMARY KEY,
    MEM_NO NUMBER NOT NULL ,
    RG_BOOK NUMBER NOT NULL,  
    RG_START DATE,
    RG_END DATE,
    
    CONSTRAINT READGOAL_FK FOREIGN KEY(MEM_NO)
    REFERENCES MEMBER(MEM_NO)
    );
    COMMENT ON COLUMN READGOAL.RG_NO IS '��ǥ�����ĺ���ȣ';
    COMMENT ON COLUMN READGOAL.MEM_NO IS '����ڹ�ȣ';
    COMMENT ON COLUMN READGOAL.RG_BOOK IS '��ǥå��';
    COMMENT ON COLUMN READGOAL.RG_START IS '������';
    COMMENT ON COLUMN READGOAL.RG_END IS '������';

INSERT INTO READGOAL
            VALUES(
                    1
                    , 7
                    ,55
                    , SYSDATE-20
                    , SYSDATE
                    ); 
                    