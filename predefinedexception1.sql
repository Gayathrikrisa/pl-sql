do
$$
declare
	rec record;
	stud_id int=101;
begin
	select id,name,age into  strict rec from student
	where id=stud_id;
if found then
	raise notice 'id : %  name : %  age : %',rec.id,rec.name,rec.age;	
end if;
exception
	when no_data_found then
			raise exception 'student id % not found',stud_id;
end;	
$$
language plpgsql;
	