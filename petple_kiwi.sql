--�湮����� ��û ������
CREATE SEQUENCE SEQ_S_APP_ID
INCREMENT BY 1
START WITH 100
MINVALUE 100
MAXVALUE 99999
NOCYCLE
NOCACHE
ORDER;

--�湮 ����� ��û
INSERT INTO S_APPLY(S_APP_ID,S_APP_PRO_TITLE,S_APP_PRO_CONTENT,S_APP_DATE,S_APP_DEPOSITOR,S_APP_ACC_NUMBER,S_APP_OPE_DATE,TMP_MEMBER_ID,S_STA_ID,P_PET_ID,P_PET_KIN_ID,BANK_ID)
VALUES(SEQ_S_APP_ID.NEXTVAL,'���̰�','���� ����ȭ�� �߿伺',DEFAULT,'�׽�Ʈ','302-01234567-89',NULL,'100','1','1','1','2');
--> �� �� ����
INSERT INTO S_APPLY(S_APP_ID,S_APP_PRO_TITLE,S_APP_PRO_CONTENT,S_APP_DATE,S_APP_DEPOSITOR,S_APP_ACC_NUMBER,S_APP_OPE_DATE,TMP_MEMBER_ID,S_STA_ID,P_PET_ID,P_PET_KIN_ID,BANK_ID)VALUES(SEQ_S_APP_ID.NEXTVAL,'���̰�','���� ����ȭ�� �߿伺',DEFAULT,'�׽�Ʈ','302-01234567-89',NULL,'100','1','1','1','2')
;
--==>> 1 �� ��(��) ���ԵǾ����ϴ�.



--�ڰ��� ��� ������
CREATE SEQUENCE SEQ_G_CER_ID
INCREMENT BY 1
START WITH 100
MINVALUE 100
MAXVALUE 99999
NOCYCLE
NOCACHE
ORDER;
--�ڰ��� ���
INSERT INTO GET_CERT(G_CER_ID,G_CER_DATE,S_APP_ID,C_ID)
VALUES(SEQ_G_CER_ID.NEXTVAL,'2023-01-01','101','2');
--> �� �� ����
INSERT INTO GET_CERT(G_CER_ID,G_CER_DATE,S_APP_ID,C_ID)VALUES(SEQ_G_CER_ID.NEXTVAL,'2023-01-01','102','2')
;
--==>> 1 �� ��(��) ���ԵǾ����ϴ�.

--����� ������� ������
CREATE SEQUENCE SEQ_S_REF_ID
INCREMENT BY 1
START WITH 100
MINVALUE 100
MAXVALUE 99999
NOCYCLE
NOCACHE
ORDER;
--����� �������
INSERT INTO S_REFUSAL(S_REF_ID,S_REF_DATE,S_REF_REASON,S_REF_ADM_ID,S_APP_ID)
VALUES(SEQ_S_REF_ID.NEXTVAL,'DEFAULT','�׽�Ʈ','ADMIN','101');
--> �� �� ����
INSERT INTO S_REFUSAL(S_REF_ID,S_REF_DATE,S_REF_REASON,S_REF_ADM_ID,S_APP_ID)VALUES(SEQ_S_REF_ID.NEXTVAL,DEFAULT,'�׽�Ʈ','ADMIN','102')
;
--==>> 1 �� ��(��) ���ԵǾ����ϴ�.




--����� ���� ������
CREATE SEQUENCE SEQ_S_ALL_ID
INCREMENT BY 1
START WITH 100
MINVALUE 100
MAXVALUE 99999
NOCYCLE
NOCACHE
ORDER;
--����� ����
INSERT INTO S_ALLOW(S_ALL_ID,S_ALL_DATE,S_ALL_ADM_ID,S_APP_ID)
VALUES(SEQ_S_ALL_ID.NEXTVAL,DEFAULT,'ADMIN','100');
-->�� �� ����
INSERT INTO S_ALLOW(S_ALL_ID,S_ALL_DATE,S_ALL_ADM_ID,S_APP_ID)VALUES(SEQ_S_ALL_ID.NEXTVAL,DEFAULT,'ADMIN','100')
;


