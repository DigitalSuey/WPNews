//
//  Library.m
//  WestpacTest
//
//  Created by Paulo Pão on 27/05/15.
//  Copyright (c) 2015 Paulo Pão. All rights reserved.
//

#import "Library.h"
#import "PersistenceManager.h"
#import "WPClient.h"

@interface Library () {
    
    PersistenceManager *persistenceManager;
    WPClient *client;

}

@end

@implementation Library

+ (Library *)sharedInstance{
    
    static Library *_sharedInstance = nil;
    static dispatch_once_t oncePredicate;
    
    dispatch_once(&oncePredicate, ^{
        _sharedInstance = [[Library alloc] init];
    });
    return _sharedInstance;
    
}

- (id)init{
    
    self = [super init];
    if (self) {
        persistenceManager = [[PersistenceManager alloc] init];
        client = [[WPClient alloc] init];
    }
    return self;
    
}

- (void)loadArticles{
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(loadedArticles:) name:@"loadSuccess" object:nil];
    [persistenceManager deleteArticles];
    [client getArticles];
    
}

- (void)loadedArticles:(NSNotification *)notification{
    
    [[NSNotificationCenter defaultCenter]removeObserver:self];
    NSArray *responseArticles = [notification.userInfo objectForKey:@"items"];
    NSLog(@"%@", responseArticles);
    
    for (int i = 0; i < [responseArticles count]; i++) {
        [self addArticle:[[Article alloc] initWithTitle:[responseArticles[i] valueForKey:@"headLine"] description:[responseArticles[i] valueForKey:@"slugLine"] url:[responseArticles[i] valueForKey:@"tinyUrl"] image:[responseArticles[i] valueForKey:@"thumbnailImageHref"] date:[responseArticles[i] valueForKey:@"dateLine"]] atIndex:i];
    }
    
    [[NSNotificationCenter defaultCenter] postNotificationName:@"loadEnded" object:self];
}

- (NSArray *)getArticles{
    
    return [persistenceManager getArticles];
    
}

- (void)addArticle:(Article *)article atIndex:(int)index{
    
    [persistenceManager addArticle:article atIndex:index];
    
}

@end
