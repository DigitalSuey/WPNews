//
//  ViewController.h
//  WestpacTest
//
//  Created by Paulo Pão on 27/05/15.
//  Copyright (c) 2015 Paulo Pão. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITableView *tableView;

- (IBAction)refreshPressed:(id)sender;

@end

