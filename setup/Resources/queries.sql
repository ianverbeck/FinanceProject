/*First query.. looking like the db is up and running!! Need to run some tests to make sure...
will put in later application with testing, deployment, etc. For now just using data for review*/
from CV_QUOTE
where symbol in (select symbol
                from CV_PROFILE
                where isEtf == True
                order by volAvg
                limit 5)
order by avgVolume;


/*Get companies from symbols table that are associated with symbols from bankruptcy database*/
---better to do this in python where its easier to manipulate the strings

select *
from G1_CV_SYMBOLS S
where exists (select *
              from BANKRUPTCY B
              where S.name like '%' || B."Debtor Name" || '%')
order by S.name;

/*

*/
