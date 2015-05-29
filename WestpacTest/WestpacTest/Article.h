//
//  Article.h
//  WestpacTest
//
//  Created by Paulo Pão on 27/05/15.
//  Copyright (c) 2015 Paulo Pão. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Article : NSObject

@property (strong, nonatomic)NSString *aTitle;
@property (strong, nonatomic)NSString *aDescription;
@property (strong, nonatomic)NSString *aUrl;
@property (strong, nonatomic)NSString *aImage;
@property (strong, nonatomic)NSString *aDate;

- (id)initWithTitle:(NSString *)title description:(NSString *)description url:(NSString *)url image:(NSString *)image date:(NSString *)date;

@end
