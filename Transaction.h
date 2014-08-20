//
//  Transaction.h
//  Traveller
//
//  Created by Hendra Uzia on 8/19/14.
//  Copyright (c) 2014 Hendra Uzia. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum {cash, charge} transactionType;

@interface Transaction : NSObject {
    transactionType type;
    NSNumber *amount;
}

- (void) create: (double) theAmount ofType: (transactionType) aType;
- (NSNumber *) amount;
- (transactionType) type;

@end
