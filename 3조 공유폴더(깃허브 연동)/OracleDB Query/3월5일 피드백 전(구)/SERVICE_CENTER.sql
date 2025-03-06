DROP TABLE SERVICE_CENTER;
CREATE TABLE SERVICE_CENTER(
INQUIRY_NO NUMBER CONSTRAINT INQUIRY_NO_PK PRIMARY KEY,
MEM_NO NUMBER,
CONTENT VARCHAR2(3000) CONSTRAINT CONTENT_NN NOT NULL,
STATUS CHAR(1) NOT NULL,
INQUIRY_DATE DATE,
ANSWER VARCHAR2(3000),
ANSWER_DATE DATE DEFAULT SYSDATE,

CONSTRAINT MEM_NO_FK FOREIGN KEY(MEM_NO)
REFERENCES MEMBER(MEM_NO)
);
COMMENT ON COLUMN SERVICE_CENTER.INQUIRY_NO IS '���ǹ�ȣ';
COMMENT ON COLUMN SERVICE_CENTER.MEM_NO IS '������ȣ';
COMMENT ON COLUMN SERVICE_CENTER.CONTENT IS '����';
COMMENT ON COLUMN SERVICE_CENTER.STATUS IS '����';
COMMENT ON COLUMN SERVICE_CENTER.INQUIRY_DATE IS '�ۼ���¥';
COMMENT ON COLUMN SERVICE_CENTER.ANSWER IS '�亯����';
COMMENT ON COLUMN SERVICE_CENTER.ANSWER_DATE IS '�亯��¥';

CREATE SEQUENCE SERVICE_CENTER_SEQ
                INCREMENT BY    1 
                START WITH      1
                MINVALUE        1
                MAXVALUE        99999
                NOCYCLE
                NOCACHE
                NOORDER;
INSERT INTO SERVICE_CENTER(
                INQUIRY_NO,
                MEM_NO,
                CONTENT,
                STATUS,
                INQUIRY_DATE,
                ANSWER,
                ANSWER_DATE)
            VALUES(SERVICE_CENTER_SEQ.NEXTVAL
                    , 7
                    , '������ �����ϰ� �ʹ� ������.'
                    , 'Y'
                    , SYSDATE
                    , '�׷�����, ������ �ÿ��� ������ �ٶ��� ���°� ����?'
                    , SYSDATE
                    );  
INSERT INTO SERVICE_CENTER(
                INQUIRY_NO,
                MEM_NO,
                CONTENT,
                STATUS,
                INQUIRY_DATE,
                ANSWER,
                ANSWER_DATE)
            VALUES(SERVICE_CENTER_SEQ.NEXTVAL
                    , 8
                    , 'Ȩ�������� �� �ȿ������'
                    , 'Y'
                    , SYSDATE
                    , '�׷�����, ���ͳ��� �ѹ��� Ȯ���� �ֽð� ������ �õ��غ��ðھ��?'
                    , SYSDATE
                    );
INSERT INTO SERVICE_CENTER(
                INQUIRY_NO,
                MEM_NO,
                CONTENT,
                STATUS,
                INQUIRY_DATE,
                ANSWER,
                ANSWER_DATE)
            VALUES(SERVICE_CENTER_SEQ.NEXTVAL
                    , 9
                    , '���� �а� ���� å�� �����'
                    , 'Y'
                    , SYSDATE
                    , '�׷�����, � å�� ���Ͻô��� �����ֽø� �� ã�ƺ��Կ�'
                    , SYSDATE
                    ); 
INSERT INTO SERVICE_CENTER(
                INQUIRY_NO,
                MEM_NO,
                CONTENT,
                STATUS,
                INQUIRY_DATE,
                ANSWER,
                ANSWER_DATE)
            VALUES(SERVICE_CENTER_SEQ.NEXTVAL
                    , 10
                    , '����µ� �޴��� ��õ�����'
                    , 'Y'
                    , SYSDATE
                    , '�׷�����, ������ �ҽ��ѵ� �쵿 ��Ű���? ������ ������ ���������� å�� �о����!'
                    , SYSDATE
                    );                     
INSERT INTO SERVICE_CENTER(
                INQUIRY_NO,
                MEM_NO,
                CONTENT,
                STATUS,
                INQUIRY_DATE,
                ANSWER,
                ANSWER_DATE)
            VALUES(SERVICE_CENTER_SEQ.NEXTVAL
                    , 11
                    , '�� û���� ���ּ���'
                    , 'Y'
                    , SYSDATE
                    , '�׷�����, ���� �غ��°� ����?'
                    , SYSDATE
                    ); 