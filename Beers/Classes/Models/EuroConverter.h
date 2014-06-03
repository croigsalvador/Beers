//
//  EuroConverter.h
//  Beers
//
//  Created by Carlos Roig Salvador on 03/06/14.
//  Copyright (c) 2014 Roxe. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface EuroConverter : NSObject

#pragma mark - Properties

@property (nonatomic) float money;

#pragma mark - Class Methods

+ (int)convertFromEuroToPeseta:(float)euros;
+ (float)convertFromPesetaToEuro:(int)pesetas;

#pragma mark - Instance Methods

- (float)convertToEuro;
- (int)convertToPeseta;

@end
