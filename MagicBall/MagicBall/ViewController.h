//
//  ViewController.h
//  MagicBall
//
//  Created by epita on 11/05/16.
//  Copyright © 2016 epita. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MagicBallBrain.h"
@interface ViewController : UIViewController
@property (nonatomic) MagicBallBrain* magicBrain;
@property (weak, nonatomic) IBOutlet UILabel *magicLabel;
@property (weak, nonatomic) IBOutlet UIImageView *magicImage;

@end

