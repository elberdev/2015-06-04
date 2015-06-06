//
//  main.m
//  Variables2
//
//  Created by Elber Carneiro on 6/4/15.
//  Copyright (c) 2015 Elber Carneiro. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        char a = 'a';
        char b = 'b';
        BOOL whu = TRUE;
        int result;
        int number = 455;
        char charResult;
        
        // blah blah comment git test
        // hey homie
        
        NSLog(@"too legit to git");
        
        result = a * b;
        charResult = a * b;
        printf("a * b = %i\n", result);
        printf("a * b = %c\n", charResult);
        
        result = a + b;
        charResult = a + b;
        printf("a + b = %i\n", result);
        printf("a + b = %c\n", charResult);
        printf("What letter am I: %c\n", 103);
        
        printf("int representation of a boolean: %d\n", whu);
        printf("hex representation of a boolean: %x\n", whu);
        
        result = a + b * whu;
        charResult = a - b / whu;
        printf("result is %d\n", result);
        printf("result is %c\n", charResult);
        
        printf("a > b: %d\n", (int)a > b);
        printf("a < b: %d\n", (int)a < b);
        printf("a == b: %d\n", (int)a == b);
        printf("a != b: %d\n", (int)a != b);
        printf("a <= b: %d\n", (int)a <= b);
        printf("a >= b: %d\n", (int)a >= b);
        
        whu = ((a > b) == FALSE) <= (-3 / result);
        printf("((a > b) == FALSE) <= (-3 / result): %d\n", (int) whu);
        
        if (a > b) {
            printf("a is greater than b!\n");
        } else {
            printf("a is not greater than b!\n");
            b = 'x';
        }
        
        printf("b = %c\n", b);
        printf("as INT: number / 3 + result = %d\n", number / 3 + result);
        printf("as DOUBLE: number / 3.0 + result = %g\n", number / 3.0 + result);
        
        BOOL today = YES;
        BOOL tomorrow = NO;
        BOOL isTodayOrTomorrowHot = today || tomorrow;
        BOOL isTodayAndTomorrowHot = today && tomorrow;
        
        printf("Is today or tomorrow hot: %d\n", isTodayOrTomorrowHot);
        printf("Is today and tomorrow hot: %d\n", isTodayAndTomorrowHot);

    }
    return 0;
}
