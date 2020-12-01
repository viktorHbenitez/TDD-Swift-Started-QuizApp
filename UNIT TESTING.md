# UNIT TESTING 



Keywords: **Getting Started With OHHTTPStubs**, Sourcery Unit Testing

**CONCEPT MOCKS AND STUBS** 

https://medium.com/capital-one-tech/using-stub-vs-mock-in-ios-unit-testing-634ec4cc6a10

**CLOUDY APP**

Mastering MVVM With Swift : Cloudy App

https://cocoacasts.com/using-stubs-for-better-unit-tests



# Getting Started with TDD in Swift

**Description:** 

**Test Driven Development** is a way of writing software.

**Simple cycle:** Write a test, write a little code as possible to make the test pass, and then refactor the code.

### **Example project:**

Write a test: Start build the logic of our app first

**What are you going to build?**

We'll be building a FizzBuzz game for iOS

If you haven’t played FizzBuzz before, the rules are pretty simple:

- The aim of the game is to count up as high as you can, starting at 0.
- If the next number is a multiple of 3, tap the “Fizz” button.
- If the next number is a multiple of 5, tap the “Buzz” button.
- If the next number is a multiple of 3 AND 5, tap the “FizzBuzz” button.

We’ll also be adding fun features like a timer, high-scores and changing the numbers.



1 steps: our app needs to be able to check if a number is a divisible by 3, 5

An important part of  TDD is learning to love failing tests and warnings 

> The aim is to let these warning guide us to what code we need to write next

> Only write the code needed t get your test passing - nothing more

If you want to add new funcionalities you need to write more tests



**References:**

[Introduction to TDD](https://medium.com/@ynzc/getting-started-with-tdd-in-swift-2fab3e07204b)

The completed codebase is available on Github:

https://github.com/yvettecook/Getting-Started-With-TDD-Swift

------



# 3 tips on how to work with uni testing in Swift 

## Desing your code for testability 

1. **Unified Input/Output** 

2. State is kept local 

3. Injected Dependencies

## Use access control to create clear API  bounderies

Access  control restricts access to parts of your code from code in other source files and modules. this feature enables you to hide the implementation details of your code, adn to specify a preferred interface through wich that code can be accessed and used.

#### - private  fileprivate  internal  public  open 

### **Frameworks**

**Swiftplate**: Easily generate cross platform Swift framework projects from the command line

### Avoid mocks to avoid getting tied down into implementation details

Mocks are "fake" objects that are used in test to be able to assert that certain things happen as expected

OCMockito creates mockes in objective - C

## However, sometimes you do need mocks, so let's make it easy to use them

To summarize 

Design your code for testability 

Use access contol to create clear API boundaries

Avoid mocks to avoid getting tied down into implemtation details

When to use mocks for testing our implementations

**Test our implementation example in iphone 7 and then other person test our implementation in iphone 7 plus**

The problem the size it is not going to be the same of our test 200 x 200. In this case we can use moking

