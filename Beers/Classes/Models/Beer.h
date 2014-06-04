//
//  Beer.h
//  Beers
//
//  Created by Carlos Roig Salvador on 02/06/14.
//  Copyright (c) 2014 Roxe. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Beer : NSObject {
    // iVars privados por defecto, si pones @private 
    NSString *name;
    NSString *color;
    NSUInteger grade;
}

@property (strong, nonatomic) NSString *country;


#pragma mark - Initializers

- (id)initWithName:(NSString *)aName;



#pragma mark - Custom Getters

- (NSString *)name;
- (NSString *)color;
- (NSUInteger)grade;


#pragma mark - Custom Setters
//
- (void)setName:(NSString *)aName;
- (void)setColor:(NSString *)aColor;
- (void)setGrade:(NSUInteger)aGrade;

#pragma mark - Public Methods

/**
 *  void printBeerInfo()
 */
- (void)printBeerInfo;

/**
 *  void printBeerInfo(String header)
 *
 *  @param header Header NSString
 */
- (void)printBeerInfoWithHeader:(NSString *)header;

/**
 *  void printBeerInfo(String header, String Footer)
 *
 *  @param header <#header description#>
 *  @param footer <#footer description#>
 */
- (void)printBeerInfoWithHeader:(NSString *)header andFooter:(NSString *)footer;

/**
 *  void printBeerInfo(String header, String Footer, int numberOfEmojis)
 *
 *  @param header         <#header description#>
 *  @param footer         <#footer description#>
 *  @param numberOfEmojis <#numberOfEmojis description#>
 */
- (void)printBeerInfoWithHeader:(NSString *)header footer:(NSString *)footer andNumberOfEmojis:(NSUInteger)numberOfEmojis;

@end
