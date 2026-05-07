/*
    Question 3
    Paired Hotelling's T-square analysis for twin measurements.
*/

%let twin_file = &project_root/data/Dataset TWIN.csv;

proc import datafile="&twin_file"
    out=twin
    dbms=csv
    replace;
    getnames=yes;
run;

data twin_diff;
    set twin;
    d1 = X1_T1 - X1_T2;
    d2 = X2_T1 - X2_T2;
    d3 = X3_T1 - X3_T2;
    d4 = X4_T1 - X4_T2;
run;

proc means data=twin_diff n mean var std;
    var d1 d2 d3 d4;
run;

proc iml;
    use twin_diff;
    read all var {d1 d2 d3 d4} into D;
    close twin_diff;

    n = nrow(D);
    p = ncol(D);

    dbar = mean(D);
    S = cov(D);

    T2 = n * dbar * inv(S) * dbar`;
    F = ((n - p) / (p * (n - 1))) * T2;

    df1 = p;
    df2 = n - p;
    p_value = 1 - probf(F, df1, df2);

    alpha = 0.05;
    Fcrit = finv(1 - alpha, df1, df2);
    T2crit = (p * (n - 1) / (n - p)) * Fcrit;

    print n p;
    print dbar;
    print S;
    print T2 F df1 df2 p_value Fcrit T2crit;
quit;

