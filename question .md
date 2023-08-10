1.What is ststic in java
```
 In Java, the keyword "static" is used to define class-level members (variables and methods) that are shared among all instances of the class and are associated with the class itself rather than with individual objects created from that class.
 -Static Variables (Class Variables)
 -Static Methods
 -Static Blocks
 -Static Nested Classes
 -Static Import
```

2.Can we call method without call?

```
In Java, methods are called by their names, followed by parentheses that contain any necessary arguments. You can't directly call a method without using its name and parentheses.

For example, to call a method named myMethod
```

3.What is collection and where do you have used collection in java?give an eg?

```
In Java, a collection is a framework that provides an architecture to store and manipulate a group of objects. Collections provide various interfaces, classes, and algorithms that allow you to work with groups of objects more efficiently and effectively. Collections are used to store, retrieve, manipulate, and manage data in a structured way.
eg:
   import java.util.ArrayList;
import java.util.List;

public class CollectionExample {
    public static void main(String[] args) {
        // Create a list to store strings
        List<String> stringList = new ArrayList<>();

        // Adding elements to the list
        stringList.add("Apple");
        stringList.add("Banana");
        stringList.add("Orange");

        // Accessing elements by index
        System.out.println("Element at index 1: " + stringList.get(1));

        // Iterating through the list
        System.out.println("List elements:");
        for (String fruit : stringList) {
            System.out.println(fruit);
        }

        // Checking if an element exists
        boolean containsBanana = stringList.contains("Banana");
        System.out.println("Contains Banana? " + containsBanana);

        // Removing an element
        stringList.remove("Orange");

        // Size of the list
        int size = stringList.size();
        System.out.println("Size of the list: " + size);
    }
}


```

4.What is the Agile ceremonies ?
```
The agile ceremonies list includes:

Sprint Planning
Daily Stand-Up
Sprint Review
Sprint Retrospectiv
```

5.What is difference b/w Interface and abstract class?
```
Interface:

Think of an interface like a set of rules that a class must follow.
It only contains method signatures (names and parameters) without any actual code.
A class can implement multiple interfaces.
Used when you want to make sure that classes provide specific behavior, like a contract.

Abstract Class:
Think of an abstract class as a base class that provides a blueprint for other classes.
It can have both method signatures and actual code (methods with implementation).
A class can extend only one abstract class.
Used when you want to share code and structure among related classes.
```

6.WAP 
int[] arr={1,2,3,0,0,12};
O/P:- {1,2,3,12,0,0}

```
def rearrange_array(arr):
    non_zero_count = 0

    # Move non-zero elements to the front of the array
    for num in arr:
        if num != 0:
            arr[non_zero_count] = num
            non_zero_count += 1

    # Fill remaining positions with zeros
    while non_zero_count < len(arr):
        arr[non_zero_count] = 0
        non_zero_count += 1

# Input array
arr = [1, 2, 3, 0, 0, 12]

# Rearrange the array
rearrange_array(arr)

# Print the rearranged array
print(arr)

```
7.What is encapsulation in java?
```
It refers to the bundling of data (attributes) and methods (functions) that operate on the data into a single unit known as a class
Data Hiding
Access Control
Code Organization
Flexibility
```

8.What is abstraction?

```
abstraction allows you to create a generalized view of an object, focusing on what it can do rather than how it does it. It enables you to work with higher-level concepts and ignore the specific details that are not relevant to the current context
```

9.What is Singleton & Serialization in java ?

```
Singleton:

Think of a Singleton as a class that ensures there's only one instance of itself. It's like having a special manager for something important in your program. This manager keeps track of the one instance that should exist and makes sure that if you ask for an instance, you always get the same one.

Imagine a magical key that opens a special door. The key can only be used to open that one door, and no matter how many times you use the key, it always opens the same door. That's how a Singleton works - it provides access to one specific instance of a class.

Serialization:

Serialization is like turning an object into a format that you can save or send somewhere, and then turning it back into an object when you need it again.

Think of it as packing your favorite toy in a box so you can send it to your friend who lives far away. You put the toy in the box, and when your friend receives it, they open the box and get the toy back. Serialization is like putting your object in a box (in this case, a file), and deserialization is like opening the box to get your object back. It's a way to save and share objects even when your program isn't running.
```

10. In any Circumstances that posible for super class to inherit properties of subclass
```
No, it is not possible for a superclass to inherit properties from a subclass in object-oriented programming. Inheritance works from superclass to subclass, where subclasses inherit properties and behaviors from superclasses, not the other way around.
```

11.how do you select test case u would select?
```
Priortize your test cases and roi
P(0),P(1),P(2),P(3)
some functionality not required to automate
```

12.Method that is final cannot be overidden that method is present in which class parent class or child class?

```
Parent Class
```

13.What are test cases to be automated?

```
repetative test case process
```

14. What is API?
```
Application program Interface
Postman-Api testing tool[get,post,put,delete]
```
15.Advantages over manual testing to automation testing?
```
Efficiency
Resources
time saver
```

16.How do u automate login functionality of login form of web page?
```
I would first look at the project requirements to confirm the scope and expected behaviors.
I would then identify the possible test scenarios such as a valid user name & password as input, an invalid user name, and a valid password, an invalid user name and invalid password, and a valid user name and invalid password.
I would then prepare a data file with the list of inputs,
I would then launch Selenium or the automation tool that will be used.
I would then map out the web elements for the user name, password, and login button on the website
Then for each test scenario, I would read the data from the data file, enter it into the fields that I mapped out, and then click the login button.
I would then validate that the expected behavior for each scenario happens after the login button was pressed.
```
17.What automation tools are you familiar with?

```
I am proficient in Selenium, JMeter, and RFT.
```

18.What is a Selenium web driver?

```
A Selenium Webdriver is a framework that allows your automation code to interact with a web browser. Examples of Web drivers inlcude ChromeDriver, EdgeDriver, and FirefoxDriver
```

19.What is an exception in code and how do you handle it if you know an exception might occur?

```
An exception is an unplanned event that occurs while a program is running that disrupts the flow of its instructions. If I know that an exception may occur I would create a try/catch block in my code where I would try my action, but if an error is thrown I would be able to handle it and catch it in my catch block.
```

20.Code: In any programming language that you like, print this string in reverse “I like to code and test”

```
test = "I Am From Bengaluru"
reverse_test=test[::-1]
print(reverse_test)
```
