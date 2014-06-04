//
//  PersonTests.m
//  Beers
//
//  Created by Carlos Roig Salvador on 04/06/14.
//  Copyright (c) 2014 Roxe. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "Person.h"

static NSString *kPersonName            = @"Carlos";
static NSString *kPersonAddress         = @"C/ Alameda";
static NSUInteger kPersonAge            = 18;

@interface PersonTests : XCTestCase

@end

@implementation PersonTests

- (void)testCanCreateAPerson {
    Person *person = [[Person alloc] init];
    
    XCTAssertNotNil(person, @"OH MY GODDDDDD! IT'S NIL! 🙀");
    XCTAssertEqualObjects(kPersonName, person.name, @"Expeted Carlos found: %@ 😒", person.name);
    XCTAssertEqual(kPersonAge, person.age, @"Age expeted 18 found: %lu", (unsigned long)person.age);
    XCTAssertEqualObjects(kPersonAddress, person.address, @"Expeted C/ Alameda found: %@ 😒", person.address);
}

- (void)testCanCreateAPersonWithName {
    kPersonName = @"Pepe";
    Person *person = [[Person alloc] initWithName:kPersonName];
    NSLog(@"%@", kPersonName);
    XCTAssertNotNil(person, @"OH MY GODDDDDD! IT'S NIL! 🙀");
    XCTAssertEqualObjects(kPersonName, person.name, @"Expeted Carlos found: %@ 😒", person.name);
    XCTAssertEqual(kPersonAge, person.age, @"Age expeted 18 found: %lu", (unsigned long)person.age);
    XCTAssertEqualObjects(kPersonAddress, person.address, @"Expeted C/ Alameda found: %@ 😒", person.address);
}

- (void)testCanCreateAPersonWithNameAndAddress {
    Person *person = [[Person alloc] initWithName:kPersonName andAddress:kPersonAddress];
    
    XCTAssertNotNil(person, @"OH MY GODDDDDD! IT'S NIL! 🙀");
    XCTAssertEqualObjects(kPersonName, person.name, @"Expeted Carlos found: %@ 😒", person.name);
    XCTAssertEqual(kPersonAge, person.age, @"Age expeted 18 found: %lu", (unsigned long)person.age);
    XCTAssertEqualObjects(kPersonAddress, person.address, @"Expeted C/ Alameda found: %@ 😒", person.address);
}

- (void)testCanCreateAPersonWithNameAndAddressAge {
    Person *person = [[Person alloc] initWithName:kPersonName andAddress:kPersonAddress age:kPersonAge];
    
    XCTAssertNotNil(person, @"OH MY GODDDDDD! IT'S NIL! 🙀");
    XCTAssertEqualObjects(kPersonName, person.name, @"Expeted Carlos found: %@ 😒", person.name);
    XCTAssertEqual(kPersonAge, person.age, @"Age expeted 18 found: %lu", (unsigned long)person.age);
    XCTAssertEqualObjects(kPersonAddress, person.address, @"Expeted C/ Alameda found: %@ 😒", person.address);
}

- (void)testCanCreateAPersonWithClassMethod {
    kPersonName = @"Pepito";
    Person *person = [Person personWithName:kPersonName];
    XCTAssertNotNil(person, @"OH MY GODDDDDD! IT'S NIL! 🙀");
    XCTAssertEqualObjects(kPersonName, person.name, @"Expeted Carlos found: %@ 😒", person.name);
    XCTAssertEqual(kPersonAge, person.age, @"Age expeted 18 found: %lu", (unsigned long)person.age);
    XCTAssertEqualObjects(kPersonAddress, person.address, @"Expeted C/ Alameda found: %@ 😒", person.address);

}

- (void)testCanCreateAPersonWithClassMethodAndAddress {
    kPersonName = @"Pepito2";
    Person *person = [Person personWithName:kPersonName andAddress:kPersonAddress];
    XCTAssertNotNil(person, @"OH MY GODDDDDD! IT'S NIL! 🙀");
    XCTAssertEqualObjects(kPersonName, person.name, @"Expeted Carlos found: %@ 😒", person.name);
    XCTAssertEqual(kPersonAge, person.age, @"Age expeted 18 found: %lu", (unsigned long)person.age);
    XCTAssertEqualObjects(kPersonAddress, person.address, @"Expeted C/ Alameda found: %@ 😒", person.address);
    
}


@end
