//
//  Budget.h
//  Traveller
//
//  Created by Hendra Uzia on 8/18/14.
//  Copyright (c) 2014 Hendra Uzia. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Budget : NSObject {
    NSNumber *budget;
    NSNumber *rate;
    NSNumber *transaction;
}

- (void) setBudget: (NSNumber*) budgetValue withRate: (NSNumber*) rateValue;
- (void) spend: (NSNumber*) dollars;
- (void) charge: (NSNumber*) currency;
@end
