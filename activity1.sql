CREATE TABLE supplier (
    SNO TEXT PRIMARY KEY,
    sname TEXT,
    status INTEGER,
    city TExt
);

INSERT INTO supplier(sno,sname,status,city) VALUES
("s1","smith",20,"london"),
("s2","jones",10,"paris"),
("s3","adams",30,"london");

SELECT * FROM supplier;
