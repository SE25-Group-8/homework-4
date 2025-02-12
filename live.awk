BEGIN { FS = "," }

NR > 1 && $2 == 1 {  
    survivors[$3]++  
}

END {
    print "Frequency of survivors-"
    for (class in survivors) {
        print "Class" class ": " survivors[class]
    }
}
