//
//  CustomCell.h
//  WestpacTest
//
//  Created by Paulo Pão on 28/05/15.
//  Copyright (c) 2015 Paulo Pão. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UIImageView *thumbnailImageView;
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UILabel *descriptionLabel;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *titleLeftConstraint;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *descriptionLeftConstraint;

- (void)updateLabelConstraints;
- (void)maintainLabelConstraints;

@end
