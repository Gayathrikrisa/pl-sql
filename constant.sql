do $$ 
declare
-- vat means value added tax
   vat constant numeric = 0.1;
   net_price    numeric = 20.5;
begin
   raise notice 'The selling price is %', net_price * ( 1 + vat );
end $$;