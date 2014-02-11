//
//  main.m
//  PeopleDatabase
//
//  Created by Tirodkar, Aditya on 2/10/14.
//  Copyright (c) 2014 Tirodkar, Aditya. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[])
{
    
    @autoreleasepool {
        char response;
        NSMutableArray *people = [[NSMutableArray alloc] init];
        do {
        
            Person *newPerson = [[Person alloc] init];
        
            [newPerson enterInfo];
            [newPerson printInfo];
            [people addObject:newPerson];
            NSLog(@"Is there another person Object to Enter");
            scanf("\n%c",&response);
        } while(response == 'Y' || response == 'y');
    
        NSLog(@"\nThe Total Number of people in the DB is : %lu",[people count]);
        for (Person *eachPerson in people)
        {
            [eachPerson printInfo];
        }
    }
    return 0;

/*
 NSString *test = @"This is a Test";
 NSLog(@"%@",test);
 NSMutableString *nString = [NSMutableString stringWithFormat:@"Mutable String"];
 [nString appendString:@" that was Modified."];
 NSLog(@"%@",nString);
 int num = 10;
 NSString *numString = [NSString stringWithFormat:@"Number to Print : %i",num];
 NSLog(@"The Printed String : %@",numString);
 // Character Size String Test
 int cStringLength = 10;
 char cString[cStringLength];
 NSLog(@"Enter a String of Length %i",cStringLength);
 scanf("%s",cString);
 //NSLog(@"%lu",strlen(cString));
 if(strlen(cString) > cStringLength)
 {
 NSLog(@"%@",@"The Inputted String is Too Long");
 } else
 {
 NSString *inputString = [NSString stringWithCString:cString encoding:1];
 NSLog(@"This is the Entered String %@ and has a Length %li",inputString, [inputString length]);
 }
*/





}