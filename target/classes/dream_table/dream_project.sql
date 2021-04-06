-- 후원을 위한 프로젝트 임시테이블 

-- user
DROP TABLE dream_Project;

-- user
CREATE TABLE dream_Project (
	Project_No             	NUMBER        primary key, -- 프로젝트 번호
	Member_No				NUMBER  	 ,--references dream_member(Member_No),  등록자 번호
	
	--프로젝트 기본정보
	Project_Title           VARCHAR2(255) NOT NULL, -- 프로젝트 타이틀	 (한글/영문 : 20/30)	
	Project_Thumbnail       VARCHAR2(300) NOT NULL, -- 프로젝트 썸네일 
	Project_Category        VARCHAR2(30)  NOT NULL, -- 프로젝트 카테고리
	Project_Summary         CLOB      NOT NULL, -- 프로젝트 요약 설명 (한글/영문 : 200/300)
	Project_Start_Date      DATE          NOT NULL, -- 프로젝트 시작일자
	Project_End_Date        DATE          NOT NULL, -- 프로젝트 종료일자
	Project_Goal_Amount     NUMBER        NOT NULL, -- 프로젝트 목표금액

	-- 프로젝트 스토리 정보
	Project_Video_Type      VARCHAR2(3)	,
	Project_Video          	VARCHAR2(300) DEFAULT 'NO VIDEO', -- 프로젝트 영상
	Project_Content        	CLOB, 						  -- 프로젝트 내용
	-- 프로젝트 계좌 정보
	Project_Address			VARCHAR2(255) DEFAULT 'NO ADDRESS', 	-- 등록자 주소 (한글/영문 : 100/150)
	Project_Bank			VARCHAR2(50)  DEFAULT 'NULL',			-- 프로젝트 계좌은행
	Project_Account		   	VARCHAR2(255) DEFAULT 0, 				-- 프로젝트 계좌
	Project_VirTualaccount	VARCHAR2(255) DEFAULT '100-103-888111', -- 프로젝트 가상계좌
	--프로젝트 현황
	Now_Amount             	NUMBER        DEFAULT 0, 	-- 현재 후원 총액
	Supporting_Count       	NUMBER        DEFAULT 0, 	-- 현재 후원 수
	Project_Process_State 	NUMBER  	  DEFAULT 0,    -- 프로젝트 등록여부 (0 = 등록전 , 4 =  기간완료)
	Project_Success_State  	VARCHAR2(10)  DEFAULT 'F',  -- 프로젝트 성공여부 (T = 후원완료, T = 후원실패)
	Project_Show_State	   	VARCHAR2(2)	  DEFAULT 'F',	-- 현재 조회 수 (T = 노출, F = 비노출)
	Project_ViewCnt		   	NUMBER		  DEFAULT 0,	-- 현재 조회 수
	
	Project_ReportCount		NUMBER		  DEFAULT 0,	-- 프로젝트 신고수
	Project_Date			DATE		  DEFAULT SYSDATE	
);
-- alter table dream_project add Projcet_ViewCnt NUMBER DEFAULT 0 (추가완료)
-- alter table dream_project add Register_Profile VARCHAR2(300) DEFAULT 'NO VALUE' (추가완료)
-- alter table dream_project add Register_Name VARCHAR2(50)(추가완료)

ALTER TABLE dream_Project
ADD CONSTRAINT Project_Member_No_FK 
FOREIGN KEY(Member_No)
REFERENCES dream_member(Member_No)
ON DELETE CASCADE;

-- users
ALTER TABLE Dream_Project
	ADD CONSTRAINT Project_Process_State -- 프로젝트 등록여부
		CHECK (Project_Process_State in (0, 1, 2, 3, 4));
		-- 0 : 등록전
		-- 1 : 제출 심사중
		-- 2 : 심사 완료 및 등록 대기
		-- 3 : 프로젝트 진행중 
		-- 4 : 기간 완료
-- users
ALTER TABLE Dream_Project
	ADD CONSTRAINT Project_Show_State -- 프로젝트 등록여부
		CHECK (Project_Show_State in ('F', 'T'));
		-- F : 비노출
		-- T : 노출

