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
    
    NSDecimalNumber * result = [_addOperation doOperation:firstOperand secondOperand:secondOperand];
    NSLog(@"ADD[op1 = %@, op2=%@] = %@",firstOperand,secondOperand,result);
    return result;
}

- (NSDecimalNumber *) sub:(NSDecimalNumber *) firstOperand secondOperand:(NSDecimalNumber *) secondOperand    {
    NSDecimalNumber * result = [_subOperation doOperation:firstOperand secondOperand:secondOperand];
    NSLog(@"SUB[op1 = %@, op2=%@] = %@",firstOperand,secondOperand,result);
    return result;
}

- (NSDecimalNumber *) div:(NSDecimalNumber *) firstOperand secondOperand:(NSDecimalNumber *) secondOperand    {
    NSDecimalNumber * result = [_divOperation doOperation:firstOperand secondOperand:secondOperand];
    NSLog(@"DIV[op1 = %@, op2=%@] = %@",firstOperand,secondOperand,result);
    return result;
}

- (NSDecimalNumber *) mul:(NSDecimalNumber *) firstOperand secondOperand:(NSDecimalNumber *) secondOperand    {
    NSDecimalNumber * result = [_mulOperation doOperation:firstOperand secondOperand:secondOperand];
    NSLog(@"MUL[op1 = %@, op2=%@] = %@",firstOperand,secondOperand,result);
    return result;
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
