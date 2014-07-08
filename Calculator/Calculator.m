//
//  Calculator.m
//  Calculator
//
//  Created by Leandro Fantin on 08/07/14.
//  Copyright (c) 2014 mercadolibre. All rights reserved.
//

#import "Calculator.h"

@implementation Calculator

- (id)init  {
    self=[super init];
    if (self) {
		_addOperation = [[Add alloc] init];
        _subOperation = [[Sub alloc] init];
        _divOperation = [[Div alloc] init];
        _mulOperation = [[Mul alloc] init];
	}
    return self;
}

- (NSDecimalNumber *) add:(NSDecimalNumber *) firstOperand secondOperand:(NSDecimalNumber *) secondOperand    {
    return [_addOperation doOperation:firstOperand secondOperand:secondOperand];
}

- (NSDecimalNumber *) sub:(NSDecimalNumber *) firstOperand secondOperand:(NSDecimalNumber *) secondOperand    {
    return [_subOperation doOperation:firstOperand secondOperand:secondOperand];
}

- (NSDecimalNumber *) div:(NSDecimalNumber *) firstOperand secondOperand:(NSDecimalNumber *) secondOperand    {
    return [_divOperation doOperation:firstOperand secondOperand:secondOperand];
}

- (NSDecimalNumber *) mul:(NSDecimalNumber *) firstOperand secondOperand:(NSDecimalNumber *) secondOperand    {
    return [_mulOperation doOperation:firstOperand secondOperand:secondOperand];
}

- (void) dealloc {
    [_addOperation release];
    _addOperation = nil;
    [_divOperation release];
    _divOperation = nil;
    [_mulOperation release];
    _mulOperation = nil;
    [_subOperation release];
    _subOperation = nil;
    [super dealloc];
}

@end
