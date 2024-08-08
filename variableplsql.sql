do $$ 
declare
      
   first_name varchar(50) = 'Variablz';
   last_name  varchar(50) = 'Academy';
  
begin 
   raise notice 'First Name:% ,Last Name:%', 
      
	   first_name, 
	   last_name;
	  
end $$;