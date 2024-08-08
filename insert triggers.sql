create or replace function create_membership_after_insert()
returns trigger as $$
begin 
insert into memberships(member_id) values (new.id);
return new;
end;
$$ language plpgsql;
-- trigger creation
-- create trigger after_insert_member_trigger
-- after insert on members
-- for each row
-- execute function create_membership_after_insert()

INSERT INTO members(name, email)
VALUES('gayathri', 'kcs0781@gmail.com')
RETURNING *;
select * from members
select * from memberships

