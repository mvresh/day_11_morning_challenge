// Challenge 1
// Create a function that returns the total number of steps it takes to transform each element to the maximal element in the list.
// Each step consists of incrementing a digit by one.
// Examples
// incrementToTop([3, 4, 5]) ➞ 3
// 3 increments: 3 -> 4, 4 -> 5; 4 -> 5
// incrementToTop([4, 3, 4]) ➞ 1
// incrementToTop([3, 3, 3]) ➞ 0
// incrementToTop([3, 10, 3]) ➞ 14
import 'dart:math';

int incrementToTop(List<int>numbersList){
  int total = 0;
  int count = 0;
  int maximum = numbersList.reduce(max);
  for(int i =0;i<numbersList.length;i++){
    if(numbersList[i]<maximum){
      count = maximum - numbersList[i];
      total = total + count;
    }
    count = 0;
  }
  return total;
}


 int count(List listOfCards){
  int total = 0;
  Map myMap = Map<List, int>();
  myMap = {
    [2,3,4,5,6]:1,
    [7,8,9]:0,
    [10,'J','Q','K','A']:-1,
  };

  //return myMap[myMap.keys.toList()[0]];
  for(int i = 0; i< listOfCards.length;i++){

    if(myMap.keys.toList()[0].contains(listOfCards[i])){
      total ++;
    }
    else if(myMap.keys.toList()[2].contains(listOfCards[i])){
      total = total - 1;
    }
  }
  return total;
}
// Challenge 2
// In BlackJack, cards are counted with -1, 0, 1 values:
//
//  - 2, 3, 4, 5, 6 are counted as +1
//  - 7, 8, 9 are counted as 0
//  - 10, J, Q, K, A are counted as -1
//  Create a function that counts the number and returns it from the list of cards provided.
//  count([5, 9, 10, 3, "J", "A", 4, 8, 5]) ➞ 1
//
//  count(["A", "A", "K", "Q", "Q", "J"]) ➞ -6
//
//  count(["A", 5, 5, 2, 6, 2, 3, 8, 9, 7]) ➞ 5

// Challenge 3
// Write a test case each for previous two functions you wrote

main() {
  print(incrementToTop([3, 10, 3]));
  print(incrementToTop([3, 4, 3]));
  print(incrementToTop([3, 3, 3]));
  print(count([5, 9, 10, 3, "J", "A", 4, 8, 5]));
  print(count(["A", "A", "K", "Q", "Q", "J"]));
}
