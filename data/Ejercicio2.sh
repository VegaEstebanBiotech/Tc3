echo "Ejercicio 1.10.2"

head -n 3 Gesquiere2011_data.csv

echo "P1"
cut -f 1 Gesquiere2011_data.csv | grep -c -w 3
cut -f 1 Gesquiere2011_data.csv | grep -c -w 27

echo "P2"
bash Ejercicio2.sh Gesquiere2011_data.csv 27

echo "P3"
myIDS=`tail -n +2 Gesquiere2011_data.csv | cut -f 1 | sort -n | uniq`
for id in $myIDS
do
    mycounts=`bash Ejercicio2.sh Gesquiere2011_data.csv $id`
    echo "ID:" $id "counts:" $mycounts
done

