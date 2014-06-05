//
//  HotelTests.m
//  Beers
//
//  Created by Carlos Roig Salvador on 04/06/14.
//  Copyright (c) 2014 Roxe. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "Hotel.h"
#import "Person.h"

static NSString *kNameTestKey               = @"Carlos";

@interface HotelTests : XCTestCase

@end

@implementation HotelTests


- (void)testCanCreateAnHotel {
    Hotel *hotel = [[Hotel alloc] init];
    XCTAssertNotNil(hotel, @"OMG NIL 🙀");
    
    Person *person = [[Person alloc] initWithName:kNameTestKey];
    [hotel addPerson:person toRoom:@"Room1"];
    
    NSUInteger count = [hotel numberOfOcupiedRooms];
    
    XCTAssertEqual(1,count , @" Count =  %lu", (unsigned long)count);
}


- (void)testCanAddAPersonToHotel {
    Hotel *hotel = [[Hotel alloc] init];
    XCTAssertNotNil(hotel, @"OMG NIL 🙀");
    
    Person *person = [[Person alloc] initWithName:kNameTestKey];
    [hotel addPerson:person toRoom:@"Room1"];
    
    NSUInteger count = [hotel numberOfOcupiedRooms];
    
    XCTAssertEqual(1,count , @" Count =  %lu", (unsigned long)count);
}

- (void)testCanGetAllRooms{
    Hotel *hotel = [[Hotel alloc] init];
    XCTAssertNotNil(hotel, @"OMG NIL 🙀");
    
    for (int i = 0; i < 100 ; i++) {
        Person *person = [[Person alloc] initWithName:kNameTestKey];
        [hotel addPerson:person toRoom:[NSString stringWithFormat:@"Room %d",i]];
    }
    NSArray *roomsList = [hotel allRooms];
    
    XCTAssertEqual(100, roomsList.count , @" Count =  %lu", (unsigned long)roomsList.count);
}

- (void)testCanKnowPeopleWhoSleepsInARoom{
    Hotel *hotel = [[Hotel alloc] init];
    XCTAssertNotNil(hotel, @"OMG NIL 🙀");
    
    Person *person = [[Person alloc] initWithName:kNameTestKey];
     [hotel addPerson:person toRoom:[NSString stringWithFormat:@"Room1"]];
    
    Person * p = [hotel personWhoSleepsAtRoom:@"Room1"];
    
    XCTAssertEqualObjects(kNameTestKey,person.name, @"No son igualess! %@ y %@",kNameTestKey,[p valueForKey:@"name"]);
}

- (void)testCanGetNumberOfOcupiedRooms{
    Hotel *hotel = [[Hotel alloc] init];
    XCTAssertNotNil(hotel, @"OMG NIL 🙀");
    
    for (int i = 0; i < 100 ; i++) {
        Person *person = [[Person alloc] initWithName:kNameTestKey];
        [hotel addPerson:person toRoom:[NSString stringWithFormat:@"Room %d",i]];
    }
    
    NSUInteger count = [hotel numberOfOcupiedRooms];
    XCTAssertEqual(100, count , @" Count =  %lu", (unsigned long)count);
}


@end
