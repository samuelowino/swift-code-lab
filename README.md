# Swift Code Lab

![Swift Logo](Swift_logo_white.svg)

## Playing with some swift concepts

> XCode does not support running console programs with alternative file names from the usual main.swift

> Therefore to run this code you will need to use the terminal

```shell
$ cd swift-basics/swift-basics
$ swift <file-name>.swift

//e.g
swift main.swift 
// this will run the main.swift file
```

# Swift Basics
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

Numeric literals can contain extra formatting to make them easier to read.

```swift
let cashBalance: Double = 345_342_001
```

### Type Aliases
Type alias provide an alternative name for an existing type
You define type alias with the **typealias** keyword

```swift
typealias StringText = String
var astronaut: StringText = "Buzz Aldrin"
```

### Tuples
Tuples grouing multiple values into a single compound value. The values within a tuple can be of different types.

```swift
let radioTelescopeWavelength = ("Radio 🔭", "mm", 1)
let infraredTelescopeWavelenth = ("infrared 🔭", "nm", 700)
```

You can decompose a tuples contents into seperate constants and variables

```swift
let (name, units, value) = radioTelescopeWavelength

print("Name: \(name) Wavelength: \(value) in \(units)")
```

If you only need part of the tuple, you can ignore some parts of the tuple with an underscore **(_)**

```swift
let (name, _, value) = radioTelescopeWavelength
print("Name: \(name) Wavelength: \(value) in whatever units")
```

Alternatively access the tuple values using their indices starting with 0

```swift
let infraredTelescopeWavelenth = ("infrared 🔭", "nm", 700)
print("Name: \(infraredTelescopeWavelenth.0) Wavelength: \(infraredTelescopeWavelenth.2) in \(infraredTelescopeWavelenth.1)")
```
You can name tuple elements at declaration

```swift
let radioTelescope = (name: "Radio Telescope", units: "mm", value: 1)
print("\(radioTelescope.name) \(radioTelescope.value) \(radioTelescope.units)")
```

### Optionals
Optionals are used in situations where a value might be absent. 
Optionals represent two states, either absence of a value of presence of a value.

```swift
var apolloMission: Int? = nil
``` 

### Optional Binding
You use optional binding to determine whether an optional contains a value and if so to make that value available as a temporary variable or value.

```swift
var apolloMission: Int? = nil
if let mission = apolloMission {
    print("Found a matching apollo mission \(mission)")
} else {
    print("We could not find an apollo mission")
}
```

### Error Handling

Use error handling to respond to error conditions your app might experience during execution.
Error handling allows you to determine the underlying cause of the failure and to propagate the error to another part of the program if need be.

When a function encounters an error condition it **throws** an error.

```swift
func doSomeDangerousThings() throws {
    
}
```

When you call a function that can throw an error you prepend it with the **try** keyword.

```swift
do {
    try doSomeDangerousThings()
} catch {
    print("Whoops! doing dangerous things leads to some failures")
}
```

- - -

# Basic Operators

Operators are special symbols or phrases that are use to check, changed or combine values.

```swift
let sum = 2 + 2
```

### Overflow Operators

If you try to insert a number into an integer constant or variable that can't hold that value, by default swift reports it as an error instead of allowing an invalid value to be created.
This behaviour increases safety while working with values/numbers that are either too large or too small.

For example the swift type UInt16 allowes a signed integer between -32768 and 32767.
Trying to set a number outside this range results in an error:

```swift
var maximumUInt16 = UInt16.max

//maximumUInt16 now hold 32767 which is the maximum number a UInt16 can hold.

maximumUInt16 += 1 // causes an error

```

Arithmetic operators (+,-,*,/,%) detect and dissallow value **overflow**, to avoid unexpected results while working with numbers that become larger or smaller than the allowed value range of the type that stores them.

You can opt into value overflow by using Swift's overflow operators.

### Operator Terminology

* **Unary Operators**
Unary operators operate on one target such as -a.

```swift
let a: Int = 1
-a
!a
```

* **Binary Operators**
Binary operators operate on two targets such as 2 + 2

* **Ternary Operators**
Ternalry operators operate on three targets. Like **C** Swift has only one ternary operator, the **ternary conditional operator**

```swift
let a: Int = 1
let b: Int = 2

let max: Int = a > b ? a : b
```

### Assignment Operator
The assignment operator a = b initializes a with the value of b

```swift
let yearOfBirth: Int = 1900
let currentYear: Int = 2025
let age: Int = yearOfBirth - currentYear

print("Age is \(age)")
```

