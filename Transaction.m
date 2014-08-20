//
//  Transaction.m
//  Traveller
//
//  Created by Hendra Uzia on 8/19/14.
//  Copyright (c) 2014 Hendra Uzia. All rights reserved.
//

#import "Transaction.h"

@implementation Transaction

- (void) create: (double) theAmount ofType: (transactionType) aType {
    type = aType;
    amount = @(theAmount);
}

- (NSNumber*) amount {
    return amount;
}

- (transactionType) type {
    return type;
}

@end
