ALTER TABLE agentcalls
ADD COLUMN CallPurpose varchar

update agentcalls
    set CallPurpose = (case (random()*5)::int when 0 then 'New Purchase' when 1 then 'Billing' when 2 then 'Returns' when 3 then 'Broken Product' when 4 then 'How-to' end)

SELECT * FROM public.agentcalls