### Remainder Operator
The operator **(a % b)** works out how many multiples of b will fit inside a and returns the value left out.

> To Calculate 9 % 4, you workout how many 4s fit in 9
> You can fit two 4s inside nine and the remainder is 1

![Swift Logo](remainder.png)

```swift
let remainder = 15 % 2
```

> However, % is unavailable for floating point numbers

### Compound Assignment Operator
Swift provides compound assignment operators that combine assignment **(=)** with an operatrion such as **(-)**. e.g **+=**,**-=**,***=**.

```swift
let j = 5
let tenMultiplesOfJ *= 10
let fiveStepsForward += 5
let less3 -= 3
```

### Comparison Operators
 
 Swift supports the following comparisons:

| Operation     | Comparison Operator   |
| --------------|-----------------------|
| Equal to      | ==  ,  a == b         | 
| Not Equal to  | !=  ,  a!=b           |
| Greater than  |  >  ,  a>b            |
| Less than     |  <  ,  a<b            |
| Greater than or equal to | >= , a >= b|
| Less than or equal to | <= , a <= b   |
| Identical to  |  === , objA === objB  |
| Not Identical to  |  !== , objA !== objB  |
|               |                       |


### Ternary Conditional Operator
Ternary conditional operator is a special operator with three parts:

**question ? answer1 : answer2**

If question is true, it evaluates answer1 and returns it's value, while if answer is false it evaluates answer2 and returns it's value.

This is shorthand for:

```swift
if question {
    answer1
} else {
    answer2
}
```

```swift
let result = question ? answer1 : answer2
```

### Nil-Coalescing Operator | ??

The **nil coalescing operator** **a ?? b**, unwraps an *optional* a if it contains a value, or *returns a default value* b if a is nil. 

**b** must match the type of the value stored in **a**

The coalescing operator is shorthand for:

```swift
let a: Int? = nil
let b: Int = 0

let value = a != nil ? a! : b
```

```swift
let a: Int? = nil
let b: Int = 0

let value = a ?? b
```

### Range Operators

Types of Range Operators

1. **Closed Range Operator**
2. **Half-Open Range Operator**
3. **One Sided Ranges**

**Closed Range Operator** - Closed range operator **(a...b)** defines a range of value between **a** and **b** and includes the values of a and b. <u>*a must be greater than b**</u>.

```swift
for dayOfWeek in 1...7 {
    print("It's now the \(dayOfWeek)th day of the week")
}
```

**Half Open Range** - Half range operaror **(a..<b)** defines a range that runs from a to b but does not include b. The half range operator contains it's first value **a** but not it's second value **b**.

```swift
for monthIndex in 0..<12 {
    print("Month index is \(monthIndex), actual month is \(monthIndex + 1)")
}
```
**One-Sided Range** - One sided range operator **([...b], [a...], [...<5])** contains ranges that **continue as far as possible in one direction**.

```swift
let countDowns: [Int] = [0,1,2,3,4,5] 

for bombCountDown in countDowns[...5] {
    print("Tick \(bombCountDown) \(bombCountDown == 5 ? "Cut Red...Boom 💣" : "...")")
}

for bombCountDown in countDowns[..<5] {
    print("Tick \(bombCountDown) \(bombCountDown == 4 ? "Cut Green...💣" : "...")")
}

for bombCountDown in countDowns[1...] {
    print("Tick \(bombCountDown) \(bombCountDown == 4 ? "Cut Red...Boom 💣" : "...")")
}
```

### Logical Operators

Logical operators modify and combine Boolean logic values.
Swift Supports;

* Logical AND - **&&**
* Logical OR - **||**
* Logical NOT - **!**

- - -

# Strings and Characters

A string is a series of characters such "Hello World".
String concatenation is accompilished by combining two strings with the + operator. 
String is **mutable** unless explicitly declared as  a **let** constant.

```swift
let language: String = "Shwifty" //immutable
var bestLanguageNow: String = "Shwifty" //mutable
```

### String literals

String literals are *predefined* strings.

```swift
let literally: String = "Literaly now.."
```

### Multiline String literals

A multiline String literal comprises of a series of characters **sorrounded the three double quotation marks**.

```swift
let messageFromCEO: String = 
    """
        Ladies and men, I bring you
        a seires of ridiculous 
        cooperate bs

        from our main HQ

        Yours cheerful,
        The CEO
    """
```

### Special Characters in String literals

Special characters can inlcude:

* **"\0"** - null character
* \\\ - backslash
* \t - horizontal tab
* \r - carriage return

### Extended String Delimiters

