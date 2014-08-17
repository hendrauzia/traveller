//
//  main.m
//  Traveller
//
//  Created by Hendra Uzia on 8/7/14.
//  Copyright (c) 2014 Hendra Uzia. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Budget : NSObject {
    double budget;
    float rate;
    double transaction;
}

- (void) setBudget: (double) budgetValue withRate: (float) rateValue;
- (double) getBudget;
- (void) spend: (double) dollars;
- (void) charge: (double) currency;
@end

int main(int argc, const char * argv[]) {
    Budget *europe = [Budget new];
    Budget *england = [Budget new];

    [europe setBudget:1000.00 withRate:1.2500];
    double dollarsInEurope = 100;
    double euros = 100;

    [england setBudget:2000.00 withRate:1.5000];
    double dollarsInEngland = 100;
    double pounds = 100;
    
    [europe spend:dollarsInEurope];
    NSLog(@"Converting $%.2f US dollars into euros leaves $%.2f", dollarsInEurope, [europe getBudget]);
    
    [europe charge:euros];
    NSLog(@"Charging €%.2f euros leaves $%.2f", euros, [europe getBudget]);
    
    [england spend:dollarsInEngland];
    NSLog(@"Converting $%.2f US dollars into pounds leaves $%.2f", dollarsInEngland, [england getBudget]);
    
    [england charge:pounds];
    NSLog(@"Charging €%.2f pounds leaves $%.2f", pounds, [england getBudget]);
    
    return 0;
}

@implementation Budget
- (void) setBudget: (double) budgetValue withRate: (float) rateValue {
    budget = budgetValue;
    rate = rateValue;
}
- (double) getBudget {
    return budget;
}
- (void) spend: (double) dollars {
    budget -= dollars;
}
- (void) charge: (double) currency {
    transaction = currency * rate;
    budget -= transaction;
}
@end