-- user
ALTER TABLE Dream_Project
	ADD CONSTRAINT Project_Success_State -- 프로젝트 성공여부
		CHECK (Project_Success_State in ('T' ,'F'));
	
drop sequence dream_project_seq;
create sequence dream_project_seq
	start with 1
	increment by 1
	nocycle
	nocache;

		--요기까지 복붙
--new 더미데이터
delete DREAM_PROJECT;

insert into dream_Project values(dream_project_seq.nextval, 1, '[6억  4.9점 앵콜] 드럼 게임하듯 쉽게 따라만 하세요, 모플레이',
'resources/img/moPlay.jpg', 'Game','모플레이는 모(모두가) 플레이(악기 하나는 연주하자!) 라는 모토로 창업한 이제 2년 차에 접어든 음악 전문 스타트업입니다. 저희는 악기를 배우는 것은 지루하고 어렵다라는 사람들의 생각과, 높은 진입장벽을 깨보자는 생각으로 모인 음악을 진심으로 애정하고 좋아하는 사람들입니다. 조금 더 많은 분들이 악기 연주를 더 쉽고 재미있게 즐겼으면 하고 바라는 마음에 본 프로젝트를 시작하게 되었습니다.',
sysdate,sysdate+50,500000000,'Y','https://youtu.be/3iDdXlfZB4w','모 플레이 프로젝트','서울시 동대문구','국민은행','012-12839-281','100-1203-1231321',0,0,0,'F','F',0,0,sysdate);

insert into dream_Project values(dream_project_seq.nextval, 2, '블리자드의 게임 와우를 보드게임으로! 스몰 월드 오브 워크래프트',
'resources/img/wow.jpg', 'Game','블리자드의 게임 와우를 보드게임으로! 스몰 월드 오브 워크래프트',
sysdate,sysdate+30,500000000,'Y','https://youtu.be/SnazWuUbyUc','모 플레이 프로젝트','서울시 동작구','국민은행','012-12839-281','100-1203-1231321',0,0,0,'F','F',0,0,sysdate);

insert into dream_Project values(dream_project_seq.nextval, 3, '달빛마녀 루나가 홀로 서는 이야기. 싱글 육성 RPG 마녀의 샘2',
'resources/img/lunar.jpg', 'Game','달빛마녀 루나가 홀로 서는 이야기. 싱글 육성 RPG 마녀의 샘2',
sysdate-20,sysdate+50,500000000,'Y','https://youtu.be/ruZKRMKh2mM','모 플레이 프로젝트','서울시 서초구','국민은행','012-12839-281','100-1203-1231321',0,0,0,'F','F',0,0,sysdate);

select * from DREAM_PROJECT;
	
	
	
	
	
	
	
	
	alter table add member_mail varchar2(40) references dream_member(member_mail)