You can pleace extended string delimiters to include special characters within a string without invoking the special characters' effect.

Sorround the string with number sign **#**. 

```swift
let shakeSpear = #"Be not afraid of greatness\nWe know what we are, but know not what we may be"#

//prints : Be not afraid of greatness\nWe know what we are, but know not what we may be
```
### Initializing an empty string

To create an empty string either initialize a string with empty string literal or create a new String instance

```swift
var emptyString: String = ""
var anotherEmptyString: String = String()
```

### String Mutability

String is immutable if it is assigned to a **let** constant or otherwise mutable if assigned to a **var** variable.

```swift
let immutableString: String = "This is permanence"
var mutableString: String = "Nothing is permanent, even this will change"

print("immutableString \(immutableString) :mutableString \(mutableString) ")
```

### Extended Grapheme Clusters

An extended grapheme cluster is a sequance of one or more unicode scalars that when combined produce a single human readable character.

```swift
let eAcute: Character = "\u{e9}"
```

### Counting Characters

Use the String **count** property to retrieve the number of characters in a String

```swift
let alphabet: String = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
let numberOfCharactersInAlphabet: Int = alphabet.count

print("Number of characters in alphabet \(numberOfCharactersInAlphabet)")
```

### Accessing and Modifying a String

Modify a String by using it's **methods and properties** or by using the **subscript syntax**.

Swit Strings can't be indexed by integer value because each character in the String holds different memory size.

Use the **startIndex** to access the first character in the String and **endIndex** to access the last character in the String.

> The **endIndex** is the position after the last character in the String, therefore the **endIndex is not a valid argument to the String's subscript** and will result in a ***Fatal error*: String index is out of bounds**

```swift
let title: String = "The Batman"
let startChar: Character = title[title.startIndex]
//let lastChar: Character = title[title.endIndex] error index out of bounds

print("Start char: \(startChar), End Char: \(lastChar)")
```

> If the String is empty, the start and end index are the same.

```swift
let emptyWords = ""
let start: Character = emptyWords[emptyWords.startIndex]
let end: Character = emptyWords[emptyWords.endIndex]
```

You can access the indices before and after a particular index using the **index(before:)** and **index(after:)** methods of a String.

```swift
let easy: String = "ABC"
var mid: Character = easy.index(before: easy.endIndex)

print("mid ABC is ==> \(easy[mid])")

mid = easy.index(after: easy.startIndex)

print("mid is still ==> \(easy[mid])")
```

To access an index further away from the current index, you can use: **index(currentIndex: offsetBy:)** method.

```swift
let joy: String = "happy😁";
let emoji: Character = joy[joy.index(joy.startIndex, offsetBy:5)]

print("Joy emoji is ==> \(emoji)")
```

## Inserting and removing from a String

* **Insert a single character**

To insert a single character at a specified index of the String use **insert(character, at: index)**

```swift
var why = "why"
why.insert("?", at: why.endIndex) // why ?
```

* **Insert contents of another String**

To insert the contents of another String use the **insert(contentsOf, at)**

```swift
var warn = "You have been warned "
var details = " do not enter, private property"
warn.insert(contentsOf: details, at: warn.index(before: warn.endIndex))
// You have been warned do not enter, private property
```

* **Remove a single character from String**

Use the **remove(at: Index)** to remove a single character from String

```swift
var hello = "Hello!"
hello.remove(at: hello.index(before: hello.endIndex))
```

* **Remove a range of characters(Substring) from a String**

To remove a substring from a specified range, use the **removeSubrange(range)**

```swift
var helloWorld = "hello world"

let range = hello.index(helloWorld.endIndex, offsetBy: -5)..<helloWorld.endIndex

helloWorld.removeSubrange(range)

// hello
```

# String and Characters Equality

You can check equality of strings and characters using the operator **==** and not equal operatior **!=**

```swift
var englishGreeting = "hello"
var spanishGreeting = "hola"

if englishGreeting == spanishGreeting {
    print("English is same as spanish")
}
```
**hasPrefix** and **hasSuffix**

Check whether a String has a particular string prefix or suffix.

```swift
var greeting = "Hi mary"

if gretting.hasPrefix("Hi"){
    print(greeting)
}

var ending = "This is the end"

if ending.hasSuffix("end"){
    print(ending)
}
```

- - - 

# Swift Collection Types

Swift provides three collection types:

* **Arrays**
* **Sets**
* **Dictionaries**

![Swift Collection Types](CollectionTypes_intro_2x.png)

> **Arrays** are ordered collection of values

