//
//  Budget.m
//  Traveller
//
//  Created by Hendra Uzia on 8/18/14.
//  Copyright (c) 2014 Hendra Uzia. All rights reserved.
//

#import "Budget.h"

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
