./build.sh

echo
echo no args
./run.sh
res=$?
if [ $? -eq 0 ]; then
echo Test passed
else
echo Test Failed. Expected 0 Actual $res
fi

echo
echo 1 arg
./run.sh for
res=$?
if [ $? -eq 1 ]; then
echo Test passed
else
echo Test Failed. Expected 1 Actual $res
fi

echo
echo 2 args
./run.sh for bar
res=$?
if [ $? -eq 1 ]; then
echo Test passed
else
echo Test Failed. Expected 2 Actual $res
fi

echo
echo many args
./run.sh for bar bat "1 2 3 "
res=$?
if [ $? -eq 100 ]; then
echo Test passed
else
echo Test Failed. Expected 100 Actual $res
fi