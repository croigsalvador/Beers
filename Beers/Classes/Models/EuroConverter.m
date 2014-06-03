//
//  EuroConverter.m
//  Beers
//
//  Created by Carlos Roig Salvador on 03/06/14.
//  Copyright (c) 2014 Roxe. All rights reserved.
//

#import "EuroConverter.h"

static float kEuroValue             = 166.386;

@implementation EuroConverter


#pragma mark - Class Methods

+ (int)convertFromEuroToPeseta:(float)euros {
    return  (euros * kEuroValue);
}

+ (float)convertFromPesetaToEuro:(int)pesetas {
    return (pesetas / kEuroValue);
}

#pragma mark - Instance Methods

- (float)convertToEuro {
    return [EuroConverter convertFromPesetaToEuro:self.money];
}

- (int)convertToPeseta {
    return [EuroConverter convertFromEuroToPeseta:self.money];
}

@end
