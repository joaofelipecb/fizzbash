# Bash as a powerful language

Linus Torvald developed git in 5 days using C and Bash. This was an increadible achievement. And this made me think why he used bash.

Although I don't know the real reason of his choice, I realized that Bash is a powerfull language. Different from languages such as Python, Java or C#, Bash is a script language. A script language can interact direct with the operational system.

One of the great advantages of a language that can work directly with the operational system is that you can access files and run programs, which normally is not the case of programming languages. Even that most of programming languages enable you to achieve this, what you're really doing is using Bash as interface. With a language such as Bash, you use a file to ingest data in order to configure some behavior or maybe generate a file to be compiled and create a software on the fly. You can even overwrite the behavior of the commads during the runtime.

I believe that there is some interisting results we can achieve with these features. One well known fact about IT history, for instance, is that the C compiler was written in Assembly, because it wouldn't not be possible to write it in C as any C compiler exists. After that, the C compiler was written again now in C language, and they used the first compiler to compile it. Then, they used the second compiler to compile again the C source code. Finally, they result with a third compiler that was much more efficient than the first compiler.

Bash resembles BPMN because it enable to describe a process. Bash, with AWK, can be used to resembles DMN as well. Bash, with SED, can also be very useful.

The goal of this repository is to show how to take advantage of this to solve the Fizz Buzz challenge.

# General Overview

* The main script use two other modules. One for calculate the modulus operation. And another to apply the rule of replacing the number with the words Fizz, Buzz or FizzBuzz.
* The modulus operation is developed in C. The interisting thing is that we use a Bash script to try different possibilities of source code on the fly using SED, compile this code, and test it against a data driven test. When the Bash script find a suitable source code that matches the test, the modulus operation is ready to be used.
* The FizzBuzz rules are applyied through a decision table. This table is written in a file and we use AWK to match the decision.

# How to test

First, you need to generate the modulus program. You can enter the modulus directory and run the script generate.sh.

Second, you can run the fizzbash.sh script on the main folder, passing the number of examples of Fizz Buzz you wishe to generate.
