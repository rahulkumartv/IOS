//
//  RPMBrain.m
//  RPMCalculator
//
//  Created by epita on 04/05/16.
//  Copyright © 2016 Rahul Kumar. All rights reserved.
//

#import "RPMBrain.h"

@implementation RPMBrain
@synthesize operandArray =_operandArray;
-(NSMutableArray *)operandArray{
    if(!_operandArray)
    {
        _operandArray = [[NSMutableArray alloc] init];
    }
    return _operandArray;
}
-(void)setOprandArray:(NSMutableArray *)operandArray
{
    self.operandArray = operandArray;
}
-(void) pushOperand:(double)numbers
{
    [self.operandArray addObject:[NSNumber numberWithDouble:numbers]];
}
-(double) performOperatiom:(NSString *)operation
{
    if( self.operandArray == nil || [self.operandArray count] == 0 )
    {
        return 0;
    }
    NSNumber* calcRes = [self.operandArray objectAtIndex:0];
    [self.operandArray removeObjectAtIndex:0];
    if([operation isEqualToString:@"+"]){
        while([self.operandArray count] > 0 )
        {
            calcRes =[NSNumber numberWithDouble:[calcRes doubleValue] + [[self.operandArray objectAtIndex:0] doubleValue]];
            [self.operandArray removeObjectAtIndex:0];
        }
        
    }
    else if ([operation isEqualToString:@"-"]){
        while([self.operandArray count] > 0 )
        {
            calcRes =[NSNumber numberWithDouble:[calcRes doubleValue] - [[self.operandArray objectAtIndex:0] doubleValue]];
            [self.operandArray removeObjectAtIndex:0];
        }
    }
    else if ([operation isEqualToString:@"*"]){
        while([self.operandArray count] > 0 )
        {
            calcRes =[NSNumber numberWithDouble:[calcRes doubleValue] * [[self.operandArray objectAtIndex:0] doubleValue]];
            [self.operandArray removeObjectAtIndex:0];
        }
        
    }
    else if ([operation isEqualToString:@"/"]){
        while([self.operandArray count] > 0 )
        {
            calcRes =[NSNumber numberWithDouble:[calcRes doubleValue] / [[self.operandArray objectAtIndex:0] doubleValue]];
            [self.operandArray removeObjectAtIndex:0];
        }
    }
    else{
        return 0;
    }
    return calcRes.doubleValue;
}

@end
