# Swift Date and Time

# Date

Specific point in time. Date is independent of Calendar or time zone.

The Date structure provides methods that facilitate:
1. Comparing dates
2. Calculate the time interval between two dates
3. Create a new date from a time interval relative to another date

Use date in conjunction with **DateFormatter** instance to create localized representation of dates and times and with **Calendar** instance to perform calendar arithmetic.

Date bridges with **NSDate** class. You can use these interchangeably.

## Create Date

### init()

Ceates a date value initialized to the current date and time.

```swift
let now = Date()
```

## init(timeIntervalSinceNow: TimeInterval)

Create a date with number of seconds.

```swift
let now = Date(360_000_000)

```

## init(timeInterval: seconds, since: Date)

Create a new date instance relative to another date after specified number of seconds.

## func addTimeInterval(TimeInterval)

add a time interval to the current date

## func advanced(by: TimeInterval) -> Date

Increase current date by specified time interval



