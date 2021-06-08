CREATE SEQUENCE t_board_no_seq;



/* Create Tables */

CREATE TABLE t_board
(
	no number NOT NULL,						--글번호
	title varchar2(100) NOT NULL,			--글제목
	name varchar2(20) NOT NULL,				--작성자 이름
	passwd varchar2(128) NOT NULL,			--비번
	content clob NOT NULL,					--character large object
	regdate date DEFAULT sysdate NOT NULL,	--작성일/시간
	readcount number(6) DEFAULT 0 NOT NULL,	--조회수
	PRIMARY KEY (no)
);

select no
      ,title
      ,name
      ,to_char(regdate,'YYYY/MM/DD') as regdate
      ,readcount 
from t_board
order  by no desc;

select no
      ,title
      ,name
      ,regdate
      ,readcount
      ,content
from t_board
where no=1;