> **Dictionaries** are an unordered collection of key-value pairs

> **Sets** are an unordered collection of unique values. 

Swift's collections are type safe.

## Mutability of Collections

If you assign a collection to a variable, it means the collection can be changed. Elements can be added and removed from the collection.

If you assign a collection to a constant, it means the collection cannot be mutated. Elements cannot be added or removed from the collection.

## Arrays

Arrays store the same type of elements in an unordered list. The same value can appear in an array multiple times at different time.

## Creating an empty array

```swift
let emptyArray: [Int] = [] //creates an empty array

print("empty array contains \(emptyArray.count) elements") 
//empty array contains 0 elements
```

## Creating an array with default values
Swift's Array type also provides an initializer which creates an array of a particular size with all of it's elements initialized to a particular default value.

```swift
var colors = Array(repeating: "red", count: 5)

print("default colors: \(colors)")

//default colors: ["red", "red", "red", "red", "red"]
```

## Adding Two Arrays Together
You can create a new array by adding (+) two ararys with *compatible types*.

```swift
let partAVowels: [Character] = Array(repeating: "e", count: 3)
let partBVowels: [Character] = Array(repeating: "a", count: 4)

let combined: [Character] = partAVowels + partBVowels

print("Part A \(partAVowels):\nPart B \(partBVowels):\nCombined \(combined)")
//Part A ["e", "e", "e"]:
//Part B ["a", "a", "a", "a"]:
//Combined ["e", "e", "e", "a", "a", "a", "a"]
```

## Creating an array with array literals

```swift
var shopping: [String] = ["Apples", "Oranges","Banana"]
```

## Accessing and Modifying an Array

You can access and modify an array using either it's **methods and properties** or by using **subscript syntax**

> Swift arrays are always zero indexed

Find the the number of items in an array using the *read-only* **count** property


```swift
let phones = ["iPhone","Android","Blackberry"]
let phonesCount: Int = phones.count
print("Number of phones ==> \(phonesCount)")
//Number of phones ==> 3
```

Use the **isEmpty** property as a shorthand to check whether the count property is zero

```swift
var isPhoneDrawerEmpty: Bool = false

var phones = ["iPhone","Android","Blackberry"]

isPhoneDrawerEmpty = phones.isEmpty

print("Phone drawer isEmpty ==> \(isPhoneDrawerEmpty)")

print("*Removes all phones from drawer*")
phones = []

isPhoneDrawerEmpty = phones.isEmpty

print("Phone drawer isEmpty ==> \(isPhoneDrawerEmpty)")

//Phone drawer isEmpty ==> false
//*Removes all phones from drawer*
//Phone drawer isEmpty ==> true
```

You can add a new item at the end of the array by calling the array's **append** method.

```swift
var phones = ["iPhone","Android","Blackberry"]

phones.append("Nothing Phone") 

print(\(phones)) // ["iPhone", "Android", "Blackberry", "Nothing Phone"]
```

Alternatively append arrays with the addition assignment (+=)

```swift
var phones = ["iPhone","Android","Blackberry"]
var iPhones = ["iPhone 4","iPhone 7","iPhone 13 Pro"]
var androids = ["Pixel","Nexus","Samsung","Oppo Reno"]

phones += iPhones
phones += androids

print("iPhones ==> \(iPhones)")
print("androids ==> \(androids)")
print("phones ==> \(phones)")

//iPhones ==> ["iPhone 4", "iPhone 7", "iPhone 13 Pro"]
//androids ==> ["Pixel", "Nexus", "Samsung", "Oppo Reno"]
//phones ==> ["iPhone", "Android", "Blackberry", "iPhone 4", "iPhone 7", "iPhone 13 Pro", "Pixel", "Nexus", "Samsung", "Oppo Reno"]

```

Retrieve an element from an array using the subscript syntax

```swift
var phones = ["iPhone","Android","Blackberry"]
let firstPhone = phones[0] //iPhone
let lastPhone = phones[phones.count - 1] //Blackberry

```

You can use subscript to change a particular value at a given index.

```swift
var phones = ["iPhone","Android","Blackberry"]
phones[1] = "Android 12"

print("Updated phones \(phones)")
//Updated phones ["iPhone", "Android 12", "Blackberry"]
```

To insert an element at a specific index use the **insert(_, at:)** method.

```swift
var phones = ["iPhone","Android","Blackberry"]
phones.insert("Nokia Lumia", at: 1)

print("Updated phones \(phones)")
//Updated phones ["iPhone", "Nokia Lumia", "Android", "Blackberry"]
```

