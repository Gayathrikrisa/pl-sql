do
$$
declare
	rec record;
begin
	
	select car,weight,origin
	into rec
	from cars
	where car = 'Ford Torino';
	
	raise notice 'name :% , weight :%, origin :%', rec.car, rec.weight, rec.origin;   
	
end;
$$
language plpgsql;