--��Ź ����� �Ű� ������
CREATE SEQUENCE SEQ_F_SIT_ID
INCREMENT BY 1
START WITH 100
MINVALUE 100
MAXVALUE 99999
NOCYCLE
NOCACHE
ORDER;
--==>> Sequence SEQ_F_SIT_ID��(��) �����Ǿ����ϴ�.
--��Ź ����� �Ű�
INSERT INTO FOS_SITTER(F_SIT_ID,F_SIT_IMG1,F_SIT_IMG2,F_SIT_IMG3,F_SIT_PUB__DATE,S_STA_ID,R_TYPE_ID,R_SIZE_ID,S_ALL_ID)
VALUES(SEQ_F_SIT_ID.NEXTVAL(),'http://','http://','http://',NULL,'1','2','3','100');
--> �� �� ����
INSERT INTO FOS_SITTER(F_SIT_ID,F_SIT_IMG1,F_SIT_IMG2,F_SIT_IMG3,F_SIT_PUB__DATE,S_STA_ID,R_TYPE_ID,R_SIZE_ID,S_ALL_ID)VALUES(SEQ_F_SIT_ID.NEXTVAL,'http://','http://','http://',NULL,'1','2','3','100')
;
--==> 1 �� ��(��) ���ԵǾ����ϴ�.

COMMIT;

--��Ź ���� �� ���� ������
CREATE SEQUENCE SEQ_F_PET_CHO_ID
INCREMENT BY 1
START WITH 100
MINVALUE 100
MAXVALUE 99999
NOCYCLE
NOCACHE
ORDER;
--��Ź���� �� ���� INSERT
INSERT INTO F_PET_CHO(F_PET_CHO_ID,F_ID,P_SHA_ID)VALUES(SEQ_F_PET_CHO_ID.NEXTVAL,'102','103')
;


--��Ź���� ��û ���� ȯ�� ������
CREATE SEQUENCE SEQ_F_REF_REF_ID
INCREMENT BY 1
START WITH 100
MINVALUE 100
MAXVALUE 99999
NOCYCLE
NOCACHE
ORDER;
--==>> Sequence SEQ_F_REF_REF_ID��(��) �����Ǿ����ϴ�.

--��Ź���� ��û ���� ȯ��
INSERT INTO F_REF_REF(F_REF_REF_ID,F_REF_REF_DATE,F_REF_REF_AMOUNT,F_REF_REF_ACC_NUMBER,F_REF_REF_ACC_DEPOSITOR,BANK_ID,F_ID)VALUES(SEQ_F_REF_REF_ID.NEXTVAL,DEFAULT,20000,'302-1234567-123','�ƹ���','2','102')
;
--==>> 1 �� ��(��) ���ԵǾ����ϴ�.

--��Ź���� ���� �Ϸ��ȣ ������
CREATE SEQUENCE SEQ_F_RES_ID
INCREMENT BY 1
START WITH 100
MINVALUE 100
MAXVALUE 99999
NOCYCLE
NOCACHE
ORDER;
--==>> Sequence SEQ_F_RES_ID��(��) �����Ǿ����ϴ�.
--��Ź���� ���� �Ϸ� INSERT �� �� ����
INSERT INTO F_RESERV(F_RES_ID,F_RES_DATE,F_ID)VALUES(SEQ_F_RES_ID.NEXTVAL,DEFAULT,'102')
;
--==>> 1 �� ��(��) ���ԵǾ����ϴ�.


--��Ź���� ��� ȯ�ҹ�ȣ ������
CREATE SEQUENCE SEQ_F_CAN_REF_ID
INCREMENT BY 1
START WITH 100
MINVALUE 100
MAXVALUE 99999
NOCYCLE
NOCACHE
ORDER;
--==>> Sequence SEQ_F_CAN_REF_ID��(��) �����Ǿ����ϴ�.

--��Ź���� ��� ȯ�� INSERT
INSERT INTO F_CAN_REF(F_CAN_REF_ID,F_CAN_REF_DATE,F_CAN_REF_AMOUNT,F_CAN_REF_ACC_NUMBER,F_CAN_REF_ACC_DEPOSITOR,BANK_ID,F_RES_ID)VALUES(SEQ_F_CAN_REF_ID.NEXTVAL,DEFAULT,20000,'302-1234567-123','�ƹ���','2','100')
;
--==>> 1 �� ��(��) ���ԵǾ����ϴ�.


--��Ź���� Ȯ����ȣ ������
CREATE SEQUENCE SEQ_F_CON_ID
INCREMENT BY 1
START WITH 100
MINVALUE 100
MAXVALUE 99999
NOCYCLE
NOCACHE
ORDER;
--==>> SEQUENCE SEQ_F_CON_ID��(��) �����Ǿ����ϴ�.

