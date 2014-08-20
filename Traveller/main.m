//
//  main.m
//  Traveller
//
//  Created by Hendra Uzia on 8/7/14.
//  Copyright (c) 2014 Hendra Uzia. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Budget.h"
#import "Transaction.h"

int main(int argc, const char * argv[]) {
    Transaction *dollarsInEurope = [Transaction new];
    [dollarsInEurope create:100 ofType:cash];
    
    Transaction *anotherDollarsInEurope = [Transaction new];
    [anotherDollarsInEurope create:200 ofType:cash];

    Transaction *chargedInEurope = [Transaction new];
    [chargedInEurope create:100 ofType:charge];
    
    NSArray *europeTransactions = @[dollarsInEurope, anotherDollarsInEurope, chargedInEurope];

    Budget *europe = [Budget new];
    [europe setBudget:@1000.00 withRate:@1.2500];
    
    for (Transaction *transaction in europeTransactions) {
        switch([transaction type]) {
            case cash:
                [europe spend:[transaction amount]];
                break;
            case charge:
                [europe charge:[transaction amount]];
                break;
        }
    }

    Transaction *dollarsInEngland = [Transaction new];
    [dollarsInEngland create:100 ofType:cash];
    
    Transaction *chargedInEngland = [Transaction new];
    [chargedInEngland create:100 ofType:charge];

    Budget *england = [Budget new];
    [england setBudget:@2000.00 withRate:@1.5000];
    [england spend:[dollarsInEngland amount]];
    [england charge:[chargedInEngland amount]];

    return 0;
}
