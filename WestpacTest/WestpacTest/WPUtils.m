//
//  WPUtils.m
//  WestpacTest
//
//  Created by Paulo Pão on 28/05/15.
//  Copyright (c) 2015 Paulo Pão. All rights reserved.
//

#import "WPUtils.h"
#import "Article.h"

@implementation WPUtils

- (NSArray *)sortArrayByDates:(NSMutableArray *)array{
    
    NSSortDescriptor *sortDescriptor = [[NSSortDescriptor alloc] initWithKey:@"date" ascending:TRUE];
    [array sortUsingDescriptors:[NSArray arrayWithObject:sortDescriptor]];
    
    return array;
}

@end
