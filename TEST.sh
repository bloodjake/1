./build.sh

countall=0
countsuc=0

function test {
    MSG=$1; shift
    expected=$1; shift


    echo
    echo $MSG
    ./run.sh "$@"
    res=$?
    let countall++
    if [ $res -eq $expected ]; then
    echo Test passed
    let "countsuc = $countsuc +1"
    else
    echo Test Failed. Expected $expected Actual $res
    fi
}
test "No args" 0
test "1 arg" 1 foo
test "2 args" 2 foo bar
test "many args" 100 foo bar baz "1 2 3"



echo ***
if [ $countall -eq $countsuc ]; then
    echo all $countall test passed
    exit 0
else
echo $countsuc success tests out of $countall
exit 1
fi