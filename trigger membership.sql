create table memberships(
id serial primary key,
member_id int not null references members(id),
membership_type varchar(50) not null default 'free')