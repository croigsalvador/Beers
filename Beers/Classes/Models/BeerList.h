//
//  BeerList.h
//  Beers
//
//  Created by Carlos Roig Salvador on 04/06/14.
//  Copyright (c) 2014 Roxe. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Beer;


@interface BeerList : NSObject

@property (assign, nonatomic, readonly) NSUInteger count;

#pragma mark - Public Methods

- (void)addBeer:(Beer *)beer;
- (void)removeBeer:(Beer *)beer;
- (NSArray *)allBeers;

@end
