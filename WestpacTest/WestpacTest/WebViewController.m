//
//  WebViewController.m
//  WestpacTest
//
//  Created by Paulo Pão on 28/05/15.
//  Copyright (c) 2015 Paulo Pão. All rights reserved.
//

#import "WebViewController.h"
#import <MBProgressHUD.h>

@interface WebViewController () <UIWebViewDelegate>

@end

@implementation WebViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.webView.delegate = self;
    
    NSURL *url = [NSURL URLWithString:self.url];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    [MBProgressHUD showHUDAddedTo:self.view animated:YES];
    [self.webView loadRequest:request];
    
}

#pragma mark - UIWebViewDelegate

-(void)webView:(UIWebView *)webView didFailLoadWithError:(NSError *)error{
    NSLog(@"ERROR LOADING: %@", error);
    [MBProgressHUD hideAllHUDsForView:self.view animated:YES];
    [self failedLoadArticles];
}

-(void)webViewDidStartLoad:(UIWebView *)webView{
    NSLog(@"STARTED LOADING");
}

-(void)webViewDidFinishLoad:(UIWebView *)webView{
    NSLog(@"FINISHED LOADING");
    [MBProgressHUD hideAllHUDsForView:self.view animated:YES];
}

- (void)failedLoadArticles{
    
    [[NSNotificationCenter defaultCenter]removeObserver:self];
    
    if(NSClassFromString(@"UIAlertController")) {
        
        UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"Connection failed" message:@"Failed to retrieve data." preferredStyle:UIAlertControllerStyleAlert];
        
        UIAlertAction* defaultAction = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:^(UIAlertAction * action) {
            [alert dismissViewControllerAnimated:YES completion:nil];
        }];
        
        [alert addAction:defaultAction];
        [self presentViewController:alert animated:YES completion:nil];
        
    }else{
        
        UIAlertView *alert = [[UIAlertView alloc]
                              initWithTitle:@"Connection failed"
                              message: @"Failed to retrieve data."
                              delegate:nil
                              cancelButtonTitle:@"OK"
                              otherButtonTitles:nil];
        
        [alert show];
    }
}

@end
