//
//  main.m
//  Bindings
//
//  Created by Christopher Motl on 12/3/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Cocoa/Cocoa.h>
#import "Person.h"

int main (int argc, const char * argv[])
{

    @autoreleasepool {
        
        Person *p1 = [Person new];
        Person *p2 = [Person new];
        
        [p1 bind:@"name" toObject:p2 withKeyPath:@"name" options:nil];
        [p2 bind:@"name" toObject:p1 withKeyPath:@"name" options:nil];
        
        p1.name = @"Christopher";
        NSLog(@"p1 name: %@", p1.name);
        NSLog(@"p2 name: %@", p2.name);
        
        p2.name = @"Christina";
        NSLog(@"p1 name: %@", p1.name);
        NSLog(@"p2 name: %@", p2.name);
        
    }
    return 0;
}

