# Simple Expression Language

Your assignment is to write a program that converts a language of simple
instructions to fully parenthesized expressions. In this language an expression
can be one of two things:

* A number
* An operator and two arguments.

Other constraints:

* There are four valid operators: ADD, SUB, MUL, and DIV.
* Numbers must be non-negative decimal integers, and thus will consist of only
  digits.
* An operator's arguments are expressions

Your solution should read a program from standard input and write a fully
parenthesized expression to standard output.

The program files are line-oriented. Each line contains a single operator or
number. The operator appears first followed on subsequent lines by its two
arguments.

Here is an example input file:

```
MUL
ADD
15
30
SUB
28
3
```

And here is the output your program should generate:

```
((15 + 30) * (28 - 3))
```

If the input is not a single valid expression, then your program should print
the string "Invalid expression" followed by a newline and exit.

## Testing

There are a number of tests in the `tests` directory showing other examples of
input and how your program should convert it into output. You might want to
look at these test cases before starting to get an idea of how your program
should behave. We also have provided a script `runTests.sh` that runs these
tests for you. To make that work, you should create a shell script `run.sh`
that runs your program. This also allows you to run individual tests with a
single command like the following:

```
./run.sh < tests/test03.input
```

## Submitting

Do not modify `runTests.sh` or any of the files in the `tests` directory.

You can push your code multiple times before the time limit. It's your choice
whether you want to do all the work and push once at the end or push multiple
times while you are working so we see how your solution evolved.

If you are using non-standard tools to compile your solution, please commit a
script or instructions for how to build your code so we can run it ourselves.
