//
//  main.m
//  Traveller
//
//  Created by Hendra Uzia on 8/7/14.
//  Copyright (c) 2014 Hendra Uzia. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef struct {
    float rate;
    double budget;
    double transaction;
} budget;

budget europe;
budget england;

void spend(budget *myBudget, double dollars);
void charge(budget *myBudget, double currency);

int main(int argc, const char * argv[]) {
    europe.rate = 1.2500;
    europe.budget = 1000.00;
    double dollarsInEurope = 100;
    double euros = 100;
    
    england.rate = 1.5000;
    england.budget = 2000.00;
    double dollarsInEngland = 100;
    double pounds = 100;
    
    
    spend(&europe, dollarsInEurope);
    NSLog(@"Converting $%.2f US dollars into euros leaves $%.2f", dollarsInEurope, europe.budget);
    
    charge(&europe, euros);
    NSLog(@"Charging €%.2f euros leaves $%.2f", euros, europe.budget);
    
    spend(&england, dollarsInEngland);
    NSLog(@"Converting $%.2f US dollars into pounds leaves $%.2f", dollarsInEngland, england.budget);
    
    charge(&england, pounds);
    NSLog(@"Charging €%.2f pounds leaves $%.2f", pounds, england.budget);
    
    return 0;
}

void spend(budget *myBudget, double dollars) {
    myBudget->budget -= dollars;
}

void charge(budget *myBudget, double currency) {
    myBudget->transaction = currency * myBudget->rate;
    myBudget->budget -= myBudget->transaction;
}
