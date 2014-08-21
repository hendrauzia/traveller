//
//  Transaction.m
//  Traveller
//
//  Created by Hendra Uzia on 8/19/14.
//  Copyright (c) 2014 Hendra Uzia. All rights reserved.
//

#import "Transaction.h"
#import "Budget.h"

@implementation Transaction

//- (void) create: (double) theAmount ofType: (transactionType) aType {
//    type = aType;
//    amount = @(theAmount);
//}

- (void) create: (double) amountValue for: (Budget*) budgetValue {
    budget = budgetValue;
    amount = @(amountValue);
}

- (void) spend {
    // Fill in the method in subclasses
}

- (void) trackSpending: (double) amountValue {
    NSLog(@"You are about to spend another %.2f", amountValue);
}

@end
