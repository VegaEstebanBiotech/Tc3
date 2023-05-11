echo "Ejercicio 1.10.3"

echo "P1"
wc -l Saavedra2013/n10.txt 
head -n 1 Saavedra2013/n10.txt | tr -d ' ' | wc -c

echo "P2"
FILES=Saavedra2013/*.txt
for f in $FILES
do
    myrow=`cat $f | wc -l`
    echo $f $myrow
done

echo "P3"
bash Ejercicio3.sh | sort -n -r -k 2 | head -n 1
bash Ejercicio3.sh | sort -n -r -k 3 | head -n 1


