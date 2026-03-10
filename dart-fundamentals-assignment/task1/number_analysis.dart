// Task 1 - Number Analysis
// Name: Messay Damtew

// find largest value in the list
int findMax(List<int> list) {
  int maxValue = list[0];

  for (int num in list) {
    if (num > maxValue) {
      maxValue = num;
    }
  }

  return maxValue;
}

// find smallest value
int findMin(List<int> list) {
  int minValue = list[0];

  for (int num in list) {
    if (num < minValue) {
      minValue = num;
    }
  }

  return minValue;
}

// calculate total sum
int calculateSum(List<int> list) {
  int result = 0;

  for (int num in list) {
    result = result + num;
  }

  return result;
}

// get average number
double calculateAverage(List<int> list) {
  int total = calculateSum(list);
  double average = total / list.length;

  return average;
}

void main() {

  // numbers to analyze
  List<int> list = [15, -3, 28, 40, -12, 7, 55, 2];

  print("Number Analysis");
  print("----------------");

  int max = findMax(list);
  int min = findMin(list);
  int sum = calculateSum(list);
  double avg = calculateAverage(list);

  print("Numbers: $list");
  print("Max value : $max");
  print("Min value : $min");
  print("Sum       : $sum");
  print("Average   : $avg");
}