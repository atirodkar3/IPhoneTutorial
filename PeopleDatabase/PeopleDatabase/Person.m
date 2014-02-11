//
//  Person.m
//  PeopleDatabase
//
//  Created by Tirodkar, Aditya on 2/10/14.
//  Copyright (c) 2014 Tirodkar, Aditya. All rights reserved.
//

#import "Person.h"

@implementation Person

    -(void)enterInfo {
        NSLog(@"What is the First Name of the Person?");
        BOOL firstNameSet = false;
        while(!firstNameSet) {
            int firstNameLimit = 20;
            char cstring[firstNameLimit];
            scanf("%s",cstring);
            if(strlen(cstring) > firstNameLimit) {
                NSLog(@"%@",@"Name Too Long. Retry.");
            } else {
                firstName = [NSString stringWithCString:cstring encoding:1];
                firstNameSet = true;
            }
        }
    
        NSLog(@"What is the Last Name of the Person?");
        BOOL lastNameSet = false;
        while(!lastNameSet) {
            int lastNameLimit = 20;
            char cstring[lastNameLimit];
            scanf("%s",cstring);
            if(strlen(cstring) > lastNameLimit) {
                NSLog(@"%@",@"Name Too Long. Retry.");
            } else {
                lastName = [NSString stringWithCString:cstring encoding:1];
                lastNameSet = true;
            }
        }
        
        NSLog(@"What is the age of the Person");
        scanf("%i",&age);
}

    -(void)printInfo {
    NSLog(@"%@ %@ has an age of : %i", firstName, lastName, age);
    }
@end
