//
//  main.m
//  fizzy
//
//  Created by mariah cox on 9/3/16.
//  Copyright © 2016 mariah cox. All rights reserved.
//

#import <Foundation/Foundation.h>


BOOL numberContainsNumber(NSInteger number, NSInteger subNumber)
{
    BOOL theAnswer = NO;
    
    NSInteger thisNumber = number >= 0 ? number : -number;    // always positive
    NSInteger thisDigit;
    
    while (thisNumber != 0) {
        thisDigit = thisNumber % 10;
        thisNumber = thisNumber / 10;
        
        if (thisDigit == subNumber) {
            theAnswer = YES;
            break;
        }
    }
    
    return theAnswer;
}

NSString* boolString(BOOL b)
{
    return (b?@"YES":@"NO");
}


int main(int argc, const char * argv[]) {
    @autoreleasepool
    {
        const NSInteger lookingForThree = 3;
        const NSInteger lookingForFive = 5;
        
        for (int i = 1; i <= 100; i++)
        {
            
            NSInteger numberToTest = i;
            BOOL result3 = numberContainsNumber(numberToTest, lookingForThree);
            BOOL result5 = numberContainsNumber(numberToTest, lookingForFive);
            
            
            if ((([boolString(result3)  isEqual: @"YES"]) || ([boolString(result5)  isEqual: @"YES"])) && ((numberToTest % 3 != 0) && (numberToTest % 5 != 0)))
                NSLog(@"%ld is Woof",numberToTest);
            
            if (((numberToTest % 3 == 0) && (numberToTest % 5 != 0)) && (([boolString(result3)  isEqual: @"NO"]) && ([boolString(result5)  isEqual: @"NO"])))
                NSLog(@"%ld is Fizz",numberToTest);
            
            if (((numberToTest % 5 == 0) && (numberToTest % 3 != 0)) && (([boolString(result3)  isEqual: @"NO"]) && ([boolString(result5)  isEqual: @"NO"])))
                NSLog(@"%ld is Buzz",numberToTest);
            
            if (((numberToTest % 3 == 0) && (numberToTest % 5 == 0)) && (([boolString(result3)  isEqual: @"NO"]) && ([boolString(result5)  isEqual: @"NO"])))
                NSLog(@"%ld is FizzBuzz",numberToTest);
            
            if (((numberToTest % 3 == 0) && (numberToTest % 5 != 0)) && (([boolString(result3)  isEqual: @"YES"]) || ([boolString(result5)  isEqual: @"YES"])))
                NSLog(@"%ld is FizzWoof",numberToTest);
            
            if (((numberToTest % 3 != 0) && (numberToTest % 5 == 0)) && (([boolString(result3)  isEqual: @"YES"]) || ([boolString(result5)  isEqual: @"YES"])))
                NSLog(@"%ld is BuzzWoof",numberToTest);
            
            if (((numberToTest % 3 == 0) && (numberToTest % 5 == 0)) && (([boolString(result3)  isEqual: @"YES"]) || ([boolString(result5)  isEqual: @"YES"])))
                NSLog(@"%ld is FizzBuzzWoof",numberToTest);
            
            if ((([boolString(result3)  isEqual: @"NO"]) && (numberToTest % 3 != 0) && (numberToTest % 5 != 0)) || (([boolString(result5)  isEqual: @"NO"]) && (numberToTest % 3 != 0) && (numberToTest % 5 != 0)))
                NSLog(@"%ld",numberToTest);
            
        }
    }
    return 0;
}



