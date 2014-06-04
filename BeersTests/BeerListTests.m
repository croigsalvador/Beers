//
//  BeerListTests.m
//  Beers
//
//  Created by Carlos Roig Salvador on 04/06/14.
//  Copyright (c) 2014 Roxe. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "BeerList.h"
#import "Beer.h"

@interface BeerListTests : XCTestCase

@end

@implementation BeerListTests

- (void)testCanCreateABeerList {
    BeerList *beerList = [[BeerList alloc] init];
    XCTAssertNotNil(beerList, @"Oh my GODD 🙀");
    XCTAssertEqual(0, [beerList count], @"Expected count 2 found: %lu 😒",(unsigned long)  beerList.count);
}


- (void)testCanAddABeerToTheList {
    BeerList *beerList = [[BeerList alloc] init];
    
    XCTAssert(beerList, @"All Beers");
    
    Beer *mahou = [[Beer alloc] init];
    [beerList addBeer:mahou];
    XCTAssertEqual(1, [beerList count], @" Count =  %lu", (unsigned long)beerList.count);
    
}

- (void)testCanRemoveBeerFromTheList {
    BeerList *beerList = [[BeerList alloc] init];
    
    XCTAssert(beerList, @"All Beers");
    
    Beer *mahou = [[Beer alloc] init];
    [beerList addBeer:mahou];
    XCTAssertEqual(1, [beerList count], @" Count =  %lu", (unsigned long)beerList.count);
    [beerList removeBeer:mahou];
    XCTAssertEqual(0, [beerList count], @" Count =  %lu", (unsigned long)beerList.count);
}

- (void)testCanGetAnArray {
    BeerList *beerList = [[BeerList alloc] init];
    
    XCTAssert(beerList, @"All Beers");
    
    for (int i = 0; i < 100 ; i++) {
        Beer *beer = [[Beer alloc]init];
        beer.name = [NSString stringWithFormat:@"Beer%d",i];
        [beerList addBeer:beer];
    }
    
    NSArray *allBeers = [beerList allBeers];
    
    for (int i = 0; i < 100 ; i++) {
        Beer *beer = (Beer *) [allBeers objectAtIndex:i];
        NSString *name = [NSString stringWithFormat:@"Beer%d",i];
        XCTAssertEqualObjects(beer.name, name , @"Iguales");
    }
    
    int i = 0;
    for (Beer *beer in allBeers) {
        NSString *name = [NSString stringWithFormat:@"Beer%d",i];
        XCTAssertEqualObjects(beer.name, name , @"Iguales");
        i++;
    }
    [allBeers enumerateObjectsUsingBlock:^(id object, NSUInteger idx, BOOL *stop) {
        Beer *beer = (Beer *) object;
        NSString *name = [NSString stringWithFormat:@"Beer%lu",(unsigned long)idx];
        XCTAssertEqualObjects(beer.name, name , @"Iguales");
        
        *stop = idx > 50 ? YES : NO;
    }];
    
    XCTAssertEqual(beerList.count, [allBeers count], @" Count =  %lu", (unsigned long)beerList.count);
}

 

- (void)testCanCountBeers {
    BeerList *beerList = [[BeerList alloc] init];
    
    XCTAssert(beerList, @" Count All Beers");
    
    for (int i = 0; i < 1000 ; i++) {
        [beerList addBeer:[[Beer alloc]init]];
    }
    
    
    
    XCTAssertTrue([beerList count] == 1000, @"");
    
}


- (void)testCantChangeCountOfBeers {
    BeerList *beerList = [[BeerList alloc] init];
    XCTAssert(beerList, @"All Beers");
    
    Beer *mahou = [[Beer alloc] init];
    [beerList addBeer:mahou];
    
}

- (void)testCanCreateABeerListKVC {
    BeerList *beerList = [[BeerList alloc] init];
    XCTAssertNotNil(beerList, @"Oh my GODD 🙀");
    NSUInteger count = [[beerList valueForKey:@"count"]integerValue];
    XCTAssertEqual(0,count , @" Count =  %lu", (unsigned long)count);
}


- (void)testCanAddABeerToTheListKVC {
    BeerList *beerList = [[BeerList alloc] init];
    
    XCTAssert(beerList, @"All Beers");
    
    Beer *mahou = [[Beer alloc] init];
    [beerList addBeer:mahou];
    NSUInteger count = [[beerList valueForKey:@"count"]integerValue];
    XCTAssertEqual(1,count , @" Count =  %lu", (unsigned long)count);
    
}

- (void)testCanRemoveBeerFromTheListKVC {
    BeerList *beerList = [[BeerList alloc] init];
    
    XCTAssert(beerList, @"All Beers");
    
    Beer *mahou = [[Beer alloc] init];
    [beerList addBeer:mahou];
    
    NSUInteger count = [[beerList valueForKey:@"count"]integerValue];
    XCTAssertEqual(1,count , @" Count =  %lu", (unsigned long)count);

    [beerList removeBeer:mahou];
    count = [[beerList valueForKey:@"count"]integerValue];
    XCTAssertEqual(0, count, @" Count =  %lu", (unsigned long)count);
}

- (void)testCanGetAnArrayKVC {
    BeerList *beerList = [[BeerList alloc] init];
    
    XCTAssert(beerList, @"All Beers");
    
    for (int i = 0; i < 100 ; i++) {
        Beer *beer = [[Beer alloc]init];
        [beer setValue: [NSString stringWithFormat:@"Beer%d",i] forKey:@"name" ];
        [beerList addBeer:beer];
    }
    
    NSArray *allBeers = [beerList allBeers];
    
    for (int i = 0; i < 100 ; i++) {
        Beer *beer = (Beer *) [allBeers objectAtIndex:i];
        NSString *name = [NSString stringWithFormat:@"Beer%d",i];
        NSString *objectName =  [beer valueForKey:@"name"];

        XCTAssertEqualObjects(objectName, name , @"Iguales");
    }
    
    int i = 0;
    for (Beer *beer in allBeers) {
        NSString *name = [NSString stringWithFormat:@"Beer%d",i];
        NSString *objectName =  [beer valueForKey:@"name"];
        XCTAssertEqualObjects(objectName, name , @"Iguales");
        i++;
    }
    [allBeers enumerateObjectsUsingBlock:^(id object, NSUInteger idx, BOOL *stop) {
        Beer *beer = (Beer *) object;
        NSString *name = [NSString stringWithFormat:@"Beer%lu",(unsigned long)idx];
        NSString *objectName =  [beer valueForKey:@"name"];
        XCTAssertEqualObjects(objectName, name , @"Iguales");
        
        *stop = idx > 50 ? YES : NO;
    }];
    
    NSUInteger count = [[beerList valueForKey:@"count"]integerValue];
    XCTAssertEqual(count, [allBeers count], @" Count =  %lu", (unsigned long)count);
}



- (void)testCanCountBeersKVC {
    BeerList *beerList = [[BeerList alloc] init];
    
    XCTAssert(beerList, @" Count All Beers");
    
    for (int i = 0; i < 1000 ; i++) {
        [beerList addBeer:[[Beer alloc]init]];
    }
    
    
    NSUInteger count = [[beerList valueForKey:@"count"]integerValue];
    XCTAssertTrue(count == 1000, @"");
    
}


- (void)testCantChangeCountOfBeersKVC {
    BeerList *beerList = [[BeerList alloc] init];
    XCTAssert(beerList, @"All Beers");
    
    Beer *mahou = [[Beer alloc] init];
    [beerList addBeer:mahou];
    
}



@end
