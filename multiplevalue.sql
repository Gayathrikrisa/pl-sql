create or replace function get_carinfo(
    out min_weight int,
    out max_weight int,
    out avg_weight numeric) 
language plpgsql
as $$
begin
  
  select min(weight),
         max(weight),
		 avg(weight)::numeric(5,1)
  into min_weight, max_weight, avg_weight
  from cars;

end;$$
select * from get_carinfo();