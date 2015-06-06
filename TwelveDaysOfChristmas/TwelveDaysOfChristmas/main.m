//
//  main.m
//  TwelveDaysOfChristmas
//
//  Created by Elber Carneiro on 6/4/15.
//  Copyright (c) 2015 Elber Carneiro. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        // All our string goodies:
        NSString *onThe = @"\nOn the ";
        NSArray *ordinalNumbers = @[@"first ", @"second ", @"third ",
                                    @"fourth ", @"fifth ", @"sixth ",
                                    @"seventh ", @"eighth ", @"ninth ",
                                    @"tenth ", @"eleventh ", @"twelfth "];
        NSString *dayOf = @"day of Christmas my true love gave to me \n";
        NSString *allGifts = @"and ";
        NSArray *gifts = @[@"a Partridge in a Pear Tree.\n", @"Two Turtle Doves\n",
                           @"Three French Hens,\n", @"Four Calling Birds,\n",
                           @"Five Gold Rings,\n", @"Six Geese a-Laying,\n",
                           @"Seven Swans a-Swimming,\n", @"Eight Maids a-Milking,\n",
                           @"Nine Ladies Dancing,\n", @"Ten Lords a-Leaping,\n",
                           @"Eleven Pipers Piping,\n", @"Twelve Drummers Drumming,\n"];
        
        // Loop 12 times
        for (int i = 0; i < [ordinalNumbers count]; i++) {
            
            // Print the first line with the correct ordinalNumber
            printf("%s%s%s", [onThe UTF8String], [ordinalNumbers[i] UTF8String], [dayOf UTF8String]);
            
            // Print current gift
            printf("%s", [gifts[i] UTF8String]);
            
            // On iterations 2-12, print prior gifts
            if (i > 0) {
                printf("%s", [allGifts UTF8String]);
            }
            
            // Construct the NSString here that will contain all the gifts up to now
            // for use in the next iteration
            if (i == 0) {
                allGifts = [allGifts stringByAppendingString:gifts[i]];
            } else {
                allGifts = [gifts[i] stringByAppendingString:allGifts];
            }
        }
        
    }
    return 0;
}
