library sort;

import 'package:flutter/foundation.dart';

///Partition for int and double
int _partitionA(List arr, int low, int high) {
  var pivot = arr[high]; // pivot
  var i = (low - 1); // Index of smaller element

  for (int j = low; j <= high - 1; j++) {
    // If current element is smaller than the pivot
    if (arr[j].runtimeType == DateTime) {
      if (arr[j].isBefore(pivot)) {
        i++; // increment index of smaller element
        final temp = arr[i];
        arr[i] = arr[j];
        arr[j] = temp;
      }
    } else {
      if (arr[j] < pivot) {
        i++; // increment index of smaller element
        final temp = arr[i];
        arr[i] = arr[j];
        arr[j] = temp;
      }
    }
  }
  final temp = arr[i + 1];
  arr[i + 1] = arr[high];
  arr[high] = temp;
  return (i + 1);
}

///Quicksort for int and double
void _quickSortA(List arr, int low, int high) {
  if (low < high) {
    /* pi is partitioning index, arr[p] is now  
        at right place */
    int pi = _partitionA(arr, low, high);

    // Separately sort elements before
    // partition and after partition
    _quickSortA(arr, low, pi - 1);
    _quickSortA(arr, pi + 1, high);
  }
}

//Partion for Map
int _partitionM(List<Map<String, dynamic>> arr, int low, int high,
    {@required String sortBy}) {
  var pivot = arr[high]; // pivot
  var i = (low - 1); // Index of smaller element

  for (int j = low; j <= high - 1; j++) {
    // If current element is smaller than the pivot
    if (arr[j][sortBy].runtimeType == DateTime) {
      if (arr[j][sortBy].isBefore(pivot[sortBy])) {
        i++; // increment index of smaller element
        final temp = arr[i];
        arr[i] = arr[j];
        arr[j] = temp;
      }
    } else {
      if (arr[j][sortBy] < pivot[sortBy]) {
        i++; // increment index of smaller element
        final temp = arr[i];
        arr[i] = arr[j];
        arr[j] = temp;
      }
    }
  }
  final temp = arr[i + 1];
  arr[i + 1] = arr[high];
  arr[high] = temp;
  return (i + 1);
}

void _quickSortM(List<Map<String, dynamic>> arr, int low, int high,
    {@required String sortBy}) {
  if (low < high) {
    /* pi is partitioning index, arr[p] is now  
        at right place */
    int pi = _partitionM(arr, low, high, sortBy: sortBy);

    // Separately sort elements before
    // partition and after partition
    _quickSortM(arr, low, pi - 1, sortBy: sortBy);
    _quickSortM(arr, pi + 1, high, sortBy: sortBy);
  }
}

//This extention will be called on all List<Map<String,dynamic>> to simple sort it.
//It is important to send a string key to funtion for which sorting should be done
extension ExMapSort on List<Map<String, dynamic>> {
  List<Map<String, dynamic>> simpleSort({@required String sortBy}) {
    this.sort((a, b) => a[sortBy].compareTo(b[sortBy]));
    return this;
  }

  List<Map<String, dynamic>> quickSort({@required String sortBy}) {
    _quickSortM(this, 0, this.length - 1, sortBy: sortBy);
    return this;
  }

  List<Map<String, dynamic>> addAndSort(
      {@required Map<String, dynamic> item, @required String sortBy}) {
    this
      ..add(item)
      ..quickSort(sortBy: sortBy);
    return this;
  }
}

extension ExStringSort on List<String> {
  List<String> simpleSort() {
    this.sort((a, b) => a.toLowerCase().compareTo(b.toLowerCase()));
    return this;
  }

  List<String> addAndSort({@required String item}) {
    this
      ..add(item)
      ..simpleSort();
    return this;
  }
}

//This extension will be called on all List<DateTime>
extension ExDateTimeSort on List<DateTime> {
  List<DateTime> simpleSort() {
    this.sort((a, b) => a.compareTo(b));
    return this;
  }

  List<DateTime> quickSort() {
    _quickSortA(this, 0, this.length - 1);
    return this;
  }

  List<DateTime> addAndSort({@required DateTime item}) {
    this
      ..add(item)
      ..quickSort();
    return this;
  }
}

//This extension will be called on all List<int> for simple sort
extension ExIntSort on List<int> {
  List<int> simpleSort() {
    this.sort((a, b) => a.compareTo(b));
    return this;
  }

  List<int> quickSort() {
    _quickSortA(this, 0, this.length - 1);
    return this;
  }

  List<int> addAndSort({@required int item}) {
    this
      ..add(item)
      ..sort();
    return this;
  }
}

//This extension will be called on all List<double> for sort
extension ExDoubleSort on List<double> {
  List<double> simpleSort() {
    this.sort((a, b) => a.compareTo(b));
    return this;
  }

  List<double> quickSort() {
    _quickSortA(this, 0, this.length - 1);
    return this;
  }

  List<double> addAndSort({@required double item}) {
    this
      ..add(item)
      ..quickSort();
    return this;
  }
}
