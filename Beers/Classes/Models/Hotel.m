//
//  Hotel.m
//  Beers
//
//  Created by Carlos Roig Salvador on 04/06/14.
//  Copyright (c) 2014 Roxe. All rights reserved.
//

#import "Hotel.h"
#import "Person.h"

@interface Hotel ()
@property (strong, nonatomic) NSMutableDictionary *rooms;
@end

@implementation Hotel

//- (id)init {
//    if (self = [super init]){
//        _rooms = [[NSMutableDictionary alloc] init];
//    }
//    return self;
//}

- (NSMutableDictionary *)rooms {
    if (!_rooms) {
        _rooms = [[NSMutableDictionary alloc] init];
    }
    return _rooms;
}


#pragma mark - Public Methods

- (void)addPerson:(Person *)person toRoom:(NSString *)room {
    [self.rooms setValue:person forKey:room];
}

- (NSArray *)allRooms {
    return  [self.rooms allKeys];
}

- (Person *)personWhoSleepsAtRoom:(NSString *)room {
    return [self.rooms valueForKey:room];
}

- (NSUInteger)numberOfOcupiedRooms {
    return [[self.rooms allKeys] count];
}

@end
