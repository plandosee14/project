--신고테이블 
DROP TABLE dream_report;
create table dream_report(
   project_No         number ,
   member_No          number ,

--신고 기본정보
   report_No          number                        primary key,  --신고 no
   report_category    varchar2(100)  default '음식'     not null,  --신고 카테고리
   report_date        date           default sysdate,             --신고일
   report_contents    varchar2(500)  default '안녕'     not null   --신고내용
);

ALTER TABLE dream_report
ADD CONSTRAINT report_Member_No_FK 
FOREIGN KEY(Member_No)
REFERENCES dream_member(Member_No)
ON DELETE CASCADE;

ALTER TABLE dream_report
ADD CONSTRAINT report_project_No_FK 
FOREIGN KEY(project_No)
REFERENCES dream_project(project_No)
ON DELETE CASCADE;

drop sequence dream_report_seq;
create sequence dream_report_seq
   start with 1
   increment by 1
   nocycle
   nocache;

   
  select * from DREAM_REPORT; 
   
--신고테이블  끝  