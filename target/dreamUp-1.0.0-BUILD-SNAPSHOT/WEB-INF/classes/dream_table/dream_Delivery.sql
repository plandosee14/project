

DROP TABLE dream_delivery;

-- 배송
CREATE TABLE dream_delivery (
	Support_No      	  	NUMBER  	  PRIMARY KEY, -- references	dream_support(Support_No),  프로젝트 번호
	Delivery_Invoice   		NUMBER       , -- 송장번호
	Member_No               NUMBER		 , --references	dream_support(Member_No),  후원자 회원 번호
	Sender_Name	            VARCHAR2(50)  NOT NULL, -- 발송자 주소
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

