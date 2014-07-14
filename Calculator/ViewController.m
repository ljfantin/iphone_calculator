//
//  ViewController.m
//  Calculator
//
//  Created by Leandro Fantin on 08/07/14.
//  Copyright (c) 2014 mercadolibre. All rights reserved.
//

#import "ViewController.h"
#import "Calculator.h"

@interface ViewController ()

    @property (nonatomic,retain) Calculator * calculator;
    @property (nonatomic,retain) NSDecimalNumber * operando1;
    @property (nonatomic,retain) NSDecimalNumber * operando2;
    @property (nonatomic,retain) NSDecimalNumber * lastResult;
    @property (nonatomic,retain) NSMutableString * textFieldValue;
    @property (nonatomic,retain) NSNumberFormatter * formatter;

    typedef NS_ENUM(NSInteger, OPERATION_TYPE) { ADD, SUB, MUL, DIV};
    @property OPERATION_TYPE lastOperation;

@end

@implementation ViewController

/*- (id)init
{
    self = [super init];
    if (self!=nil)   {
            }
    return self;
}*/

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.calculator = [[Calculator alloc] init];
    self.textFieldValue = [[NSMutableString alloc] init];
    self.formatter = [[NSNumberFormatter alloc] init];
    [self.formatter setNumberStyle:NSNumberFormatterDecimalStyle];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void)orientationChanged:(NSNotification *)notification
{
    //UIDeviceOrientation deviceOrientation = [UIDevice currentDevice].orientation;
    //NSLog(@"Orientacion %@",deviceOrientation);
    /*if (UIDeviceOrientationIsLandscape(deviceOrientation) &&
        !isShowingLandscapeView)
    {
        [self performSegueWithIdentifier:@"DisplayAlternateView" sender:self];
        isShowingLandscapeView = YES;
    }
    else if (UIDeviceOrientationIsPortrait(deviceOrientation) &&
             isShowingLandscapeView)
    {
        [self dismissViewControllerAnimated:YES completion:nil];
        isShowingLandscapeView = NO;
    }*/
}

- (IBAction)pushButton9:(id)sender  {
    NSLog(@"Button 9");
    [self.textFieldValue appendString:@"9"];
    self.textFieldResult.text = self.textFieldValue;
}

- (IBAction)pushButton8:(id)sender  {
    NSLog(@"Button 8");
    [self.textFieldValue appendString:@"8"];
    self.textFieldResult.text = self.textFieldValue;
}

- (IBAction)pushButton7:(id)sender {
    NSLog(@"Button 7");
    [self.textFieldValue appendString:@"7"];
    self.textFieldResult.text = self.textFieldValue;
}

- (IBAction)pushButton6:(id)sender {
    NSLog(@"Button 6");
    [self.textFieldValue appendString:@"6"];
    self.textFieldResult.text = self.textFieldValue;
}

- (IBAction)pushButton5:(id)sender  {
    NSLog(@"Button 5");
    [self.textFieldValue appendString:@"5"];
    self.textFieldResult.text = self.textFieldValue;
}

- (IBAction)pushButton4:(id)sender {
    NSLog(@"Button 4");
    [self.textFieldValue appendString:@"4"];
    self.textFieldResult.text = self.textFieldValue;
}

- (IBAction)pushButton3:(id)sender {
    NSLog(@"Button 3");
    [self.textFieldValue appendString:@"3"];
    self.textFieldResult.text = self.textFieldValue;
}

- (IBAction)pushButton2:(id)sender {
    NSLog(@"Button 2");
    [self.textFieldValue appendString:@"2"];
    self.textFieldResult.text = self.textFieldValue;
}

- (IBAction)pushButton1:(id)sender {
    NSLog(@"Button 1");
    [self.textFieldValue appendString:@"1"];
    self.textFieldResult.text = self.textFieldValue;
}

- (IBAction)pushButton0:(id)sender {
    NSLog(@"Button 0");
    [self.textFieldValue appendString:@"0"];
    self.textFieldResult.text = self.textFieldValue;
}

- (IBAction)pushButtonPlus:(id)sender {
    NSLog(@"Button Plus");
    [self handleOperation];
    self.lastOperation = ADD;
}

- (IBAction)pushButtonMinus:(id)sender {
    NSLog(@"Button Minus");
    [self handleOperation];
    self.lastOperation = SUB;
}

- (IBAction)pushButtonDiv:(id)sender {
    NSLog(@"Button Div");
    [self handleOperation];
    self.lastOperation = DIV;
}

- (IBAction)pushButtonMul:(id)sender {
    NSLog(@"Button Mul");
    [self handleOperation];
    self.lastOperation = MUL;
}

- (void) handleOperation    {
    if (self.operando1 == nil)    {
        //seteo el op 1
        self.operando1 = [NSDecimalNumber decimalNumberWithString:self.textFieldResult.text];
        //limpio el text field
        [self.textFieldValue setString:@""];
        //self.textFieldResult.text = self.textFieldValue;
    }
    else {
        if ([self.textFieldValue length] != 0) {
            //seteo el op 2
            self.operando2 = [NSDecimalNumber decimalNumberWithString:self.textFieldValue];
            switch (self.lastOperation) {
                
                case ADD:self.lastResult = [self.calculator add:_operando1 secondOperand:_operando2]; break;
                case DIV:self.lastResult = [self.calculator div:_operando1 secondOperand:_operando2]; break;
                case MUL:self.lastResult = [self.calculator mul:_operando1 secondOperand:_operando2]; break;
                case SUB:self.lastResult = [self.calculator sub:_operando1 secondOperand:_operando2]; break;
                
            }
            self.operando1 = self.lastResult;
            //le seteo
            [self.textFieldValue setString:@""];
            self.textFieldResult.text = [self.formatter stringFromNumber:self.lastResult];
        }
    }
}

- (IBAction)pushButtonDot:(id)sender {
    NSLog(@"Button Dot");
    [self.textFieldValue appendString:@"."];
    self.textFieldResult.text = self.textFieldValue;
}

- (IBAction)pushButtonEqual:(id)sender{
    NSLog(@"Button Equal");
    [self handleOperation];
    self.operando1 = nil;
}

- (IBAction)pushButtonC:(id)sender{
    NSLog(@"Button Equal");
    //if ([self.operando1 retainCount]>0)
    //    [self.operando1 retain];
    self.operando1 = nil;
    [self.textFieldValue setString:@""];
    self.textFieldResult.text = self.textFieldValue;
}

- (void)dealloc    {

    if (self.calculator!=nil)   {
        [self.calculator release];
    }
    
    if (self.textFieldValue!=nil)   {
        [self.textFieldValue release];
    }
    
    if (self.formatter!=nil)    {
        [self.formatter release];
    }
    
    [super dealloc];
}

@end
