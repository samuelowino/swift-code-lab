# Swift Code Lab

![Swift Logo](Swift_logo_white.svg)

## Playing with some swift concepts

> XCode does not support running console programs with alternative file names from the usual main.swift

> Therefore to run this code you will need to use the terminal

```
$ cd swift-basics/swift-basics
$ swift <file-name>.swift

//e.g
swift main.swift 
// this will run the main.swift file
```

## Swift Basics
Swift is a language for **iOS, macOS, watchOS and tvOS** development. Swift shares certain similarities with **C** and **Objective-C**

Swift provides it's own versions of the C value types such as **Int for integers, double and float for floating type values, Bool for booleans and String for textual data**. Swift also provides three primary **collection types**, **Array**, **Set** and **Dictionary**.

Constants are used in Swift to incrase code safety and declare intent when working with values that should not change.

Swift introduces advanced values that are not found in C or Objective-C such as **tuples**. *Tuples are used to pass around groupings of values.* You can use tuples to return multiple values from a function as a single **compund value*.

Swift also introduces the use of Optional types which handle absence of values.

Swift is type safe, which means you can catch errors early in your code.

### Constants and Variables
Constants and variables associate a name with a value such *welcomeMsg = "Hello Joseph" or numberOfUsers = 1000*
The value of a constant cannot be changed once it is set while a variable can be changed.

Constants and variables must be delcared before they can be used. 
Constants are declared with the **let** keyword while variables are declared with the **var** keyword

```swift
let firstManInSpace: String = "Yuri Gagarin from Russia 1961"
var nextMarsMission: String = "Unlikely"
```

### Type Annotations
Provide *type annotation* to specify what type the variable or constant can store. Type annotation is specified by placing a color **:** after the variable or constant name followed by the type.

```swift
let moonLandingYear: Int = 1969
var totalApolloMissions: Int = 14
```

### Printing Constants and Variables
You can print a var or let with the print function:
```swift
print(_:seperator:terminator)
```
The print() is a global function that prints or more values to an appropriate output.

Swift uses **String interpolation** to include the name of a constant or a variable as a placeholder in a longer string, this prompts Swift to replace it with the appropriate value.

```swift
let currentDay: String = "Sunday"
print("Today is \(currentDay)")
```

You can extend String delimiters to create strings containing characters that would otherwise be consider string interpolation.

```swift
let planet: String = "Earth"
print(#"Planet \(planet) supports life"#) //Planet \(planet supports life)
print("Planet \(planet) supports life") //Planet Earth supports life
print(#"Planet \#(planet) supports life"#) //Planet Earth supports life
```

### Comments
Use comments to include non-executable text in your code.

**Single line comments**
```swift
//This is a single line comment
```

**Multi-line comments**
```swift
/**
 * This is a
 * multi-line comment
 **/
```

### Semicolons
Swift does not require you to use semicolor **;** however you must add a semicolon to have multiple statements in one line of code

```swift
let moode: String = "🥵"; print(\(moode))
```

### Integers
Integers are whole numbers with no fractional components, 32 or -32.

### Floating Point Numbers
Floating points numbers are numbers with fractional component, such as **3.1423212** or **-2.134243**
Floating point number can represent a much larger range of number than Int can and can also store much larger numbers.
Swift provides two signed floating point number types: **Double** and **Float**.

* **Double** represents a *64 bit* floating point number
* **Float** represents a *32 bit* floating point number

Double has a precision of about 15 decimal points while Float has about 6 decimal points.

```swift
let moonOscillationRadiusFloat: Float = 0.123456789101112131415161718192021222324252627282930123456789101112131415161718192021222324252627282930

print("Moon Oscillation Radius in Float \(moonOscillationRadiusFloat)") //this is striped down to 0.12345679 since Float is limited to 32-bit and about 6 decimal points precision

let moonOscillationRadiusDouble: Double = 0.123456789101112131415161718192021222324252627282930123456789101112131415161718192021222324252627282930

print("Moon Oscillation Radius in Double \(moonOscillationRadiusDouble)") //this is represented as 0.12345678910111213 which is longer than the matching float value
```



## Swift Reference Types(Classes) Vs Value Types(Structures and Enumerations)

> Classes are references types while atructures and enumerations are value types.A value type is a type whose value is copied when it's assigned to a variable or constant. Classes are reference types. Unlike value types, reference types are not copied when they are assigned to a variable or constant, or when they are passed to a function. Rather than a copy a referebce to the same existing instance is used.ref

### 1. Value Types

![Value Types](value-types-enums-structs.png)

### 2. Reference Types

![Reference Types](refrence-types-classes.png)
