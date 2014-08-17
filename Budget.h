//
//  Budget.h
//  Traveller
//
//  Created by Hendra Uzia on 8/18/14.
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
