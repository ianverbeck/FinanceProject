/*First query.. looking like the db is up and running!! Need to run some tests to make sure...
will put in later application with testing, deployment, etc. For now just using data for review*/
from CV_QUOTE
where symbol in (select symbol
                from CV_PROFILE
                where isEtf == True
                order by volAvg
                limit 5)
order by avgVolume;
