//
//  main.m
//  Traveller
//
//  Created by Video One on 8/7/14.
//  Copyright (c) 2014 Hendra Uzia. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
    float exchangeRate = 1.2500;
    double budget = 1000.00;
    double euroTransaction;
    
    budget -= 100;
    
    NSLog(@"Converting 100 US dollars into euros leaves $%1.2f", budget);
    euroTransaction = 100*exchangeRate;
    budget -= euroTransaction;
    
    NSLog(@"Charging 100 euros leaves $%.2f", budget);
    
    return 0;
}
