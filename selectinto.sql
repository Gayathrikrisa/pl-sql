do
$$
declare
   selected_car cars%rowtype;
begin
   
   select * 
   from cars
   into selected_car
   where cylinders is null;
   raise notice 
   ' car name : % 
         cylinders: % 
	 weight   : % 
	 origin   :% ',
      selected_car.car,
        selected_car.cylinders,
	  selected_car.weight,
	  selected_car.origin;
end; 
$$;