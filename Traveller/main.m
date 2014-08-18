//
//  main.m
//  Traveller
//
//  Created by Hendra Uzia on 8/7/14.
//  Copyright (c) 2014 Hendra Uzia. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Budget.h"

int main(int argc, const char * argv[]) {
    NSNumber *pounds = @100;
    NSNumber *euros = @100;
    NSNumber *dollarsInEngland = @100;

    NSNumber *dollarsInEurope = @100;
    NSNumber *anotherDollarsInEurope = @200;
    NSMutableArray *europeTransactions = [[NSMutableArray alloc] initWithCapacity:1 ];
    
    [europeTransactions addObject:dollarsInEurope];
    [europeTransactions addObject:anotherDollarsInEurope];
    
    Budget *europe = [Budget new];
    [europe setBudget:@1000.00 withRate:@1.2500];
    [europe charge:euros];
    for (NSNumber *transaction in europeTransactions) {
        [europe spend:transaction];
    }

    Budget *england = [Budget new];
    [england setBudget:@2000.00 withRate:@1.5000];
    [england spend:dollarsInEngland];
    [england charge:pounds];
    
    return 0;
}
