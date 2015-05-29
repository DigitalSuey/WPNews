//
//  WebViewController.h
//  WestpacTest
//
//  Created by Paulo Pão on 28/05/15.
//  Copyright (c) 2015 Paulo Pão. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WebViewController : UIViewController

@property (strong, nonatomic)NSString *url;
@property (weak, nonatomic) IBOutlet UIWebView *webView;

@end
