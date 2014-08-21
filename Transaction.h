//
//  Transaction.h
//  Traveller
//
//  Created by Hendra Uzia on 8/19/14.
//  Copyright (c) 2014 Hendra Uzia. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Budget.h"

@interface Transaction : NSObject {
    Budget *budget;
    NSNumber *amount;
}

- (void) create: (double) amountValue for: (Budget*) budgetValue;
- (void) spend;
- (void) trackSpending: (double) amountValue;

@end
