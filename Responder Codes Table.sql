drop table ellise.Prospecting_Sources_FY14;

create table ellise.Prospecting_Sources_FY14
(SourceCode varchar(10),
mailsource varchar(45),
maildate date,
mailtype varchar(10)
) 
segmented by hash(SourceCode) all nodes
;


copy ellise.Prospecting_Sources_FY14
(SourceCode, mailsource, maildate, mailtype)
from local 'T:\Ellis\Prospecting Modeling\Prospecting_Sourcecodes_FY14.txt'
REJECTED DATA 'T:\Ellis\Prospecting Modeling\rejected1.txt'
EXCEPTIONS 'T:\Ellis\Prospecting Modeling\exceptions1.txt'
delimiter E'\t' enclosed by '' skip 0;

select * from ellise.Prospecting_Sources_FY14 limit 10;
