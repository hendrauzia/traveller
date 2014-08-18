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
    Budget *europe = [Budget new];
    Budget *england = [Budget new];

    [europe setBudget:@1000.00 withRate:@1.2500];
    NSNumber *dollarsInEurope = @100;
    NSNumber *euros = @100;
    
    [england setBudget:@2000.00 withRate:@1.5000];
    NSNumber *dollarsInEngland = @100;
    NSNumber *pounds = @100;
    
    [europe spend:dollarsInEurope];
    [europe charge:euros];

    [england spend:dollarsInEngland];
    [england charge:pounds];
    
    return 0;
}
