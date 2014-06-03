//
//  Person.m
//  Beers
//
//  Created by Carlos Roig Salvador on 03/06/14.
//  Copyright (c) 2014 Roxe. All rights reserved.
//

#import "Person.h"

static NSUInteger kDefaultAge                       = 18;
static NSString *kDefaultAddress                    = @"C/ Alameda";
static NSString *kDefaultName                       = @"Default";


@implementation Person

#pragma mark - Class Method

+ (id)personWithName:(NSString *)name {
    Person *person = [[Person alloc] initWithName:name andAddress:kDefaultAddress age:kDefaultAge];
    return person;
}

+ (id)personWithName:(NSString *)name andAddress:(NSString *)address {
    Person *person = [[Person alloc] initWithName:name andAddress:address age:kDefaultAge];
    return person;
}

#pragma mark - Initializer

- (id)init {
    return [self initWithName:kDefaultName  andAddress:kDefaultAddress age:kDefaultAge];
}

- (id)initWithName:(NSString *)name{
    self = [self initWithName:name andAddress:kDefaultAddress age:kDefaultAge];
    return self;
}

- (id)initWithName:(NSString *)name andAddress:(NSString *)address {
    return [self initWithName:name andAddress:address age:kDefaultAge];
}

// DESIGNATED INITIALIZER
- (id)initWithName:(NSString *)name andAddress:(NSString *)address age:(NSUInteger)age {
    if (self = [super init]){
        _name = name;
        _address = address;
        _age = age;
    }
    return self;
}


#pragma mark - Custom Getters


#pragma mark - Custom Setters


@end
