//
//  main.m
//  MyFirstProject
//
//  Created by Tirodkar, Aditya on 2/10/14.
//  Copyright (c) 2014 Tirodkar, Aditya. All rights reserved.
//
/*
 // insert code here...
 
 // A Sample String
 NSString *test = @"A Test String";
 // A Mutable String
 NSMutableString *mutableString = [NSMutableString stringWithFormat:@"MutableTest"];
 [mutableString appendString:@"WithAnAddition"];
 
 // Integers
 int num = 400;
 
 
 // Log Prints
 NSLog(@"This is a Test");
 NSLog(@"%@",test);
 NSLog(@"%@",mutableString);
 NSLog(@"An Integer Number being Printed : %i",num);
 */



#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
    
    @autoreleasepool {
        int answer = 0;
        int guess = 0;
        int turn = 0;
        answer = arc4random() % 100 + 1;
        NSLog(@"The Random Answer Generated : %i",answer);
        while (guess != answer)
        {            NSLog(@"Enter a Number between 0 and 100 for Turn : %i", ++turn);
            scanf("%i",&guess);
            NSLog(@"Guessed Number : %i", guess);
        
            if(guess > answer)
            {
            NSLog(@"Guess was Higher");
            } else if (guess < answer)
            {   NSLog(@" Guess was Lower");
            } else {
                NSLog(@"Correct Answer : %i on Turn : %i",answer,turn);
            }
        }
    return 0;
    }
}
