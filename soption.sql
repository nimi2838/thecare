

CREATE TABLE soption (
	prdNo	CHAR(10),
	opNo	CHAR(10),
	opName	CHAR(50),
	opPrice	INT
);

DELETE FROM soption;

INSERT INTO soption VALUES ('sk02','yu1','여드름관리 1회',70000);
INSERT INTO soption VALUES ('sk02','yu2','여드름관리 3회',180000);


INSERT INTO soption VALUES ('sk01','aq1','아쿠아필 1회',29000);
INSERT INTO soption VALUES ('sk01','aq2','아쿠아필 3회',69000);


INSERT INTO soption VALUES ('sk03','cl1','클라리티 1회',200000);
INSERT INTO soption VALUES ('sk03','cl2','클라리티 3회',530000);


INSERT INTO soption VALUES ('sk04','da1','손 발/겨드랑이 50유닛 (국산)',70000);
INSERT INTO soption VALUES ('sk04','da2','헤어라인(구레나룻포함,면적에따라 비용추가)',120000);
INSERT INTO soption VALUES ('sk04','da3','기타부위(코/인중 등),면적에따라 비용추가',50000);



INSERT INTO soption VALUES ('fa01','fa1','국산필러 1cc',150000);
INSERT INTO soption VALUES ('fa01','fa2','애교필러 (국산)',190000);
INSERT INTO soption VALUES ('fa01','fa3','눈밑필러(수입)',350000);



INSERT INTO soption VALUES ('fa02','hi1','하이코',140000);
INSERT INTO soption VALUES ('fa02','hi2','하이코필러(콧대실+코필러 1회 용량제한없이',290000);

INSERT INTO soption VALUES ('fa03','lip1','입술필러(국산)',59000);
INSERT INTO soption VALUES ('fa03','lip2','입술+입꼬리 필러',190000);





INSERT INTO soption VALUES ('li01','sa1','턱보톡스 50유닛(보툴렉스)',19000);
INSERT INTO soption VALUES ('li01','sa2','턱보톡스 50유닛(수입-엘레간,제오민)',89000);

INSERT INTO soption VALUES ('li02','yun1','윤곽주사 1부위 1회',50000);
INSERT INTO soption VALUES ('li02','yun2','윤곽주사 1부위 3회',110000);


INSERT INTO soption VALUES ('li03','jo1','조각주사 1회',300000);
INSERT INTO soption VALUES ('li03','jo2','조각주사 3회',750000);





INSERT INTO soption VALUES ('bo01','bo1','종아리 200유닛(수입)',99000);
INSERT INTO soption VALUES ('bo01','bo2','승모근/허벅지/팔뚝 200유닛(수입)',190000);


INSERT INTO soption VALUES ('bo02','bsu','바디슈링크 100샷',40000);

INSERT INTO soption VALUES ('bo03','eg1','엣지주사 1부위 1회',290000);
INSERT INTO soption VALUES ('bo03','eg2','엣지주사 1부위 3회',590000);

INSERT INTO soption VALUES ('bo04','gr1','걸그룹주사 2주(1부위)',400000);
INSERT INTO soption VALUES ('bo04','gr2','걸그룹주사 4주(1부위)',1000000);








SELECT * FROM soption;





