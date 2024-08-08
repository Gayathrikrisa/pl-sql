do
$$
declare
	car_details record;
	car_name text='Ford%';
begin
	select car,mpg,cylinders,origin  into  strict car_details from cars 
	where car like car_name;
exception
   when no_data_found then
   		raise notice 'Car name  % is not available here',car_name;
   when too_many_rows then
		raise notice 'Too many car name % is avaiable',car_name;
end;
$$
language plpgsql;