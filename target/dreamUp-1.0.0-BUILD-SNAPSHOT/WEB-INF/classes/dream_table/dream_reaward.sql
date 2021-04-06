-- 리워드
DROP TABLE Dream_Reward;

-- 리워드
CREATE TABLE Dream_Reward (
	Reward_No					NUMBER		  PRIMARY KEY, -- 프로젝트 리워드 번호
	Project_No           		NUMBER        NOT NULL, -- references dream_project(project_no), -- 프로젝트 번호
	Reward_Title         		VARCHAR2(255) NOT NULL, -- 리워드 타이틀
	Reward_Items         		VARCHAR2(255) NOT NULL, -- 리워드 품목
	Reward_Limited_Count 		NUMBER        NOT NULL, -- 리워드 한정수량
	Reward_Amount        		NUMBER        NOT NULL, -- 리워드 금액
	Reward_Delivery_Date 		DATE          NOT NULL  -- 배송 예정일
);

ALTER TABLE dream_reward
ADD CONSTRAINT Reward_Project_No_FK 
FOREIGN KEY(Project_No)
REFERENCES dream_project(Project_No)
ON DELETE CASCADE;

-- 리워드 sequence
drop SEQUENCE dream_reward_seq;
create SEQUENCE dream_reward_seq
   start with 1
   increment by 1
   nocycle
   nocache;