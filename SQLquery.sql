select *
from Country co
where 400 < all ( 
    select ci.Population 
    from City ci 
    where ci.CountryID = co.CountryID
    )

select Name
from Country co
where 0 = (
    select count(*)
    from City ci 
        join Building b on b.CityID = ci.CityID
    where ci.CountryID = co.CountryID
    ) 

