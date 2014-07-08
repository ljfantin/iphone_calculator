//
//  CalculatorTests.m
//  CalculatorTests
//
//  Created by Leandro Fantin on 08/07/14.
//  Copyright (c) 2014 mercadolibre. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "Calculator.h"


@interface CalculatorTests : XCTestCase {

Calculator * _calculator;
}
@end

@implementation CalculatorTests

+ (void) setUp {
    
}

- (void)setUp
{
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
    _calculator = [[Calculator alloc] init];
}

- (void)tearDown
{
    [_calculator release];
    _calculator = nil;
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}


- (void)testAdd
{
    NSDecimalNumber * operator1 = [NSDecimalNumber decimalNumberWithString:@"15"];
    NSDecimalNumber * operator2 = [NSDecimalNumber decimalNumberWithString:@"10"];
    
    NSDecimalNumber * result = [_calculator add:operator1 secondOperand:operator2];
    NSDecimalNumber * resultExpected = [NSDecimalNumber decimalNumberWithString:@"25"];
    
    XCTAssertEqualObjects(result, resultExpected, @"La operacion suma devuelve un valor incorrecto");
    
    //[operator1 release];
    //[operator2 release];
    //[result release];
    //[resultExpected release];
}


- (void)testSub
{
    NSDecimalNumber * operator1 = [NSDecimalNumber decimalNumberWithString:@"15"];
    NSDecimalNumber * operator2 = [NSDecimalNumber decimalNumberWithString:@"10"];
    
    NSDecimalNumber * result = [_calculator sub:operator1 secondOperand:operator2];
    NSDecimalNumber * resultExpected = [NSDecimalNumber decimalNumberWithString:@"5"];
    
    XCTAssertEqualObjects(result, resultExpected, @"La operacion sub devuelve un valor incorrecto");
    
    //[operator1 release];
    //[operator2 release];
    //[result release];
    //[resultExpected release];
}

- (void)testDiv
{
    NSDecimalNumber * operator1 = [NSDecimalNumber decimalNumberWithString:@"15"];
    NSDecimalNumber * operator2 = [NSDecimalNumber decimalNumberWithString:@"10"];
    
    NSDecimalNumber * result = [_calculator div:operator1 secondOperand:operator2];
    NSDecimalNumber * resultExpected = [NSDecimalNumber decimalNumberWithString:@"1.5"];
    
    XCTAssertEqualObjects(result, resultExpected, @"La operacion div devuelve un valor incorrecto");
    
    //[operator1 release];
    //[operator2 release];
    //[result release];
    //[resultExpected release];
}

- (void)testMul
{
    NSDecimalNumber * operator1 = [NSDecimalNumber decimalNumberWithString:@"15"];
    NSDecimalNumber * operator2 = [NSDecimalNumber decimalNumberWithString:@"10"];
    
    NSDecimalNumber * result = [_calculator mul:operator1 secondOperand:operator2];
    NSDecimalNumber * resultExpected = [NSDecimalNumber decimalNumberWithString:@"150"];
    
    XCTAssertEqualObjects(result, resultExpected, @"La operacion mul devuelve un valor incorrecto");
    
    //[operator1 release];
    //[operator2 release];
    //[result release];
    //[resultExpected release];
}

@end
