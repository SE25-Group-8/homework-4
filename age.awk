BEGIN {
    FS = ",";
    sum = 0;
    count = 0;
}

NR > 1 && $7 != null{  
    sum += $7;
    count++;
}

END {
    print "Average Age of Survivors: " sum / count;
}
