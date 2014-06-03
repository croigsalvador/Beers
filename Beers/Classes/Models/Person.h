//
//  Person.h
//  Beers
//
//  Created by Carlos Roig Salvador on 03/06/14.
//  Copyright (c) 2014 Roxe. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject

@property (strong, nonatomic) NSString *name;
@property (strong, nonatomic) NSString *address;
@property (nonatomic) NSUInteger age;
@property (nonatomic, getter = isMarried) BOOL married;

#pragma mark - Class Method

+ (id)personWithName:(NSString *)name;
+ (id)personWithName:(NSString *)name andAddress:(NSString *)address;

#pragma mark - Initializers

- (id)initWithName:(NSString *)name;
- (id)initWithName:(NSString *)name andAddress:(NSString *)address;
// DESIGNATED INITIALIZER
- (id)initWithName:(NSString *)name andAddress:(NSString *)address age:(NSUInteger)age;

@end
