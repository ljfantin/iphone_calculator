//
//  ViewController.h
//  Calculator
//
//  Created by Leandro Fantin on 08/07/14.
//  Copyright (c) 2014 mercadolibre. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (nonatomic,retain) IBOutlet UITextField * textFieldResult;
- (IBAction)pushButton9:(id)sender;
- (IBAction)pushButton8:(id)sender;
- (IBAction)pushButton7:(id)sender;
- (IBAction)pushButton6:(id)sender;
- (IBAction)pushButton5:(id)sender;
- (IBAction)pushButton4:(id)sender;
- (IBAction)pushButton3:(id)sender;
- (IBAction)pushButton2:(id)sender;
- (IBAction)pushButton1:(id)sender;
- (IBAction)pushButton0:(id)sender;
- (IBAction)pushButtonPlus:(id)sender;
- (IBAction)pushButtonMinus:(id)sender;
- (IBAction)pushButtonDiv:(id)sender;
- (IBAction)pushButtonMul:(id)sender;
- (IBAction)pushButtonDot:(id)sender;
- (IBAction)pushButtonEqual:(id)sender;
- (IBAction)pushButtonC:(id)sender;
@end
