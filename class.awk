BEGIN {FS = "," }

NR > 1 {  
    class[$3]++  # Pclass is the third column
}

END {
    for (c in class) {
        print "Class " c ": " class[c] " passengers"
    }
}