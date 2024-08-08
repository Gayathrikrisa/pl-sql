do 
$$
begin
   for counter in reverse 10..1 by 2 loop
	raise notice 'counter: %', counter;
   end loop;
end; 
$$;