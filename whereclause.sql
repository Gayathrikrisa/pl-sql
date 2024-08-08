select * from cars
select car,cylinders,origin from cars where car='Ford Torino'
select * from cars where cylinders<>6 order by cylinders
select * from cars where cylinders is null
select * from cars where mpg=15 and cylinders=8
select * from cars where (mpg=15 or mpg=17 )and cylinders=6
select * from cars where mpg in(14,15)
select * from cars where not cylinders =8