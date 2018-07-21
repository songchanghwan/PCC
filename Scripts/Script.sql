   create table board(
   		idx int(4) primary key auto_increment,
   		ref int(4) not null,
   		content TEXT(30000) not null,
   		user VARCHAR(10) not null,
   		regdate timestamp default now(),
   		count int(20) not null,
   		hit int(20) default 0
   	)
   	
   	INSERT INTO board(ref, content, user, regdate, count, hit)
   	VALUES (2, '열세번째 게시판', 'song', now(), 0, 0)

   	
show variables like 'c%';
   	
SHOW CREATE TABLE board;

ALTER TABLE board CONVERT TO character SET utf8;