You can also remove an element at a specific index in the array using the **remove(at: index)** method

```swift
var phones = ["iPhone","Android","Blackberry"]
phones.remove(at: 0)

print("Updated phones \(phones)")
//Updated phones ["Android", "Blackberry"]

```

## Iterating Over an Array

You can iterate over an array using the **for-in-loop**

```swift
var phones = ["iPhone","Android","Blackberry"]

for phone in phones {
    print("Phone is: \(phone)")
}

//Phone is: iPhone
//Phone is: Android
//Phone is: Blackberry
```
# Sets

A set stores a distinct collection with no ordering. Elements in a set are unique.

## Hash Values for Set Types

A type **must be hashable** in order for it to be stored in a set- that is, the type must provide a way to compute a **hash value** for itself. 

A hash value is an int value that's is the same for all objects. That is if **a == b** that means, the hash value of a is equal to the hash value of b.

## Hashable
A type that can be hashed into a hasher to produce an integer hash value.

You can use any value that conforms to the Hashable protocol in a **set or dictionary key**. Many types in the standard library conform to Hashable: **Strings, Integers, floating-point and bool values**.

Your custom type can be hashable as well. When you define an enumeration without associated values, it becomes hashable. You can also addd hashable conformance to other types by implementing the **hash(into)** method.

## Conforming to the hashable protocol

The Hashable protocol inherits from the **Equatable** protocol so you must conform to that as well.

```swift
struct Baby {
    let name: String
    let ageDays: Int
    let birthHour: Int
    let birthMin: Int
    let mom: Strin
}

extension Baby: Hashable {
    static func == (lhs: Baby, rhs: Baby) -> Bool {
        return lhs.name == rhs.name && lhs.mom == rhs.mom
    }

    func hash(into hasher: inout Hasher){
        combine(name)
        combine(mom)
    }
}

let babyMike = Baby()
babyMike.name = "Mikey"
babyMike.ageDays = 4
babyMike.birthHour = 8
babyMike.birthMin = 23
babyMike.mom = "Joan Waruguru"

let lostBaby = Baby()
babyMike.name = "Mikey"
babyMike.mom = "Joan Waruguru"

//Search for baby
if lostBaby == babyMike {
    print("Found lost baby \(lostBaby), mum is \(lostBaby.mum)")
} else {
    print("Baby is still lost, mum not found")
}

```
## Set Type Syntax
The type of a Set in Swift is written as Set<#Element> where Element is the type that the set is allowed to store.

## Create and initialize an Empty Set

```swift
var letters = Set<Character>
```

## Creating a Set with an Array literal

```swift
let colors: Set<String> = ["Red","Orange","Green", "Blue","White"]

print("colors ==> \(colors)")
//["Red", "Blue", "White", "Orange", "Green"]
```

If you are initialiazing a Set with an array literal that contains only one type, Swift will infer the type.

```swift
let colors: Set = ["Red","Orange","Green", "Blue","White"]
//`Set<String>` becomes just `Set` if [array] has contains elements of the same type.

print("colors ==> \(colors)")
//["Red", "Blue", "White", "Orange", "Green"]
```


## Accessing and MOdifying a Set
You access and modify a Set using it's methods and properties. (No Subscript)

Find the number of items in a Set 

```swift
let apolloMissions: Set = ["SA-1","SA-2","SA-3","SA-4","SA-5","AS-101"]

print("The number of apollo missions is  \(apolloMissions.count)")

//The number of apollo missions is 6
```

Check is the Set's count property is zero with **isEmpty**

```swift
let apolloMissions: Set = ["SA-1","SA-2","SA-3","SA-4","SA-5","AS-101"]

if apolloMissions.isEmpty {
    print("Apollo Missions? Which Apollo Missions ?")
} else {
    print("Oh a apollo missions? Yes apollo missions")
}


//Oh a apollo missions? Yes apollo missions
```

Add a new item into a Set using **insert()**

```swift
var apolloMissions: Set = ["SA-1","SA-2","SA-3","SA-4","SA-5","AS-101"]

print("Current list of missions ==> \(apolloMissions)")

apolloMissions.insert("AS-201")
apolloMissions.insert("AS-203")

print("Added two more missions into the punch card ::AS-201:: ::AS-203::")

print("Updated list of missions ==> \(apolloMissions)")

//Current list of missions ==> ["SA-5", "AS-101", "SA-1", "SA-2", "SA-3", "SA-4"]

//Added two more missions into the punch card ::AS-201:: ::AS-203::

//Updated list of missions ==> ["SA-4", "SA-2", "AS-203", "AS-201", "SA-1", "AS-101", "SA-5", "SA-3"]

```