--��Ź���� Ȯ�� INSERT
INSERT INTO F_CONFIRM(F_CON_ID,F_CON_DATE,F_CON_REV_TITLE,F_CON_REV_CONTENT,F_CON_REV_DATE,F_REV_IMG1,F_REV_IMG2,F_REV_IMG3,F_RES_ID,STAR_RAT_ID,CT_ID)VALUES(SEQ_F_CON_ID.NEXTVAL,DEFAULT,NULL,NULL,NULL,NULL,NULL,NULL,'100',NULL,NULL)
;
--==>> 1 �� ��(��) ���ԵǾ����ϴ�.
--��Ź���� Ȯ��,�ı� UPDATE
UPDATE F_CONFIRM 
SET F_CON_REV_TITLE='��',F_CON_REV_CONTENT='����',F_CON_REV_DATE= SYSDATE,F_REV_IMG1=NULL,F_REV_IMG2=NULL,F_REV_IMG3=NULL,STAR_RAT_ID='5',CT_ID='2'
WHERE F_CON_ID = '100';
--> �� �� ����
UPDATE F_CONFIRM SET F_CON_REV_TITLE='��',F_CON_REV_CONTENT='����',F_CON_REV_DATE=SYSDATE, F_REV_IMG1=NULL,F_REV_IMG2=NULL,F_REV_IMG3=NULL,STAR_RAT_ID='5',CT_ID='2' WHERE F_CON_ID = '100'
;
--==>> 1 �� ��(��) ������Ʈ�Ǿ����ϴ�.

--��Ź���� �����ȣ ������
CREATE SEQUENCE SEQ_F_CAL_ID
INCREMENT BY 1
START WITH 100
MINVALUE 100
MAXVALUE 99999
NOCYCLE
NOCACHE
ORDER;
--==>> Sequence SEQ_F_CAL_ID��(��) �����Ǿ����ϴ�.

--��Ź ���� ���� INSERT
--> �� �� ����
INSERT INTO F_CAL(F_CAL_ID,F_CAL_DATE,F_CAL_AMOUNT,F_CAL_ACC_NUMBER,F_CAL_ACC_DEPOSITOR,F_CON_ID,BANK_ID)VALUES(SEQ_F_CAL_ID.NEXTVAL,DEFAULT,20000,'302-1234567-123','�ƹ���','100','2')
;
--==>> 1 �� ��(��) ���ԵǾ����ϴ�.

SELECT *
FROM CON_TYPE;

SELECT *
FROM F_CONFIRM;


--��Ź���� ��û��ȣ ������
CREATE SEQUENCE SEQ_F
INCREMENT BY 1
START WITH 100
MINVALUE 100
MAXVALUE 99999
NOCYCLE
NOCACHE
ORDER;
--==>> Sequence SEQ_F��(��) �����Ǿ����ϴ�.


--��Ź���� �μ�Ʈ��
INSERT INTO F(F_ID,F_CLI_ZIPCODE
,F_CLI_ADDR
,F_CLI_ADDR_DETAIL
,F_LATITUDE,F_LONGITUDE
,F_START_DATE,F_END_DATE
,F_REQ_DATE,F_REQ_TERM
,C_TYPE_ID,PAYMENT_ID,S_ALL_ID)
VALUES(SEQ_F.NEXTVAL,'16228','��⵵ ������ ���뱸 ���ǵ�','����','123.123123','234.234234','2023-01-01','2023-01-01',DEFAULT,'�츮�ִ� ���� ���ƿ�',1,'100','100');

-- �� �� ����
INSERT INTO F(F_ID,F_CLI_ZIPCODE,F_CLI_ADDR,F_CLI_ADDR_DETAIL,F_LATITUDE,F_LONGITUDE,F_START_DATE,F_END_DATE,F_REQ_DATE,F_REQ_TERM,C_TYPE_ID,PAYMENT_ID,S_ALL_ID)VALUES(SEQ_F.NEXTVAL,'16228','��⵵ ������ ���뱸 ���ǵ�','����','123.123123','234.234234','2023-01-01','2023-01-01',DEFAULT,'�츮�ִ� ���� ���ƿ�',1,'100','100')
;
--==>>1 �� ��(��) ���ԵǾ����ϴ�.


--��Ź����� �Ƿ��� ��� ����� �����ȣ ������
CREATE SEQUENCE SEQ_F_NOS_CAL_ID
INCREMENT BY 1
START WITH 100
MINVALUE 100
MAXVALUE 99999
NOCYCLE
NOCACHE
ORDER;
--==>> Sequence SEQ_F_NOS_CAL_ID��(��) �����Ǿ����ϴ�.

--��Ź����� �Ƿ��� ��� ����� ���� INSERT
INSERT INTO F_NOS_CAL(F_NOS_CAL_ID,F_NOS_CAL_DATE,F_NOS_CAL_AMOUNT,F_NOS_CAL_ACC_DEPOSITOR,F_NOS_CAL_ACC_NUMBER,BANK_ID,F_RES_ID)VALUES(SEQ_F_NOS_CAL_ID.NEXTVAL,DEFAULT,20000,'�ƹ���','302-1234567-123','2','100')
;
--==>> 1 �� ��(��) ���ԵǾ����ϴ�.


