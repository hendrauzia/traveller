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
    [europe charge:euros];

    [england spend:dollarsInEngland];
    [england charge:pounds];
    
    return 0;
}

@implementation Budget
- (void) setBudget: (double) budgetValue withRate: (float) rateValue {
    budget = budgetValue;
    rate = rateValue;
}
- (void) spend: (double) dollars {
    budget -= dollars;
    NSLog(@"Converting $%.2f into foreign currency leaves $%.2f", dollars, budget);
}
- (void) charge: (double) currency {
    transaction = currency * rate;
    budget -= transaction;
    NSLog(@"Charging %.2f in foreign currency leaves $%.2f", currency, budget);
}
@end
