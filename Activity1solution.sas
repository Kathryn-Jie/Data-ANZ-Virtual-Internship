data work.shoes;
 set sashelp.shoes;
 NetSales=Sales-Returns;
run;
/* No results shown because dont have the proc step */

 data national;
    set sashelp.baseball;
    BatAvg=nHits/nAtBat;
run;

proc means data=NATIONAL;
    var BatAvg;
run;
/* no error */

*Create a cars report;

title "European Cars Priced Over 30K";
footnote "Internal Use Only";

proc print data=sashelp.cars;
    where Origin='Europe'
          and MSRP>30000;
    var Make Model Type
        Mpg_City Mpg_Highway;
run;
/* seven statements */

proc contents data="/home/u49691561/EPG194/data/storm_summary.sas7bdat";
run;
/* to look for the summary of table */

