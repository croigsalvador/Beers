//
//  Beer.m
//  Beers
//
//  Created by Carlos Roig Salvador on 02/06/14.
//  Copyright (c) 2014 Roxe. All rights reserved.
//

#import "Beer.h"

@implementation Beer

@synthesize country = _country;

#pragma mark - Initializer



//- (id)initWithName:(NSString *)aName color:(NSString *)aColor andAlcohol:(NSUInteger)aGrade {
//    if (self = [super init]){
//        name = aName;
//        color = aColor;
//        grade = aGrade;
//    }
//    return self;
//}
//
//- (id)init {
//    if (self = [super init]){
//        self = [self initWithName:@"Default" color:@"Rubia" andAlcohol:5];
//    }
//    return self;
//}

#pragma mark - Custom Getters

- (NSString *)name {
    return self->name;
}

- (NSString *)color {
    return self->color;
}

- (NSUInteger)grade  {
    return self->grade;
}

- (NSString *)country {
    return _country;
}

#pragma mark - Custom Setters

- (void)setName:(NSString *)aName {
    self->name = aName;
}

- (void)setColor:(NSString *)aColor {
    color = aColor;
}

- (void)setGrade:(NSUInteger)aGrade {
    grade = aGrade;
}

- (void)setCountry:(NSString *)country {
    _country = country;
}

#pragma mark - Public Methods

- (void)printBeerInfo {
    NSLog(@"Name: %@ Color: %@ & alcohol: %lu",name ,color, (unsigned long)grade);
}

- (void)printBeerInfoWithHeader:(NSString *)header {
    NSLog(@"Header: %@", header);
    [self printBeerInfo];
}

- (void)printBeerInfoWithHeader:(NSString *)header andFooter:(NSString *)footer{
    NSLog(@"Header: %@ & Footer: %@", header, footer);
    [self printBeerInfo];
}

- (void)printBeerInfoWithHeader:(NSString *)header footer:(NSString *)footer andNumberOfEmojis:(NSUInteger)numberOfEmojis {
    NSLog(@"Header: %@, Footer: %@ & NumberOfEmojis: %lu", header, footer, (unsigned long)numberOfEmojis);
    [self printBeerInfo];
}

@end
