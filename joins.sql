create table stud(sid int,sname text)
insert into stud values(1,'Anith'),
(2,'Bala'),(5,'seetha'),(6,'gayathri')

select * from stud


create table mark(mid int,mark int,course text,grade text)
insert into mark values(1,90,'python','A'),
(2,96,'C++','O'),(4,65,'SQL','C'),(7,89,'Pandas','A')

select * from mark
-- inner join
select * from stud , mark where sid=mid

-- left join
select * from stud left join mark on stud.sid=mark.mid is null

-- right join
select * from stud right join mark on stud.sid=mark.mid is null

-- full join
select * from stud full join mark on stud.sid=mark.mid

-- cross join

select e.ename,e.salary ,s.sid from employee e,stud s
