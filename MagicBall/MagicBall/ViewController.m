//
//  ViewController.m
//  MagicBall
//
//  Created by epita on 11/05/16.
//  Copyright © 2016 epita. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
- (IBAction)generateMagic:(id)sender {
    _magicLabel.text = _magicBrain.GenerateAnswer;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    _magicBrain = [[MagicBallBrain alloc] init];
    // Do any additional setup after loading the view, typically from a nib.
    [_magicImage setImage:[UIImage imageNamed:@"magic.jpg"]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
