//
//  Beer.m
//  Beers
//
//  Created by Carlos Roig Salvador on 02/06/14.
//  Copyright (c) 2014 Roxe. All rights reserved.
//

#import "Beer.h"

@implementation Beer

#pragma mark - Initializer

- (id)initWithName:(NSString *)aName color:(NSString *)aColor andAlcohol:(NSUInteger)aGrade {
    if (self = [super init]){
        name = aName;
        color = aColor;
        grade = aGrade;
    }
    return self;
}

- (id)init {
    if (self = [super init]){
        self = [self initWithName:@"Default" color:@"Rubia" andAlcohol:5];
    }
    return self;
}


#pragma mark - Public Methods

//- (void)setName:(NSString *)name {
//    
//}

- (void)printBeerInfo {
    NSLog(@"Beer info.\n Name: %@ Color: %@ & alcohol: %d",name ,color, grade);
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
    NSLog(@"Header: %@, Footer: %@ & NumberOfEmojis: %d", header, footer, numberOfEmojis);
    [self printBeerInfo];
}

@end
