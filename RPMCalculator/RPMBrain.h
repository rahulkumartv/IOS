//
//  RPMBrain.h
//  RPMCalculator
//
//  Created by epita on 04/05/16.
//  Copyright © 2016 Rahul Kumar. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface RPMBrain : NSObject
@property(nonatomic,retain) NSMutableArray *operandArray;
-(void) pushOperand:(double)operators;
-(double) performOperatiom:(NSString*)operand;
@end
