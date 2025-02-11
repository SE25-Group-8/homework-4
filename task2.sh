echo "Lines containing banana-"
grep "banana" sample.txt

echo "Lines not containing banana-"
grep -v "banana" sample.txt

echo "Unique lines-"
sort sample.txt | uniq

echo "Occurrence of each word-"
sort sample.txt | uniq --count

echo "Occurrence of banana-"
grep "banana" sample.txt | sort | uniq -c