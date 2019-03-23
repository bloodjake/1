./build.sh

countall=0
countsuc=0

echo
echo no args
./run.sh
res=$?
let countall++
if [ $res -eq 0 ]; then
echo Test passed
let "countsuc = $countsuc +1"
else
echo Test Failed. Expected 0 Actual $res
fi

echo
echo 1 arg
./run.sh for
res=$?
let countall++
if [ $res -eq 1 ]; then
echo Test passed
let "countsuc = $countsuc +1"
else
echo Test Failed. Expected 1 Actual $res
fi

echo
echo 2 args
./run.sh for bar
res=$?
let countall++
if [ $res -eq 1 ]; then
echo Test passed
let "countsuc = $countsuc +1"
else
echo Test Failed. Expected 2 Actual $res
fi

echo
echo many args
./run.sh for bar bat "1 2 3 "
res=$?
let countall++
if [ $res -eq 100 ]; then
echo Test passed
let "countsuc = $countsuc +1"
else
echo Test Failed. Expected 100 Actual $res
fi


echo ***
if [$countall -eq $countsuc ]; then
    echo all $countall test passed
    exit 0
else
echo $countsuc success tests out of $countall
exit 1
fi