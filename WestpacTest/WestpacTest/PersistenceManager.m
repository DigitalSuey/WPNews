//
//  PersistenceManager.m
//  WestpacTest
//
//  Created by Paulo Pão on 27/05/15.
//  Copyright (c) 2015 Paulo Pão. All rights reserved.
//

#import "PersistenceManager.h"

@implementation PersistenceManager

- (id)init{
    
    self = [super init];
    if (self) {

        articles = [NSMutableArray array];
        
    }
    return self;
}

- (NSArray *)getArticles{
    
    return articles;
    
}

- (void)addArticle:(Article *)article atIndex:(int)index{
    
    if (articles.count >= index) {
        
        [articles insertObject:article atIndex:index];
        
    } else {
        
        [articles addObject:article];
        
    }
}

- (void)deleteArticles{
    [articles removeAllObjects];
}

@end
