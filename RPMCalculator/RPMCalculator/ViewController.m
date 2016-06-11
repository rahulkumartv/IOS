//
//  ViewController.m
//  RPMCalculator
//
//  Created by Rahul Kumar on 20/04/16.
//  Copyright © 2016 Rahul Kumar. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
- (IBAction)clickButton:(UIButton*)sender {
    
    NSString *text = _calcDisplay.text;
    _calcDisplay.text = [text stringByAppendingString:sender.currentTitle];
    NSInteger number = [_calcDisplay.text integerValue];
    _calcDisplay.text = [NSString stringWithFormat:@"%ld", (long)number];
}
- (IBAction)operation:(UIButton*)sender {
    double result = [_calcBrain performOperatiom:sender.currentTitle];
    _calcDisplay.text = @(result).stringValue;
}
- (IBAction)enterButton {
    [_calcBrain pushOperand:[_calcDisplay.text doubleValue]];
    _calcDisplay.text = @(0).stringValue;
}
- (void)viewDidLoad{
    _calcBrain = [[RPMBrain alloc] init];
}

@end
