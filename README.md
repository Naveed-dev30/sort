# sort

package for sorting numbers, lists, maps, doubles and dates with quick and simple sort algorithms

<p align="center">
  <img src="https://img.shields.io/badge/platform-flutter-ff69b4.svg" alt="github"></a>
  <a href="https://ko-fi.com/naveedullah"><img src="https://img.shields.io/badge/donate-PayPal-blue.svg" alt="PayPal"></a>
</p>

## Getting Started
This package has two sorting algorithms at the moment, one in simple sort that comes from dart it self and other one is quick sort algorithm.

## Implementation
Add package in your pubspec.yaml file
```yaml
dependencies:
  sort: ^0.0.1
```

Import the package as
```dart
import 'package:sort/sort.dart';
```

**For list of int, double numbers and dateTime**

Simple sort 
```dart
var numbers = [9.0,3.1,2.3,6.1,4.5,5.3,1.6,8.3,7.9];
numbers.simpleSort();
print('$numbers');
//numbers is now as [1.6,2.3,3.1,4.5,5.3,6.1,7.9,8.3,9.0]
```

Quick sort 
```dart
var numbers = [9.0,3.1,2.3,6.1,4.5,5.3,1.6,8.3,7.9];
numbers.quickSort();
print('$numbers');
//numbers is now as [1.6,2.3,3.1,4.5,5.3,6.1,7.9,8.3,9.0]
```

Add a value and sort list
```dart
var numbers = [9,3,2,6,4,5,1,7];
numbers.addAndSort(item:8);
print('$numbers');
//numbers is now as [1,2,3,4,5,6,7,8,9]
```

**For list of String**

List of String has only simple sort
```dart
var names = ['bac','cab','abc'];
names.simpleSort();
print('$names');
//names is now as ['abc','bac,','cab']
```

Add a string to the list and sort

```dart
var names = ['bac','dab','abc'];
names.addAndSort(item:'abc');
print('$names');
//names is now as ['abc','bac,','cab','dab']
```

**For list of Maps**

Simple sort 
```dart
var maps = [
  {'age':12,'name':'abc'},
  {'age':11,'name':'bac'},
  {'age':16,'name':'cab'},
];
maps.simpleSort(sortBy: 'age');
print('$maps');
//sortedMaps is now as [{'age':11,'name':'bac'},{'age':12,'name':'abc'},{'age':16,'name':'cab'}]
```

Quick sort
```dart
var maps = [
  {'age':12,'name':'abc'},
  {'age':11,'name':'bac'},
  {'age':16,'name':'cab'},
];
maps.quickSort(sortBy: 'age');
print('$maps');
//sortedMaps is now as [{'age':11,'name':'bac'},{'age':12,'name':'abc'},{'age':16,'name':'cab'}]
```

Add a value and sort list
```dart
var maps = [
  {'age':12,'name':'abc'},
  {'age':11,'name':'bac'},
  {'age':16,'name':'cab'},
];
maps.addAndSort(item:{'age':14,'name':'dac'},sortBy: 'age');
print('$maps');
//sortedMaps is now as [{'age':11,'name':'bac'},{'age':12,'name':'abc'},{'age':14,'name':'dac'},{'age':16,'name':'cab'}]
```

**Soon more sorts for short lists, long lists and very long lists will be added to sort lists in very least time.**

## Support Us
You like the package ? Buy me a coffee :)

[![ko-fi](doc/donate-kofi1.png)](https://ko-fi.com/naveedullah)
