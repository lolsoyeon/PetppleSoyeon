CREATE OR REPLACE PROCEDURE PRC_INS_PET
(V_PET_ID        IN PET.PET_ID %TYPE
,V_PET_IMG       IN PET.PET_IMG %TYPE
,V_PET_NAME      IN PET.PET_NAME %TYPE
,V_PET_BIRTHDAY  IN PET.PET_BIRTHDAY %TYPE
,V_PET_WEIGHT    IN PET.PET_WEIGHT %TYPE
,V_PET_COMMENT   IN PET.PET_COMMENT %TYPE
,V_PET_REG_DATE  IN PET.PET_REG_DATE %TYPE
,V_GENDER_ID     IN PET.GENDER_ID %TYPE
,V_G_ID          IN PET.G_ID %TYPE
,V_D_OR_CAT_ID   IN PET.D_OR_CAT_ID %TYPE
,V_KIND_ID       IN PET.KIND_ID %TYPE
,V_P_SHA_ID      IN PET_SHARE.P_SHA_ID %TYPE
,V_P_SHA_DATE    IN PET_SHARE.P_SHA_DATE %TYPE
,V_TMP_MEMBER_ID IN PET_SHARE.TMP_MEMBER_ID %TYPE
)
IS
-- 변수선언
BEGIN
-- 실행문자
    INSERT INTO PET(PET_ID,PET_IMG,PET_NAME,PET_BIRTHDAY,PET_WEIGHT,PET_COMMENT,PET_REG_DATE,GENDER_ID,G_ID,D_OR_CAT_ID,KIND_ID)
    VALUES(V_PET_ID, V_PET_IMG, V_PET_NAME, V_PET_BIRTHDAY,V_PET_WEIGHT, V_PET_COMMENT, V_PET_REG_DATE, V_GENDER_ID, V_G_ID, V_D_OR_CAT_ID, V_KIND_ID);
    
    INSERT INTO PET_SHARE(P_SHA_ID,P_SHA_DATE,PET_ID,TMP_MEMBER_ID)VALUES(V_P_SHA_ID,V_P_SHA_DATE,V_PET_ID,V_TMP_MEMBER_ID);
    COMMIT;
    
END;

Procedure PRC_INS_PET이(가) 컴파일되었습니다.

select * from INFORMATION_SCHEMA.ROUTINES


--펫 등록 → 펫 공유코드
EXEC PRC_INS_PET('경로','똘이',TO_DATE('2023-01-02','YYYY-MM-DD'),'3','참고사항','1','1','1','1','D6KE61CYZX');
--==>> PL/SQL 프로시저가 성공적으로 완료되었습니다.










CREATE OR REPLACE PROCEDURE PRC_INS_PET
(V_PET_ID        IN PET.PET_ID %TYPE
,V_PET_IMG       IN PET.PET_IMG %TYPE
,V_PET_NAME      IN PET.PET_NAME %TYPE
,V_PET_BIRTHDAY  IN PET.PET_BIRTHDAY %TYPE
,V_PET_WEIGHT    IN PET.PET_WEIGHT %TYPE
,V_PET_COMMENT   IN PET.PET_COMMENT %TYPE
,V_PET_REG_DATE  IN PET.PET_REG_DATE %TYPE
,V_GENDER_ID     IN PET.GENDER_ID %TYPE
,V_G_ID          IN PET.G_ID %TYPE
,V_D_OR_CAT_ID   IN PET.D_OR_CAT_ID %TYPE
,V_KIND_ID       IN PET.KIND_ID %TYPE
,V_P_SHA_ID      IN PET_SHARE.P_SHA_ID %TYPE
,V_P_SHA_DATE    IN PET_SHARE.P_SHA_DATE %TYPE
,V_TMP_MEMBER_ID IN PET_SHARE.TMP_MEMBER_ID %TYPE
)
IS
-- 변수선언
BEGIN
-- 실행문자
    INSERT INTO PET(PET_ID,PET_IMG,PET_NAME,PET_BIRTHDAY,PET_WEIGHT,PET_COMMENT,PET_REG_DATE,GENDER_ID,G_ID,D_OR_CAT_ID,KIND_ID)
    VALUES(V_PET_ID, V_PET_IMG, V_PET_NAME, V_PET_BIRTHDAY,V_PET_WEIGHT, V_PET_COMMENT, V_PET_REG_DATE, V_GENDER_ID, V_G_ID, V_D_OR_CAT_ID, V_KIND_ID);
    
    INSERT INTO PET_SHARE(P_SHA_ID,P_SHA_DATE,PET_ID,TMP_MEMBER_ID)VALUES(V_P_SHA_ID,V_P_SHA_DATE,V_PET_ID,V_TMP_MEMBER_ID);
    COMMIT;
    
END;
