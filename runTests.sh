#!/usr/bin/env bash

function testOne {
  TESTNAME="tests/test$1"
  TEST_IN="$TESTNAME.input"
  TEST_OUT="$TESTNAME.output"
  echo Running test case $TEST_IN
  ./run.sh < $TEST_IN > out
  diff out $TEST_OUT > /dev/null
  if [ "$?" -ne 0 ]; then
    echo Failed test: $TEST_IN
    echo Expected:
    cat $TEST_OUT
    echo But got:
    cat out
  fi
  rm out
}

testOne 01
testOne 02
testOne 03
testOne 04
testOne 05
testOne 06
testOne 07
testOne 08
testOne 09
testOne 10
testOne 11
