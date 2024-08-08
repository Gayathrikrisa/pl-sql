do $$
declare
  records cars%rowtype;
  car_name cars.car%type = 'BMW';
begin  

  select * from cars
  into records
  where car = car_name;
  
  if not found then
     raise notice'This  %  car could not be found', 
	    car_name;
  else
     raise notice'This  %  car could  be found', 
	    car_name;
  end if;
end $$;