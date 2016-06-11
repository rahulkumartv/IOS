//
//  ViewController.h
//  RPMCalculator
//
//  Created by Rahul Kumar on 20/04/16.
//  Copyright © 2016 Rahul Kumar. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "RPMBrain.h"
@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *calcDisplay;
@property (nonatomic) RPMBrain* calcBrain;

@end

