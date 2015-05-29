//
//  PersistenceManager.h
//  WestpacTest
//
//  Created by Paulo Pão on 27/05/15.
//  Copyright (c) 2015 Paulo Pão. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Article.h"

@interface PersistenceManager : NSObject{
    
    NSMutableArray *articles;
    
}

- (NSArray*)getArticles;
- (void)addArticle:(Article *)article atIndex:(int)index;
- (void)deleteArticles;

@end
