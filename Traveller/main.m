//
//  main.m
//  Traveller
//
//  Created by Hendra Uzia on 8/7/14.
//  Copyright (c) 2014 Hendra Uzia. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Budget.h"
#import "CashTransaction.h"
#import "CreditCardTransaction.h"

int main(int argc, const char * argv[]) {
    Budget *europe = [Budget new];
    [europe setBudget:@1000.00 withRate:@1.2500];

    CashTransaction *dollarsInEurope = [CashTransaction new];
    [dollarsInEurope create:100 for:europe];
    
    CashTransaction *anotherDollarsInEurope = [CashTransaction new];
    [anotherDollarsInEurope create:200 for:europe];

    CreditCardTransaction *chargedInEurope = [CreditCardTransaction new];
    [chargedInEurope create:100 for:europe];
    
    NSArray *europeTransactions = @[dollarsInEurope, anotherDollarsInEurope, chargedInEurope];
    
    for (Transaction *transaction in europeTransactions) {
        [transaction spend];
    }
    
    NSLog(@"\n");

    Budget *england = [Budget new];
    [england setBudget:@2000.00 withRate:@1.5000];
    
    CashTransaction *dollarsInEngland = [CashTransaction new];
    [dollarsInEngland create:100 for:england];
    
    CreditCardTransaction *chargedInEngland = [CreditCardTransaction new];
    [chargedInEngland create:100 for:england];

    [dollarsInEngland spend];
    [chargedInEngland spend];

    return 0;
}
