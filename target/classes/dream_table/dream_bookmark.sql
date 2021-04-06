 --북마크 테이블 
 create table dream_bookmark(
 member_No number,
 project_No number,
 
 --북마크 정보
 bookmark_No number primary key,         --북마크 No
 boomark_date  date  default sysdate     --북마크 한 날짜
  );
  
 ALTER TABLE dream_bookmark
ADD CONSTRAINT bookmark_Member_No_FK 
FOREIGN KEY(Member_No)
REFERENCES dream_member(Member_No)
ON DELETE CASCADE;
  
ALTER TABLE dream_bookmark
ADD CONSTRAINT bookmark_project_No_FK 
FOREIGN KEY(project_No)
REFERENCES dream_project(project_No)
ON DELETE CASCADE;
  

create sequence dream_bookmark_seq
   start with 1
   increment by 1
   nocycle
   nocache;

    select * from dream_bookmark;  
   -- 북마크테이블 끝 