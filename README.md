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