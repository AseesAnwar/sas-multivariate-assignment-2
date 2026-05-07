/*
    Question 4
    THC chemical summary statistics, correlations, scatterplot matrix, and PCA.
*/

%let thc_file = &project_root/data/Dataset THC.csv;

proc import datafile="&thc_file"
    out=thc
    dbms=csv
    replace;
    getnames=yes;
run;

proc means data=thc mean stddev maxdec=4;
    var chem1 chem2 chem3 chem4 chem5 chem6 chem7
        chem8 chem9 chem10 chem11 chem12 chem13;
run;

proc corr data=thc;
    var chem1 chem2 chem3 chem4 chem5 chem6 chem7
        chem8 chem9 chem10 chem11 chem12 chem13;
run;

proc sgscatter data=thc;
    matrix chem1 chem2 chem3 chem4 chem5 chem6 chem7
           chem8 chem9 chem10 chem11 chem12 chem13;
run;

proc princomp data=thc out=pcout plots=scree;
    var chem1 chem2 chem3 chem4 chem5 chem6 chem7
        chem8 chem9 chem10 chem11 chem12 chem13;
run;

/* Confidence intervals for the first three eigenvalues from PROC PRINCOMP. */
proc iml;
    lambda = {4.7058503, 2.4969737, 1.446072};
    n = 178;
    alpha = 0.05;
    z = quantile("Normal", 1-alpha/2);

    se = lambda # sqrt(2/n);
    lower = lambda - z#se;
    upper = lambda + z#se;

    print n alpha z;
    print (lambda || se || lower || upper)
        [colname={"Eigenvalue" "SE" "Lower_95CI" "Upper_95CI"}
         rowname={"lambda1" "lambda2" "lambda3"}];
quit;

