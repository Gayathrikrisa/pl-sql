do
$$
declare
    f record;
begin
    for f in select car,origin
	       from cars limit 10 
    loop 
	raise notice '%(%)', f.car, f.origin;
    end loop;
end;
$$