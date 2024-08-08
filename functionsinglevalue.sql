-- create the function
create or replace function find_stuid(sid text)
returns varchar
language plpgsql
as $$
declare
   sname student.name%type;
begin
  select name,age into sname,sage from student where id = sid;
  if not found then
     raise 'student id % not found', sid;
  end if;
    return sname;
end;$$
-- call the function
select * from find_stuid('4');