You can remove elements from the set using either **remove(element)** or **removeAll()**. 

```swift
var apolloMissions: Set = ["SA-1","SA-2","SA-3","SA-4","SA-5","AS-101"]

print("removing missions-AS-101...")

apolloMissions.remove("AS-101")

print("updated missions list is \(apolloMissions) | count is \(apolloMissions.count)")

print("removing all missions from record... please wait")

apolloMissions.removeAll()

print("updated missions list is \(apolloMissions) | count is \(apolloMissions.count)")

//removing missions-AS-101...
//updated missions list is ["SA-4", "SA-3", "SA-5", "SA-1", "SA-2"] | count is 5
//removing all missions from record... please wait
//updated missions list is [] | count is 0
```

Use contains to check whether a Set contains a particular element

```swift
let apolloMissions: Set = ["SA-1","SA-2","SA-3","SA-4","SA-5","AS-101"]
if apolloMissions.contains("SA-3") {
    print("SA-3 is part and parcel of the apollo missions")
} else {
    print("SA-3 is not an apollo missions... anymore")
}

//SA-3 is part and parcel of the apollo missions
```

## Iterating over a Set

```swift 
let apolloMissions: Set = ["SA-1","SA-2","SA-3","SA-4","SA-5","AS-101"]
for mission in apolloMissions {
    print("NASA Mission ==> \(mission)")
}

/**
NASA Mission ==> SA-4
NASA Mission ==> SA-2
NASA Mission ==> SA-5
NASA Mission ==> AS-101
NASA Mission ==> SA-1
NASA Mission ==> SA-3
**/

```

Obtain a **sorted array of elements** from a Set with **sorted()

```swift 
let apolloMissions: Set = ["SA-1","SA-2","SA-3","SA-4","SA-5","AS-101"]
let sortedMissionsArray = apolloMissions.sorted()

for mission in apolloMissions {
    print("Before Sorting: apolloMission \(mission)")
}

/**
    Before Sorting: apolloMission AS-101
    Before Sorting: apolloMission SA-1
    Before Sorting: apolloMission SA-4
    Before Sorting: apolloMission SA-2
    Before Sorting: apolloMission SA-3
    Before Sorting: apolloMission SA-5
**/

for sortedMission in sortedMissionsArray{
    print("After Sorting: apolloMissions \(sortedMission)")
}

/**
    After Sorting: apolloMissions AS-101
    After Sorting: apolloMissions SA-1
    After Sorting: apolloMissions SA-2
    After Sorting: apolloMissions SA-3
    After Sorting: apolloMissions SA-4
    After Sorting: apolloMissions SA-5
**/
```

- - -

# Dictionaries

A dictionary stores associations between keys and their respective value. Dictionaries do not have defined odering.

A dictionary key must conform to the **Hashable protocol**

## Create an empty dictionary

```swift
var marsMissions: [String : Int] = [:]
```

## Create a dictionary with a dictionary literal

```swift
let marsMissions: [String : Int] = ["1M No.1" : 1960, "1M No.2" : 1960]

print(marsMissions)
```

## Find the number of items in a dictionary

```swift
let missions: [String : Int] = ["1M No.1" : 1960, "1M No.2" : 1960]

print("There have been \(missions.count) Mars missions")

//There have been 2 Mars missions
```

## Check whether count property is 0 with isEmpty property

```swift
let missions: [String : Int] = ["1M No.1" : 1960, "1M No.2" : 1960]

if missions.isEmpty {
    print("We have zero Mars missions")
} else {
    print("We have \(missions.count) Mars missions")
}

//We have 2 Mars missions
```

## Add values to a Dictionary with Subscript syntax

```swift
var missions: [String : Int] = ["1M No.1" : 1960, "1M No.2" : 1960]

missions["Mars 2020 Perseverance Rover"] = 2020

print("New list of missions \(missions)")
//New list of missions ["1M No.2": 1960, "1M No.1": 1960, "Mars 2020 Perseverance Rover": 2020]
```

## Use Dictionary's updateValue(_, forKey _) to update/insert new keys

```swift
var missions: [String : Int] = ["1M No.1" : 1960, "1M No.2" : 1960]

missions.updateValue(2020, forKey: "Mars Perseverance Rover")

print("Missions \(missions)")
//Missions ["Mars Perseverance Rover": 2020, "1M No.1": 1960, "1M No.2": 1960]
```

