//
//  Hotel.h
//  Beers
//
//  Created by Carlos Roig Salvador on 04/06/14.
//  Copyright (c) 2014 Roxe. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Person;

@interface Hotel : NSObject

@property (assign, nonatomic) NSUInteger count;

#pragma mark - Public Methods

- (void)addPerson:(Person *)person toRoom:(NSString *)room;
- (NSArray *)allRooms;
- (Person *)personWhoSleepsAtRoom:(NSString *)room;
- (NSUInteger)numberOfOcupiedRooms;

@end