-- 더미데이터
	insert into Dream_Project 
	(member_no, Project_No, Project_Thumbnail, Project_Title, Project_Summary, Project_Account,
	Project_Content, Project_Video,
	Project_Category,Project_Goal_Amount,Project_Start_Date,Project_End_Date,Project_Register_state) 
	values(1,dream_project_seq.nextval,'resources/img/ThumnailSample.jpg','하우스 칵테일 저널','하우스 칵테일에 관한 저널 정보를 제공합니다.!', 110411833284,
	'데이터 스트림 마이닝 기술은 실시간으로 발생하는 데이터를 분석하여 유용한 정보를 얻는 기술이다. 데이터 스트림 마이닝 기술 중에서 빈발항목 마이닝은 전송되는 데이터들 중에서 어떤 항목이 빈발한지 찾는 기술이며, 찾은 빈발 항목들은 다양한 분야에서 패턴분석이나 마케팅의 목적으로 사용된다. 기존에 제안된 데이터 스트림 빈발항목 마이닝은 악의적인 공격자가 전송되는 데이터를 스니핑할 경우 데이터 제공자의 실시간 정보가 노출되는 문제점을 가지고 있다. 이러한 문제는 전송되는 데이터에서 원본 데이터를 구별 못하게 하는 더미 데이터 삽입 기법을 통해 해결가능하다. 본 논문에서는 더미 데이터 삽입 기법을 이용한 프라이버시 보존 데이터 스트림 빈발항목 마이닝 기법을 제안한다. 또한, 제안하는 기법은 암호화 기법이나 다른 수학적 연산이 요구되지 않아 연산량 측면에서 효과적이다.',
	'영상주소','컴퓨터 공학',1000000,sysdate,sysdate+50,'T');
	
	insert into Dream_Project 
	(member_no, Project_No, Project_Thumbnail, Project_Title, Project_Summary, Project_Account,
	Project_Content, Project_Video,
	Project_Category,Project_Goal_Amount,Project_Start_Date,Project_End_Date, Project_Register_state) 
	values(1,dream_project_seq.nextval,'resources/img/ThumnailSample2.jpg','디스코팡팡 레코드팡팡','디스코 팡팡! 신나는 음악과 함께 하세요!', 110411833284,
	'데이터 스트림 마이닝 기술은 실시간으로 발생하는 데이터를 분석하여 유용한 정보를 얻는 기술이다. 데이터 스트림 마이닝 기술 중에서 빈발항목 마이닝은 전송되는 데이터들 중에서 어떤 항목이 빈발한지 찾는 기술이며, 찾은 빈발 항목들은 다양한 분야에서 패턴분석이나 마케팅의 목적으로 사용된다. 기존에 제안된 데이터 스트림 빈발항목 마이닝은 악의적인 공격자가 전송되는 데이터를 스니핑할 경우 데이터 제공자의 실시간 정보가 노출되는 문제점을 가지고 있다. 이러한 문제는 전송되는 데이터에서 원본 데이터를 구별 못하게 하는 더미 데이터 삽입 기법을 통해 해결가능하다. 본 논문에서는 더미 데이터 삽입 기법을 이용한 프라이버시 보존 데이터 스트림 빈발항목 마이닝 기법을 제안한다. 또한, 제안하는 기법은 암호화 기법이나 다른 수학적 연산이 요구되지 않아 연산량 측면에서 효과적이다.',
	'영상주소','음악',1000000,sysdate,sysdate+50,'T');
	
	insert into Dream_Project 
	(member_no, Project_No, Project_Thumbnail, Project_Title, Project_Summary, Project_Account,
	Project_Content, Project_Video,
	Project_Category,Project_Goal_Amount,Project_Start_Date,Project_End_Date,Project_Register_state) 
	values(1,dream_project_seq.nextval,'resources/img/ThumnailSample3.jpg','A LITTLE LESS DESPERATION','THERE IS NO INTERESTED GAME IN THIS WEBSITE COME WITH ME!', 110411833284,
	'데이터 스트림 마이닝 기술은 실시간으로 발생하는 데이터를 분석하여 유용한 정보를 얻는 기술이다. 데이터 스트림 마이닝 기술 중에서 빈발항목 마이닝은 전송되는 데이터들 중에서 어떤 항목이 빈발한지 찾는 기술이며, 찾은 빈발 항목들은 다양한 분야에서 패턴분석이나 마케팅의 목적으로 사용된다. 기존에 제안된 데이터 스트림 빈발항목 마이닝은 악의적인 공격자가 전송되는 데이터를 스니핑할 경우 데이터 제공자의 실시간 정보가 노출되는 문제점을 가지고 있다. 이러한 문제는 전송되는 데이터에서 원본 데이터를 구별 못하게 하는 더미 데이터 삽입 기법을 통해 해결가능하다. 본 논문에서는 더미 데이터 삽입 기법을 이용한 프라이버시 보존 데이터 스트림 빈발항목 마이닝 기법을 제안한다. 또한, 제안하는 기법은 암호화 기법이나 다른 수학적 연산이 요구되지 않아 연산량 측면에서 효과적이다.',
	'영상주소','게임',1000000,sysdate,sysdate+50,'T');

--더미데이터
select * from dream_project
DELETE FROM DREAM_PROJECT where project_no = 1