## Remove a value from a dictionary by assigning nil to the key

```swift
var missions: [String : Int] = ["1M No.1" : 1960, "1M No.2" : 1960]

missions["1M No.1"] = nil

if let _1MNo1Mission = missions["1M No.1"] {
    print("Found the 1M No.1 mission as \(_1MNo1Mission)")
} else {
    print("1M No.1 does not exist, someone must have removed it")
}

//1M No.1 does not exist, someone must have removed it
```

## Alternatively you can use removeValue(forKey _)

This method returns the removed value or nil of the value did not exist already.

```swift
var missions: [String : Int] = ["1M No.1" : 1960, "1M No.2" : 1961]

if let removedMission = missions.removeValue(forKey: "1M No.2"){
    print("Removed mission \(removedMission) from list")
} else {
    print("Could not remove mission key does not exist")
}
//Removed mission 1961 from list
```

## Iterating over a map 

You can use the **for..in** loop to iterate over a dictionary. Each item in the Dictionary is returned a **(key, value) tuple**.

```swift
var missions: [String : Int] = ["1M No.1" : 1960, "1M No.2" : 1961]

for (mission, year) in missions {
    print("Missions \(mission) : Year \(year)")
}


//Missions 1M No.1 : Year 1960
//Missions 1M No.2 : Year 1961
 ```

 You can also obtain an iterable of a dictionary by calling it's keys and values methods.

 ```swift
var missions: [String : Int] = ["1M No.1" : 1960, "1M No.2" : 1961]

for mission in missions.keys {
    print("Missions \(missions)")
}

for year in missions.values {
    print("Mission Year \(year)")
}

/**
    Missions 1M No.1
    Missions 1M No.2
    Mission Year 1960
    Mission Year 1961
**/
 ```

 - - -

 # Control Flow

 Swift provides a variety of control flow statements:

 * **if**
 * **Switch**
 * **guard**
 * **break and contrinue**
 * **for...in**
 * **where...clause**
 * **fallthrough**

 and more.

# For-In Loops

## Iterate over items in an array

```swift
let studios: [String] = ["DC Comics","Marvel","Warner Bros"]

for studio in studios {
    print("Movie studio \(studio)")
}
//Movie studio DC Comics
//Movie studio Marvel
//Movie studio Warner Bros
```

## Iterate over a dictionary to obtain it's key value pairs as tuples

```swift
let movies: [String : Int] = ["Winter Soldier" : 2014, "Iron Man" : 2008, "Thor" : 2011, "The Avengers" : 2012]

for (movie, releaseYear) in movies {
    print("Marvel Movie \(movie), Release: \(releaseYear)")
}

//Marvel Movie Thor, Release: 2011
//Marvel Movie The Avengers, Release: 2012
//Marvel Movie Winter Soldier, Release: 2014
//Marvel Movie Iron Man, Release: 2008

```

## You can use for-in loops to iterate over aranges

```swift
for index in 1...5 {
    print("ETA to Lift off \(index)")
}

//==-------------------==
//ETA to Lift off 1
//ETA to Lift off 2
//ETA to Lift off 3
//ETA to Lift off 4
//ETA to Lift off 5
//==-------------------==

for spot in 1..<4 {
    print("Spot \(spot)")
}
//Spot 1
//Spot 2
//Spot 3
```

# While Loop
A while loop performs a set of statements until and condition is false.

Swift provides two types of while loops:

* **while** - Evaluates it's condition at the start of each pass through loop.
* **repeat-while** - evaluates the condition at the end of each pass through loop

```swift
var index: Int = 0

while(index < 10) {
    print("Index -> \(index)")
    index += 1
}
//Index -> 0
//Index -> 1
//Index -> 2
//Index -> 3
//Index -> 4
//Index -> 5
//Index -> 6
//Index -> 7
//Index -> 8
//Index -> 9
```

## repeat-while loop

```swift
var rank: Int = 10

repeat {
    print("Rank : \(rank)")
    rank -= 1
} while(rank > 0)

//Rank : 10
//Rank : 9
//Rank : 8
//Rank : 7
//Rank : 6
//Rank : 5
//Rank : 4
//Rank : 3
//Rank : 2
//Rank : 1
```

- - -

# Conditional Statements

Swift provides two facilities for managing conditional statements:

* **if**
* **switch**

## If

```swift
let condition: Bool = false

if condition {
    print("condition passed")
} else if condition == false {
    print("Condition failed")
} else {
    print("very strange")
}

//Condition failed
```

## Switch

