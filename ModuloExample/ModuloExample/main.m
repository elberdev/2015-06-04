//
//  main.m
//  Playing
//
//  Created by Michael Kavouras on 6/4/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        /*
         
         Problem:
         
         If we list all the natural numbers below 10 that are multiples
         of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
         
         Find the sum of all the multiples of 3 or 5 below 1000.
         
         */
        
        // First, let's manually do 0..<10
        
        int sum = 0;
        int currentNumber;
        
        currentNumber = 0;
        if (currentNumber % 3 == 0 || currentNumber % 5 == 0) {
            sum = sum + currentNumber;
        }
        
        currentNumber = 1;
        if (currentNumber % 3 == 0 || currentNumber % 5 == 0) {
            sum = sum + currentNumber;
        }
        
        currentNumber = 2;
        if (currentNumber % 3 == 0 || currentNumber % 5 == 0) {
            sum = sum + currentNumber;
        }
        
        currentNumber = 3;
        if (currentNumber % 3 == 0 || currentNumber % 5 == 0) {
            sum = sum + currentNumber;
        }
        
        currentNumber = 4;
        if (currentNumber % 3 == 0 || currentNumber % 5 == 0) {
            sum = sum + currentNumber;
        }
        
        currentNumber = 5;
        if (currentNumber % 3 == 0 || currentNumber % 5 == 0) {
            sum = sum + currentNumber;
        }
        
        currentNumber = 6;
        if (currentNumber % 3 == 0 || currentNumber % 5 == 0) {
            sum = sum + currentNumber;
        }
        
        currentNumber = 7;
        if (currentNumber % 3 == 0 || currentNumber % 5 == 0) {
            sum = sum + currentNumber;
        }
        
        currentNumber = 8;
        if (currentNumber % 3 == 0 || currentNumber % 5 == 0) {
            sum = sum + currentNumber;
        }
        
        currentNumber = 9;
        if (currentNumber % 3 == 0 || currentNumber % 5 == 0) {
            sum = sum + currentNumber;
        }
        
        NSLog(@"%d", sum); // 23
        
        /*
         
         You'll notice that the code above has a lot of repetition. There is an important
         concept in programming called D.R.Y. (Don't Repeat Yourself). General rule of thumb,
         if you have the same code more than twice, there's a better way.
         
         In this case we can use a loop. In the code above, you'll notice that the only thing
         changing is currentNumber, while everything else is repeated over and over.
         
         So how would this look with a for loop? http://en.wikipedia.org/wiki/For_loop
         
         */
        
        sum = 0; // reset our sum
        int maxNumber = 1000; // set our max constraint
        
        for (int i = 0; i < maxNumber; i++) {
            if (i % 3 == 0 || i % 5 == 0) {
                sum = sum + i;
            }
        }
        
        NSLog(@"%d", sum); // 233168
        
        /*
         
         Notice that we INCREASED our max number from 10 to 1000, yet
         we DECREASED our code from 50 lines to 8 lines.
         
         */
        
    }
    
    return 0;
}