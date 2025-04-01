<h1>Dart cheatsheet</h1>
<h2>Data types</h2>
<p>In dart we have the following data types:</p>
<h3>int</h3>
<p>Used for holding negative and positive <b>WHOLE</b> numbers. Cannot be used for fractions.

Syntax:
```dart
int a = 2;
int b = -4;
```
<h3>double</h3>
<p>Used for holding negative and positive <b>fraction</b> numbers.

Syntax:
```dart
double c = 2.4;
double d = -5.745;
double e = 4; // can store whole numbers as well
```

<h3>boolean</h3>

Can only hold either `true` or `false`. Unlike in Python, in Dart you <b>CANNOT</b> store `0` or `1` into a boolean.

Syntax:
```dart
bool t = true;
bool f = false;

bool thisWontWork = 1; // A value of type 'int' can't be assigned to a variable of type 'bool'
```

<h3>String</h3>

String is used to store a chain of characters. Unlike the rest 3, it has to start with an uppercase `S`. The text to be stored goes within `""` or `''`. 
```dart
String text = "Hello, world";
String text2 = 'You can use single quotes too!';
```

<h2>Language convention & requirements </h2>

<h3>Main function (program entry point)</h3>

Unlike in Python, in Dart you <b>MUST</b> have a main function. That is the entry point to your program. When you run your code, the compiler will look for this main function, and will call it.
The return type of this function must be void. This means, that the main function doesn't return any value after execution.

```dart
void main(){
    print("Hello world");
}
```

Without a main function, your program will fail to run.
<img src="no_main.png" width="450"/>

<h3>Semicolon</h3>
In Dart, each statement <b>MUST</b> end with a semicolon <code>;</code>. This is <b>NOT</b> optional, and if you forget it, it will result in an error (your program will fail to run).
Your editor (VSCode, IntelliJ) will help you with this with highlighting.

```dart
void main(){
    print("Hello world without semicolons") // Expected to find ';'.
}
```
<img src="semicolon_error.png" width="450"/>

<h3>Naming convention</h3>
Each programming language has an agreed naming convention. A naming convention is essentially a guideline how to name variables, what to uppercase, whether to use <code>_</code> or not. <br/>
In Python, we use <code>snake_case</code>. However, in Dart, we use <code>camelCase</code>.<br/>
The rules of <code>camelCase</code> is to start with a small letter, then if the variable name contains multiple words, each word must start with a capital letter.<br/>
See examples below.

```dart
int single = 0;
int multipleWordVariable = 4;
String youNeedToStartEachWordWithACapitalLetter = "";
```

<h2>Functions</h2>
Functions work similarly as in Python, but uses a different syntax.<br/>
Instead of using colon <code>:</code>, in Dart we define a function body with curly braces <code>{}</code> <br/>

General function syntax:
<code><i>return_type</i> <i>function_name</i>(<i>parameters?</i>){}</code>

A function either returns something, or it doesn't return anything. Look at the examples below:
<b>Note:</b> A function MUST return the defined return type, otherwise your program will fail to run. So if you define your function as <code>int</code>, but you return a <code>String</code>, it will throw an error.
Also, trying to return a value from a <code>void</code> function will also result in an error.

```dart
void main(){
    int resultOfSum = add(2, 4); // returned values can be stored in a variable
    print(resultOfSum); // prints 6

    greet("John"); // prints "Hello John"
}

int add(int a, int b){ // by starting with int, we define that this function should return an integer
    return a + b; // we return a value with the 'return' keyword. 
}

void greet(String name){ // the 'void' keyword indicates that this function DOES NOT RETURN anything
    print("Hello ${name}");
}
```

Unlike in Python, the order of functions doesn't matter. If you are calling a function that is above or below the code where you are calling it from, will not matter. <br/>
See example below.

<b>Example 1:</b>

```dart
int add(int a, int b){
    return a + b;
}

void main(){
    print(add(2, 4)); // prints 6
}
```

<b>Example 2:</b>

```dart
void main(){
    print(add(2, 4)); // prints 6
    // this also works even though the 'add' function is below the caller
}

int add(int a, int b){
    return a + b;
}
```

<h2>If statements</h2>

<code>if</code> statements are used to check whether a condition is true or false. An if branch will only run, if the given condition evaluates to true.

Syntax:

```dart
int a = 4;
int b = 5;

if(a < b){
    print("a is smaller than b"); // this gets printed, as a(4) is smaller than b(5)
}

```

The condition (here <code>a&lt;b</code>) goes after the <code>if</code> keyword, and within brackets. After that you need to put <code>{}</code>, just like for functions.
The <code>{}</code> defines the body of that <code>if</code> branch.

<h3>else if and else</h3>
You can have multiple conditions within the same if statement.

```dart
int age = 56;

if(age < 18){
    // do something if age is less than 18
}else if(age >= 18 && age < 25){
    // do something if age is between 18(inclusive) and 25(exclusive)
}else{
    // do something in ANY other cases
}


```