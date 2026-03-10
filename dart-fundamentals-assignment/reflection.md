Task 1 – Conceptual Questions
Q1

List<int> store only integer numbers. List<dynamic> can store different types like string or bool. Using List<int> is better because the program know the data type and it help avoid mistakes.

Q2

We start with the first number in the list because numbers can be negative. If we start with 0, maybe the result become wrong when all numbers are smaller than 0.

Q3

This show code reuse idea. Instead of writing the sum logic again, we just call calculateSum(). This make the code shorter and easier to maintain.

Q4

A for-in loop goes through each value in the list directly. A normal for loop uses an index number. We use for-in when we only need the values.

Q5

If the list is empty the program will crash because there is no first element. We can fix this by checking if the list is empty before running the loop.



Task 2 – Conceptual Questions
Q6

Synchronous function run step by step and finish first. Asynchronous function can wait for something and continue later. In this program divide() is simple so it is sync, but computeAsync() use delay so it is async.

Q7

await makes the program wait until the Future is finished. If we forget await, the program may print something like Future instance instead of the real result.

Q8

try-catch is used to handle errors. If divide by zero happens, the program catches the error and prints a message instead of crashing.

Q9

Throwing ArgumentError shows clearly that the input is wrong. Returning 0 is not good because the user may think the answer is correct.

Q10

The async keyword on main() allows us to use await. Without it we cannot easily wait for the async functions.