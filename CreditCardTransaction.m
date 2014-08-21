//
//  CreditCardTransaction.m
//  Traveller
//
//  Created by Hendra Uzia on 8/21/14.
//  Copyright (c) 2014 Hendra Uzia. All rights reserved.
//

#import "CreditCardTransaction.h"
#import "Budget.h"

@implementation CreditCardTransaction
- (void) spend {
    [super trackSpending:[amount doubleValue]];
    [budget charge:amount];
}
@end
