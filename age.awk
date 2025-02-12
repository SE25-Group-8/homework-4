gawk -F, '
BEGIN {
    sum = 0;
    count = 0;
}

NR > 1 {  
    sum += $6;
    count++;
}

END {
    print sum / count;
}
' titanic.csv 