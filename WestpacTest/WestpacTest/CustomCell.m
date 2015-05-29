//
//  CustomCell.m
//  WestpacTest
//
//  Created by Paulo Pão on 28/05/15.
//  Copyright (c) 2015 Paulo Pão. All rights reserved.
//

#import "CustomCell.h"

@implementation CustomCell

- (void)updateLabelConstraints{
    
//    [UIView animateWithDuration:0.5 animations:^{
        [self.titleLeftConstraint setConstant:0];
        [self.descriptionLeftConstraint setConstant:0];
//    }];
    
}

- (void)maintainLabelConstraints{
    
    [self.titleLeftConstraint setConstant:98];
    [self.descriptionLeftConstraint setConstant:98];
    
}

@end
