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
   	VALUES (2, '������° �Խ���', 'song', now(), 0, 0)

   	
show variables like 'c%';
   	
SHOW CREATE TABLE board;

ALTER TABLE board CONVERT TO character SET utf8;

select * from board ORDER BY board_idx =1 AND visible=1 DESC LIMIT 1,6

select * from board ORDER BY idx DESC LIMIT 5,5 

select * from board ORDER BY idx DESC LIMIT 5 OFFSET 0 

select * from board ORDER BY idx DESC LIMIT 5 OFFSET 5

   create table pcc_join(
   		idx int(4) primary key auto_increment,
   		id VARCHAR(20) NOT NULL,
   		nicname VARCHAR(20) NOT null,
   		password VARCHAR(20) NOT NULL,
   		email VARCHAR(50) NOT null,
   		regdate TIMESTAMP DEFAULT now(),
   		ip VARCHAR(20)
   	)
   	
   	DELETE FROM pcc_join WHERE idx=4;
   
   
   
   	 		insert into board
	 			(subject, content, user, regdate, board_idx, board_idx_incre) 
	 		values
	 			('안녕', 'ㅎㅇㅎㅇ', 'song' , now(), 1, (SELECT board_idx_incre FROM board ORDER BY board_idx_incre DESC LIMIT 1))
	 			
	 			
SELECT board_idx_incre FROM board where board_idx=1 ORDER BY board_idx_incre DESC LIMIT 1 


	select * from board where board_idx=1 AND board_idx_incre=1
	
	update board set subject='안녕하세요', content='처음 가입인사 드립니다.' where board_idx=1 AND board_idx_incre=1
	ALTER TABLE board AUTO_INCREMENT=1 
	
	SET @COUNT = 0 
	
	UPDATE board SET idx = @COUNT:=@COUNT+1
	
	UPDATE board SET board_idx_incre = board_idx_incre-1 where board_idx = 1 AND board_idx_incre > 5
	
	UPDATE board SET board_idx_incre = board_idx_incre-1 where board_idx = '1' AND board_idx_incre > '12'
	
	select * from board where board_idx=1 and visible=1 ORDER BY board_idx DESC LIMIT 1,15
	
	
	select * from board where board_idx=1 and visible=1 ORDER BY board_idx_incre DESC LIMIT 1,5
		 		
		 		
		 		
		 		