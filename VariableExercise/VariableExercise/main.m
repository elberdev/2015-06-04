//
//  main.m
//  VariableExercise
//
//  Created by Elber Carneiro on 6/4/15.
//  Copyright (c) 2015 Elber Carneiro. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        // All our NSString variables
        NSArray *heroes = @[@"Stimpy", @"Spongebob", @"Spider-man",
                            @"007", @"Set", @"Michelangelo",
                            @"Tyrion", @"Ms. Marvel", @"The Brain",
                            @"Freakazoid", @"Bubbles", @"Carl Brutananadilewski"];
        NSArray *nemeses = @[@"Ren", @"Squidward", @"Venom",
                             @"Oddjob", @"Horus", @"Shredder",
                             @"Cersei", @"The Inventor", @"Snowball",
                             @"Armando Gutierrez", @"Mojo Jojo", @"Master Shake"];
        NSString *topAndBottomBorder = @"+-------------------------------------------------+";
        
        // We will use these blank strings to build the rows inside our for loop:
        NSString *rowNumber, *tempHero, *tempNemesis, *teacherName;
        
        // Variables we will use to know how long we want the strings
        // with added spaces to be. You must set these to the longest
        // members of each array:
        NSInteger longestHero = [heroes[11] length];
        NSInteger longestNemesis = [nemeses[9] length]; 
        
        NSLog(@"%@", topAndBottomBorder);
        
        NSInteger longestTeacherName = 0;
        
        for (int i = 0; i < heroes.count; i++) {
             teacherName = ((NSString *)heroes[i]);
            if (teacherName.length > longestTeacherName) {
                longestTeacherName = teacherName.length;
            }
        }
        
        // Let's get to the good part:
        for (int i = 0; i < longestTeacherName; i++) {
            
            // use the variable i to build the row number
            rowNumber = [NSString stringWithFormat:@"%d", i+1];
            
            // add an extra space if the row number is only one digit
            rowNumber = [rowNumber stringByPaddingToLength:2
                                    withString:@" " startingAtIndex:0];
            
            // build hero name and nemesis name with proper spacing
            tempHero = [heroes[i] stringByPaddingToLength:longestHero
                                    withString:@" " startingAtIndex:0];
            
            tempNemesis = [nemeses[i] stringByPaddingToLength:longestNemesis
                                    withString:@" " startingAtIndex:0];
            
            // print the row
            NSLog(@"| %@ | %@ | %@ |", rowNumber, tempHero, tempNemesis);
        }
        
        NSLog(@"%@", topAndBottomBorder);
        
    return 0;
    }
}

// Helps you figure out how many characters the border line is,
// in case you need to tweak the length. Uncomment the last line
// if you need to see it.
//NSLog(@"%ld", [topAndBottomBorder length]);

// Helps you figure out the spacing using the two longest
// strings of each array. Uncomment if you need to
// use it.
//NSLog(@"| %d | %@ | %@ |", [heroes count], heroes[11], nemeses[9]);