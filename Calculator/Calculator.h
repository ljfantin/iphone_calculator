//
//  Calculator.h
//  Calculator
//
//  Created by Leandro Fantin on 08/07/14.
//  Copyright (c) 2014 mercadolibre. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Add.h"
#import "Sub.h"
#import "Mul.h"
#import "Div.h"

@interface Calculator : NSObject    {
    Add * _addOperation;
    Sub * _subOperation;
    Div * _divOperation;
    Mul * _mulOperation;
}

//@property (nonatomic,retain) Add * addOperation;
//@property (nonatomic,retain) Sub * subOperation;
//@property (nonatomic,retain) Mul * divOperation;
//@property (nonatomic,retain) Div * mulOperation;


- (NSDecimalNumber *) add:(NSDecimalNumber *) firstOperand secondOperand:(NSDecimalNumber *) secondOperand;
- (NSDecimalNumber *) sub:(NSDecimalNumber *) firstOperand secondOperand:(NSDecimalNumber *) secondOperand;
- (NSDecimalNumber *) div:(NSDecimalNumber *) firstOperand secondOperand:(NSDecimalNumber *) secondOperand;
- (NSDecimalNumber *) mul:(NSDecimalNumber *) firstOperand secondOperand:(NSDecimalNumber *) secondOperand;

@end
