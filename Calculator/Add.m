//
//  Add.m
//  Calculator
//
//  Created by Leandro Fantin on 08/07/14.
//  Copyright (c) 2014 mercadolibre. All rights reserved.
//

#import "Add.h"

@implementation Add


- (NSDecimalNumber *) doOperation:(NSDecimalNumber *) firstOperand secondOperand:(NSDecimalNumber *) secondOperand   {
    
    return [firstOperand decimalNumberByAdding:secondOperand];
}

@end