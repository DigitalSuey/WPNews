//
//  WPClient.m
//  WestpacTest
//
//  Created by Paulo Pão on 27/05/15.
//  Copyright (c) 2015 Paulo Pão. All rights reserved.
//

#import "WPClient.h"

@implementation WPClient

static NSString *const endpoint = @"http://mobilatr.mob.f2.com.au/services/views/9.json";

- (void)getArticles{
    
    NSURL *url = [NSURL URLWithString:endpoint];
    
    dispatch_async(dispatch_get_main_queue(), ^{
        
        [NSURLConnection sendAsynchronousRequest:[[NSURLRequest alloc] initWithURL:url] queue:[[NSOperationQueue alloc] init] completionHandler:^(NSURLResponse *response, NSData *data, NSError *error) {
            
            if (error) {
                
                NSLog(@"Failed to load JSON");
                [[NSNotificationCenter defaultCenter] postNotificationName:@"loadFailure" object:self];
                
            } else {
                
                NSLog(@"Successfully loaded JSON");
                NSMutableDictionary *dictionary = [NSJSONSerialization JSONObjectWithData:data options:0 error:&error];
                
                [[NSNotificationCenter defaultCenter] postNotificationName:@"loadSuccess" object:self userInfo:dictionary];
                
            }
        }];
    });
}

@end
