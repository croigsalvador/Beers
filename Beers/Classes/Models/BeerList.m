//
//  BeerList.m
//  Beers
//
//  Created by Carlos Roig Salvador on 04/06/14.
//  Copyright (c) 2014 Roxe. All rights reserved.
//

#import "BeerList.h"

@interface BeerList ()

@property (strong, nonatomic) NSMutableArray *beerList;

@end

@implementation BeerList

#pragma mark - Initializers
- (instancetype)init {
    if (self = [super init]){
        _beerList = [[NSMutableArray alloc] init];
    }
    return self;
}

#pragma mark - Custom Getters

- (NSUInteger)count {
    return [self.beerList count];
}

#pragma mark - Public Methods

- (void)addBeer:(Beer *)beer {
    [self.beerList addObject:beer];
}

- (void)removeBeer:(Beer *)beer {
    [self.beerList removeObject:beer];
}

- (NSArray *)allBeers {
    return self.beerList;
}

@end
