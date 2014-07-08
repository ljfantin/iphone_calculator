//
//  Div.m
//  Calculator
//
//  Created by Leandro Fantin on 08/07/14.
//  Copyright (c) 2014 mercadolibre. All rights reserved.
//

#import "Div.h"

@implementation Div

- (NSDecimalNumber *) doOperation:(NSDecimalNumber *) firstOperand secondOperand:(NSDecimalNumber *) secondOperand   {
    
    return [firstOperand decimalNumberByDividingBy:secondOperand];
}

@end
