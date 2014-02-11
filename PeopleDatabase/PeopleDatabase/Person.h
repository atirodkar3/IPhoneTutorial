//
//  Person.h
//  PeopleDatabase
//
//  Created by Tirodkar, Aditya on 2/10/14.
//  Copyright (c) 2014 Tirodkar, Aditya. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject {
    NSString *firstName;
    NSString *lastName;
    int age;
}

- (void)enterInfo;
- (void)printInfo;

@end
