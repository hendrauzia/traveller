//
//  Budget.m
//  Traveller
//
//  Created by Hendra Uzia on 8/18/14.
//  Copyright (c) 2014 Hendra Uzia. All rights reserved.
//

#import "Budget.h"

@implementation Budget
- (void) setBudget: (NSNumber*) budgetValue withRate: (NSNumber*) rateValue {
    budget = budgetValue;
    rate = rateValue;
}
- (void) spend: (NSNumber*) dollars {
    budget = @([budget doubleValue] - [dollars doubleValue]);
    
    NSLog(@"Converting $%.2f into foreign currency leaves $%.2f", [dollars doubleValue], [budget doubleValue]);
}
- (void) charge: (NSNumber*) currency {
    transaction = @([currency doubleValue] * [rate doubleValue]);
    budget = @([budget doubleValue] - [transaction doubleValue]);
    
    NSLog(@"Charging %.2f in foreign currency leaves $%.2f", [currency doubleValue], [budget doubleValue]);
}
@end
