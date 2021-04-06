-- 후원(결제)
DROP TABLE dream_Support;

-- 후원(결제)
CREATE TABLE dream_Support (
	Support_No      	NUMBER     		primary key, -- 후원 번호
	Project_No      	NUMBER  	 	,--references	dream_project(Project_No),  프로젝트 번호
	Member_No			NUMBER  	 	,--references dream_member(Member_No),  등록자 번호
	Support_Category	VARCHAR2(30)	NOT NULL, -- 리워드 선택여부
	Reword_No			NUMBER			DEFAULT 0,
	Member_Name     	VARCHAR2(50) 	NOT NULL, -- 후원자 성명
	Pay_Method			NUMBER			NOT NULL, -- 결제방법 (0 = 카드, 1 = 계좌이체)
	Pay_Bank	 		VARCHAR2(50) 	NOT NULL, -- 결제 은행 OR 결제 카드사
	Pay_Account 		VARCHAR2(200) 	NOT NULL, -- 결제 카드번호 OR 입금계좌번호
	Support_Amount   	NUMBER      	NOT NULL, -- 후원 금액
	Payback_Bank		VARCHAR2(50)	NOT NULL, -- 환불은행
	Payback_Account		VARCHAR2(300)	NOT NULL, -- 환불계좌
	Support_Date    	TIMESTAMP       DEFAULT sysdate -- 후원 일자  NOT NULL
);

ALTER TABLE dream_Support
ADD CONSTRAINT Support_Project_No_FK 
FOREIGN KEY(Project_No)
REFERENCES dream_project(Project_No)
ON DELETE CASCADE;

ALTER TABLE dream_Support
ADD CONSTRAINT Support_Member_No_FK 
FOREIGN KEY(Member_No)
REFERENCES dream_member(Member_No)
ON DELETE CASCADE;

drop sequence dream_support_seq;
create sequence dream_support_seq
	start with 1
	increment by 1
	nocycle
	nocache;