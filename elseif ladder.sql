do $$
declare
  res cars%rowtype;
   car_description varchar(100);
begin  

  select * from cars
  into res
  where car = 'Ford Torino';
  
  if not found then
     raise notice 'car not found';
  else
      if res.cylinders >2 and res.cylinders<3 then
		 car_description := 'Light weight vehicle';
	  elsif res.cylinders > 4 and res.cylinders <6 then
		 car_description := 'Medium weight vehicle';
	  elsif res.cylinders >=8 then
		 car_description := 'Heavy weight vehicle';
	  else 
		 car_description := 'Null Cylinders';
	  end if;
    
	  raise notice 'The % cars is %.',
	     res.car,  
	     car_description;
  end if;
end $$;