--��Ź���� ����� ��� �Ƿ��� ȯ�ҹ�ȣ ������
CREATE SEQUENCE SEQ_F_NOS_REF_ID
INCREMENT BY 1
START WITH 100
MINVALUE 100
MAXVALUE 99999
NOCYCLE
NOCACHE
ORDER;
--==>> Sequence SEQ_F_NOS_REF_ID��(��) �����Ǿ����ϴ�.

--��Ź���� ����� ��� �Ƿ��� ȯ�� INSERT
INSERT INTO F_NOS_REF(F_NOS_REF_ID,F_NOS_REF_DATE,F_NOS_REF_AMOUNT,F_NOS_REF_ACC_NUMBER,F_NOS_REF_ACC_DEPOSITOR,BANK_ID,F_RES_ID)VALUES(SEQ_F_NOS_REF_ID.NEXTVAL,DEFAULT,20000,'302-1234567-123','�ƹ���','2','100')
;
--==>> 1 �� ��(��) ���ԵǾ����ϴ�.


--��Ź ���� ������ȣ ������
CREATE SEQUENCE SEQ_F_DIA_ID
INCREMENT BY 1
START WITH 100
MINVALUE 100
MAXVALUE 99999
NOCYCLE
NOCACHE
ORDER;
--==>> Sequence SEQ_F_DIA_ID��(��) �����Ǿ����ϴ�

--��Ź ���� ���� INSERT
INSERT INTO F_DIARY(F_DIA_ID,F_DIA_CONTENT,F_DIA_DATE,F_DIA_IMG1,F_DIA_IMG2,F_DIA_IMG3,F_PET_CHO_ID,F_RES_ID,D_MEAL_ID,D_PLAY_ID,D_POOP_ID,D_STR_ID,D_SNA_ID)
VALUES(SEQ_F_DIA_ID.NEXTVAL,'����',DEFAULT,'���1','���2','���3','100','100','1','1','1','1','1');
--> �� �� ����
INSERT INTO F_DIARY(F_DIA_ID,F_DIA_CONTENT,F_DIA_DATE,F_DIA_IMG1,F_DIA_IMG2,F_DIA_IMG3,F_PET_CHO_ID,F_RES_ID,D_MEAL_ID,D_PLAY_ID,D_POOP_ID,D_STR_ID,D_SNA_ID)VALUES(SEQ_F_DIA_ID.NEXTVAL,'����',DEFAULT,'���1','���2','���3','100','100','1','1','1','1','1')
;
--==>> 1 �� ��(��) ���ԵǾ����ϴ�.






SELECT *
FROM F_RESERV;

ROLLBACK;


SELECT *  FROM USER_VIEWS;

SELECT *
FROM V_DIARY;

SELECT *
FROM F_CAL;

SELECT *
FROM  user_sequences
WHERE SEQUENCE_NAME LIKE '%P_ID%';


SELECT *
FROM CERT;

SELECT *
FROM PET_SHARE;

ROLLBACK;



U_F_REV_TITLE
,U_F_REV_CONTENT
,U_F_REV_DATE
,U_F_REV_IMG1
,U_F_REV_IMG2
,U_F_REV_IMG3
,STAR_RAT_ID
default null

ALTER TABLE F_CONFIRM MODIFY (F_CON_REV_TITLE DEFAULT NULL);
--==>> Table F_CONFIRM��(��) ����Ǿ����ϴ�.
ALTER TABLE F_CONFIRM MODIFY (F_CON_REV_CONTENT DEFAULT NULL);
ALTER TABLE F_CONFIRM MODIFY (F_CON_REV_DATE DEFAULT NULL);
ALTER TABLE F_CONFIRM MODIFY (F_REV_IMG1 DEFAULT NULL);
ALTER TABLE F_CONFIRM MODIFY (F_REV_IMG2 DEFAULT NULL);
ALTER TABLE F_CONFIRM MODIFY (F_REV_IMG3 DEFAULT NULL);
ALTER TABLE F_CONFIRM MODIFY (STAR_RAT_ID DEFAULT NULL);

UPDATE CERT
SET C_NAME = '�ݷ�������ǰ������'
WHERE C_ID = '22';


SELECT *
FROM CERT;

SELECT *
FROM FAQ
WHERE FAQ_TYPE_ID='1';

SELECT *
FROM FAQ
WHERE FAQ_TYPE_ID='2';