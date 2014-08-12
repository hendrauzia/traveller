//
//  main.m
//  Traveller
//
//  Created by Hendra Uzia on 8/7/14.
//  Copyright (c) 2014 Hendra Uzia. All rights reserved.
//

#import <Foundation/Foundation.h>
struct budget {
    float exchangeRate;
    double budget;
    double euroTransaction;
};

int main(int argc, const char * argv[])
{
    struct budget vacation;
    vacation.exchangeRate = 1.2500;
    vacation.budget = 1000.00;
    
    vacation.budget -= 100;
    NSLog(@"Converting 100 US dollars into euros leaves $%.2f", vacation.budget);
    
    vacation.euroTransaction = 100 * vacation.exchangeRate;
    vacation.budget -= vacation.euroTransaction;
    NSLog(@"Charging 100 euros leaves $%.2f", vacation.budget);

    return 0;
}
