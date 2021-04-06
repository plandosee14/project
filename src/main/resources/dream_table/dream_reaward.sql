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
   
--더미데이터
delete dream_reward;

insert into dream_reward values(dream_reward_seq.nextval,1,'모 플레이 본체','본체 세트',100,300000,sysdate+50);
insert into dream_reward values(dream_reward_seq.nextval,1,'모 플레이 주변기기세트','본체와 주변기기',100,500000,sysdate+50);
insert into dream_reward values(dream_reward_seq.nextval,1,'모 플레이 OST','모 플레이 OST',300,30000,sysdate+50);
insert into dream_reward values(dream_reward_seq.nextval,1,'모 플레이 주변기기','주변기기',100,250000,sysdate+50);

insert into dream_reward values(dream_reward_seq.nextval,2,'스몰 와우 본체','본체 세트',100,35000,sysdate+30);
insert into dream_reward values(dream_reward_seq.nextval,2,'스몰 와우 설정집','설정집',100,20000,sysdate+30);

insert into dream_reward values(dream_reward_seq.nextval,3,'루나 게임 아이템','캐쉬 100000원',10000,80000,sysdate+50);
insert into dream_reward values(dream_reward_seq.nextval,3,'루나 설정집','설정집',300,25000,sysdate+50);

select * from dream_reward;