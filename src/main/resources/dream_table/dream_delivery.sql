

DROP TABLE dream_delivery;

-- 배송
CREATE TABLE dream_delivery (
	Support_No      	  	NUMBER  	  PRIMARY KEY, -- references	dream_support(Support_No),  후원 번호
	Delivery_Invoice   		NUMBER       , -- 송장번호
	Member_No               NUMBER		 , --references	dream_support(Member_No),  후원자 회원 번호
	Sender_Name	            VARCHAR2(50)  NOT NULL, -- 발송자 이름
	Sender_Address          VARCHAR2(255) NOT NULL, -- 발송자 주소
	Sender_Phone            VARCHAR2(30)  NOT NULL, -- 발송자연락처
	Receiver_Name           VARCHAR2(50)  NOT NULL, -- 수령자 이름
	Receiver_Phone          VARCHAR2(30)  NOT NULL, -- 수령자 연락처
	Receiver_Address        VARCHAR2(255) NOT NULL, -- 배송지 주소
	Receiver_Message		VARCHAR2(255) , 		-- 배송 메세지
	Delivery_Check        	NUMBER  	  DEFAULT '0'  -- 배송여부
);

ALTER TABLE dream_delivery
ADD CONSTRAINT Delivery_Project_No_FK 
FOREIGN KEY(Support_No)
REFERENCES dream_support(Support_No)
ON DELETE CASCADE;

--support no를 foreign key로 설정했음. 그걸로 거기에 있는 member정보를 읽어오면 된다.


--더미데이터
DELETE dream_delivery;

INSERT INTO dream_delivery VALUES (1, 102-382-387521, 4, '김철수' ,'서울시 동대문구','02-267-4123','주병찬','010-1234-5678');
INSERT INTO dream_delivery VALUES (2, 11-3822-384411, 5, '박영희' ,'서울시 동작구','02-333-1234','이하은','010-2134-1234');
INSERT INTO dream_delivery VALUES (3, 1012-31-312311, 6, '고종수' ,'서울시 서초구','02-234-8690','곽희수','010-1112-4567');



SELECT * FROM dream_delivery;