drop table project;
create table project(
	Pro_No			NUMBER		primary key,		
	M_Id			varchar2(20) 	not null references member(M_id),
	Pro_Thumbnail	varchar2(2000)	not null, -- 썸네일 이미지 url
	Pro_Title		varchar2(300)	not null, -- 프로젝트 타이틀
	Pro_Catagory	varchar2(50)	not null, -- 프로젝트 카테고리
	Pro_Start		date			not null, -- 프로젝트 시작일(sysdate)
	Pro_End			date			not null, -- 프로젝트 끝일(sysdate+a)
	Pro_Goal		NUMBER			not null, -- 프로젝트 목표금액
	Pro_state		NUMBER 	default '0',
	--Pro_state
	--0 : 현재 등록중
	--1 : 등록 완료 & 후원 진행중
	--2 : 후원 기간 마감		
	--프로젝트 기본 정보 입력시 필요 컬럼
	
	Pro_Video		varchar2(2000), -- 프로젝트 비디오 url
	Pro_Content		long, -- 프로젝트 소개 내용
	Pro_link		varchar2(2000), -- 프로젝트 관련 링크 url
 	--프로젝트 스토리 정보 입력시 필요 컬럼
	
	Pro_fileImage	varchar2(2000), -- 등록자 사진url
	Pro_fileIntro 		varchar2(2000), --등록자 소개 정보 (lontext로 자료형 변환 할것
	Pro_zip             varchar2(2000),
	Pro_address			varchar2(255), --프로필등록 회사주소
	Pro_fileSns			varchar2(255), -- 등록자 sns url
	--프로젝트 등록자 프로필 정보 입력시 필요 컬럼
	
	Pro_Bank		varchar2(40), -- 후원 달성시 입금받을 은행명
	Pro_Account		varchar2(50)	, 	  -- 후원 달성시 입금받을 계좌명
	--프로젝트 계좌 정보 입력시 필요 컬럼
	
	Su_Count		NUMBER default '0', -- 현재 프로젝트가 후원받은 수
				
	Now_Amount		NUMBER default '0'--현재까지 후원된 금액
);

drop sequence project_seq;
create sequence project_seq
	start with 1
	increment by 1
	nocycle
	nocache;



alter table project ADD(pro_link varchar2(255));
alter table project ADD(pro_sns varchar2(255));
alter table project MODIFY (Pro_Content long);


desc project;
insert into project
(pro_No,m_id,pro_title,pro_thumbnail,pro_catagory,pro_start,pro_end,pro_goal,
su_count)
values (project_seq.nextval,'test2','dreamup','코알라.jpg','음악',
	sysdate,sysdate,2000000,200);


select * from member;
update project set now_amount=2000

	
select pro_no, now_amount from project where pro_no =54;
delete from project where pro_no = 51;
select re_no from reward where pro_no = 51;
delete from reward where re_no =32;
select * from reward where re_no = 34;

select * from support where re_no =34;

delete from support where re_no = (select re_no from reward where pro_no =51 );

alter table project drop (pro_image)	
ALTER TABLE TABLE_NAME  DROP(columnName );

select * from project where pro_no = 53;

select (now_amount/pro_goal)*100 as goal from project where pro_no = #pro_no#
select (pro_end - pro_start) from project

select pro_goal, pro_end, pro_thumbnail, pro_title, trunc((now_amount/pro_goal)*100) as goal, round(pro_end - pro_start)as duedate from project;
		select
		trunc((now_amount/pro_goal)*100) as progress, pro_goal, pro_end,
		pro_thumbnail, pro_title, round(pro_end - pro_start) as due_date
		,pro_no from project
		
		select now_amount, pro_goal from project
	
	select pro_video,su_count,now_amount,pro_goal,
		Pro_fileImage,Pro_fileIntro,Pro_fileSns,
		pro_content,Pro_image
		from
		project
		where pro_no=20
		
		
		select pro_no,pro_thumbnail,pro_title
		from project
		where upper(pro_title) like upper('%D%')
		
				update project set now_amount = 50000 where pro_no = 29
		select pro_no,pro_video,su_count,now_amount,pro_goal,
		Pro_fileImage,Pro_fileIntro,Pro_fileSns
		from
		project
		where pro_no=4
		
		select
		trunc((now_amount/pro_goal)*100) as progress, pro_goal, pro_end,
		pro_thumbnail, pro_title, round(pro_end - pro_start) as due_date
		,pro_no,su_count from project where m_id = 'kancho33' and pro_state = 1
		
		
		
		select * from project where pro_no = 59
		select * from support
		
		select *
		from project
		where pro_no = (select pro_no from support where m_id = 'kancho33')
		
		