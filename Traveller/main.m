//
//  main.m
//  Traveller
//
//  Created by Hendra Uzia on 8/7/14.
//  Copyright (c) 2014 Hendra Uzia. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef struct {
    float exchangeRate;
    double budget;
    double euroTransaction;
} budget;

budget vacation;

void spendDollars(double dollars) {
    vacation.budget -= dollars;
}

void chargeEuros(double euros) {
    vacation.euroTransaction = euros * vacation.exchangeRate;
    vacation.budget -= vacation.euroTransaction;
}

int main(int argc, const char * argv[]) {
    vacation.exchangeRate = 1.2500;
    vacation.budget = 1000.00;
    double numberDollars = 100;
    double numberEuros = 100;
    
    spendDollars(numberDollars);
    NSLog(@"Converting $%.2f US dollars into euros leaves $%.2f", numberDollars, vacation.budget);
    
    chargeEuros(numberEuros);
    NSLog(@"Charging €%.2f euros leaves $%.2f", numberEuros, vacation.budget);
    
    return 0;
}
