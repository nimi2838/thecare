CREATE TABLE test(
uId CHAR(10),
testNo CHAR(50),
YN CHAR(10));
}


CREATE TABLE gocart(
merchant_uid VARCHAR(50),
ctNo CHAR(40),
prdNo CHAR(10),
opNo CHAR(10)
);



CREATE TABLE coupon(
cNo CHAR(10),
cName CHAR(100),
cPoint INT
);


CREATE TABLE rez(
rezNo CHAR(10),
prdNo CHAR(10),
rezDate DATETIME,
opNO CHAR(10)
);


INSERT INTO coupon VALUES ("c01","회원가입 2,000원 할인쿠폰",2000);
INSERT INTO coupon VALUES ("c02","코로나 극복 응원 5,000원 할인 쿠폰",5000);
INSERT INTO coupon VALUES ("c03","썸머 이벤트 만원 쿠폰",10000);
INSERT INTO coupon VALUES ("c04","첫 방문 체험 30,000원 쿠폰",30000);
INSERT INTO coupon VALUES ("c05","가정의 달 맞이 20,000원 할인 쿠폰",20000);

DELETE FROM coupon

SELECT * FROM USER;

UPDATE USER SET POINT= 0 WHERE uId="qqq";


SELECT * FROM coupon;