//
//  CashTransaction.m
//  Traveller
//
//  Created by Hendra Uzia on 8/20/14.
//  Copyright (c) 2014 Hendra Uzia. All rights reserved.
//

#import "CashTransaction.h"

@implementation CashTransaction
- (void) spend {
    [self trackSpending:[amount doubleValue]];
    [budget spend:amount];
}
@end
