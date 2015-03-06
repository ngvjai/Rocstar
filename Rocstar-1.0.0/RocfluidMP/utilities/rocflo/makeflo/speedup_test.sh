#!/bin/sh

log="speedup_test.log"

rm $log
for pe in 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 24 32 48 64 96 128
do
	echo "Testing on $pe processors"
	./makeflo test.grd $pe test.bc test$pe.flo >> $log
done

echo "Read $log for details"
