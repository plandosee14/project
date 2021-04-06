DROP TABLE Dream_Member_Address
-- 배송지
CREATE TABLE Dream_Member_Address (
   Address_Member_No       NUMBER        primary key, --Primary Key
   Member_No               NUMBER        NOT NULL, --member_No Foreign Key
   Address_Member_Name     VARCHAR2(30)  NOT NULL, --받는 사람 이름
   Address_Ailais          VARCHAR2(30)  NOT NULL, --주소 별칭
   Member_Address_zip_code NUMBER        NOT NULL, --우편번호
   Member_Address          VARCHAR2(200) NOT NULL, --법정 주소
   Member_Detail_Address   VARCHAR2(200) NOT NULL, --상세 주소
   Address_Member_Phone    VARCHAR2(30)  NOT NULL,  --등록 된 폰 번호
   Delivery_Address        VARCHAR2(20)  DEFAULT 'F'
);
--프로젝트 배송지 여부//프로젝트 등록시 T로 변경해서 삭제 방지해야한다.
-- alter table dream_member_address add constraint 
ALTER TABLE Dream_Member_Address
ADD CONSTRAINT Address_Member_No_FK --member_no FK
FOREIGN KEY (Member_No)
REFERENCES dream_member(Member_No)
ON DELETE CASCADE;


      
DROP SEQUENCE dream_address_seq;
CREATE SEQUENCE dream_address_seq
   START WITH 1
   INCREMENT BY 1
   NOCYCLE
   NOCACHE;