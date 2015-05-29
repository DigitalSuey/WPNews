//
//  WPClient.h
//  WestpacTest
//
//  Created by Paulo Pão on 27/05/15.
//  Copyright (c) 2015 Paulo Pão. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface WPClient : NSObject

@property (nonatomic, copy) void (^completionHandler)(void);

- (void)getArticles;

@end