```swift
enum SuperHeroe: String, CaseIterable {
    case OMNI_MAN = "Omni Man"
    case INVINCIBLE = "Invincible"
    case IMMORTAL = "Immortal"
    case ROBOT = "Robot"
} 

let heroe: SuperHeroe = .OMNI_MAN

switch heroe {
    case .OMNI_MAN:
        print("\(heroe.rawValue) is evil")
    case .INVINCIBLE:
        print("\(heroe.rawValue) is confused")
    case .IMMORTAL:
        print("\(heroe.rawValue) is dead")
    case .ROBOT:
        print("\(heroe.rawValue) is weird")
}

//Omni Man is evil
```

Swift's switch statements don't fallthrough by difault.

## Compound case: Match two case results in one case block

```swift 
num SuperHeroe: String, CaseIterable {
    case OMNI_MAN = "Omni Man"
    case INVINCIBLE = "Invincible"
    case IMMORTAL = "Immortal"
    case ROBOT = "Robot"
} 

let heroe: SuperHeroe = .ROBOT

switch heroe {
    case .OMNI_MAN, .ROBOT:
        print("\(heroe.rawValue) is evil")
    case .INVINCIBLE:
        print("\(heroe.rawValue) is confused")
    case .IMMORTAL:
        print("\(heroe.rawValue) is dead")
}

//Robot is evil
```

## Control Transfer Statements
Control transfer statements change the order in which your statements are executed.

Swift has several control transfer statements

* **continue**
* **break**
* **fallthrough**
* **return**
* **throw**

## continue

**continue** tells the loop to stop what it's doing and launch nother iteration at the begining.

```swift
let indices: [Int] = [1,2,4,5,7,8,11,13,12]

for index in indices {
    if index % 2 == 0 {
        continue
    }

    print("Uneven number: \(index)")
}

//Uneven number: 1
//Uneven number: 5
//Uneven number: 7
//Uneven number: 11
//Uneven number: 13
```

## Break

The break statement end the execution of the loop or switch statements immeditely.

```swift
let indices: [Int] = [1,2,4,5,7,8,11,13,12]

for index in indices {
    if index > 2 {
        print("First Number greater than 2: \(index)")
        break
    }

}
//First Number greater than 2: 4
```

## fallthrough

```swift
let lookup: Int = 12

switch lookup {
    case 1...5:
        print("Found lookup value at 1...5 range")
        fallthrough
    case 6...13:
        print("Found loojup value at 6...13")
        fallthrough
    default:
        print("Finished lookup")
}

//Found lookup value at 6...13
//Finished lookup
```

# Early Exit
You use a guard statement to ensure a condition must be true in order for the code after the guard statement to be executed.
Unlike an if statement, a guard statement always has an else. 


```swift
func answerDoor(ring: Bool){
    guard ring else {
        print("It's all in your head")
        return
    }

    print("Answer the door!")
}

answerDoor(ring: true)
answerDoor(ring: false)

//Answer the door!
//It's all in your head
```

- - -

# Functions

## Variadic Parameters

```swift
func printNumbers(numbers: Int...){
    for number in numbers {
        print("Number \(number)")
    }
}

printNumbers(numbers: 4,3,5,2,6,4,7)

/**
    Number 4
    Number 3
    Number 5
    Number 2
    Number 6
    Number 4
    Number 7
**/
```

# In-Out Parameters

Function parameters are constants by default.To be able to change the function parameters, define the the parameter as **in-out**. 

```swift
var age: Int = 0 //the argument has to be a var not a let constant

func updateAge(dob: Int, currentAge: inout Int){
    let currentYear: Int = 2027
    age = currentYear - dob
}

updateAge(dob: 1980, currentAge: &age)

print("Updated age is \(age)")


```
- - -

# Closures

```swift
let marvelActors:[String] = ["Chris Hemsworth","Scarlett Johansson","Chris Pratt","Paul Rudd","Robert Downey, Jr"]

let sortedNames = marvelActors.sorted { actor1, actor2 in actor1 > actor2}

print("Sorted List of names \(sorted)")
```
- - - 
## Swift Reference Types(Classes) Vs Value Types(Structures and Enumerations)

> Classes are references types while atructures and enumerations are value types.A value type is a type whose value is copied when it's assigned to a variable or constant. Classes are reference types. Unlike value types, reference types are not copied when they are assigned to a variable or constant, or when they are passed to a function. Rather than a copy a referebce to the same existing instance is used.ref

### 1. Value Types

![Value Types](value-types-enums-structs.png)

### 2. Reference Types

![Reference Types](refrence-types-classes.png)
