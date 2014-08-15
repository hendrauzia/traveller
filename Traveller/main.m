//
//  main.m
//  Traveller
//
//  Created by Hendra Uzia on 8/7/14.
//  Copyright (c) 2014 Hendra Uzia. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Budget : NSObject {
@public
    float rate;
    double budget;
    double transaction;
}

- (void) spend: (double) dollars;
- (void) charge: (double) currency;
@end

int main(int argc, const char * argv[]) {
    Budget *europe = [Budget new];
    Budget *england = [Budget new];

    europe->rate = 1.2500;
    europe->budget = 1000.00;
    double dollarsInEurope = 100;
    double euros = 100;
    
    england->rate = 1.5000;
    england->budget = 2000.00;
    double dollarsInEngland = 100;
    double pounds = 100;
    
    [europe spend:dollarsInEurope];
    NSLog(@"Converting $%.2f US dollars into euros leaves $%.2f", dollarsInEurope, europe->budget);
    
    [europe charge:euros];
    NSLog(@"Charging €%.2f euros leaves $%.2f", euros, europe->budget);
    
    [england spend:dollarsInEngland];
    NSLog(@"Converting $%.2f US dollars into pounds leaves $%.2f", dollarsInEngland, england->budget);
    
    [england charge:pounds];
    NSLog(@"Charging €%.2f pounds leaves $%.2f", pounds, england->budget);
    
    return 0;
}

@implementation Budget
- (void) spend: (double) dollars {
    budget -= dollars;
}
- (void) charge: (double) currency {
    transaction = currency * rate;
    budget -= transaction;
}
@end
