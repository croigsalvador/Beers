//
//  AppDelegate.m
//  Beers
//
//  Created by Carlos Roig Salvador on 02/06/14.
//  Copyright (c) 2014 Roxe. All rights reserved.
//

#import "AppDelegate.h"
#import "Beer.h"
#import "Person.h"
#import "EuroConverter.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
//    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
//    // Override point for customization after application launch.
//    self.window.backgroundColor = [UIColor whiteColor];
//    [self.window makeKeyAndVisible];
    
    // Beers
    
    Beer *mahou = [[Beer alloc]init];
    mahou.name = @"Mahou";
    mahou.color = @"Rubia";
    mahou.grade = 10;
    [mahou printBeerInfo];
    
//    [mahou printBeerInfoWithHeader:@"Mahou"];
//    [mahou printBeerInfoWithHeader:@"Mahou" andFooter:@"5%"];
//    [mahou printBeerInfoWithHeader:@"Mahou" footer:@"5%" andNumberOfEmojis:10];
    
    Beer *cruzcampo = [Beer new];
    cruzcampo.name = @"Cruzcampo";
    [cruzcampo setColor:@"Negra"];
    cruzcampo.grade = 5;
    [cruzcampo printBeerInfo];
    
    Beer *estrella = [[Beer alloc]init];
    estrella.name = @"Estrella";
    [estrella setColor:@"Rubia"];
    estrella.grade = 10;
    [estrella printBeerInfo];
    
    Beer *coronita = [[Beer alloc]init];
    coronita.name = @"Coronita";
    [coronita setColor:@"Morena"];
    coronita.grade = 8;
    [coronita printBeerInfo];
    
    // Persons
    
    Person *carlos = [[Person alloc] init];
    carlos.age = 26;
    carlos.married = NO;
    carlos.address = @"Atocha";
    
    
    Person *groucho = [[Person alloc] init];
    Person *harpo = [[Person alloc] initWithName:@"Harpo"];
    Person *homer = [[Person alloc] initWithName:@"Homer" andAddress:@"C/ Alameda"];
    Person *pepe = [[Person alloc] initWithName:@"Homer" andAddress:@"C/ Alcalá" age:40];
    
    Person *bart = [Person personWithName:@"Bart"];
    Person *lisa = [Person personWithName:@"Lisa" andAddress:@"Evergreen Terrace"];
    
    NSArray *personList = [NSArray arrayWithObjects:groucho, harpo, homer, nil];
    NSArray *personList2 = @[groucho, harpo];
    
    for (Person *person in personList) {
        NSLog(@"Name: %@ \n", person.name);
    }
    
   
    
    NSMutableArray *partyList = [[NSMutableArray alloc] initWithObjects:bart, lisa, nil];
    NSMutableArray *partyList2 = [NSMutableArray arrayWithArray:@[pepe,homer]];

    
    for (int i = 0; i < 100; i++) {
        Person *person = [Person personWithName:[NSString stringWithFormat:@"Persona %d",i+1 ]];
        [partyList addObject:person];
    }
    [partyList addObjectsFromArray:personList];
    
    for (Person *person in partyList) {
        NSLog(@"Name: %@ \n", person.name);
    }
    
    EuroConverter *converter = [[EuroConverter alloc] init];
    converter.money = 3000;
    
    NSLog(@"3000 Pesetas son %f Euros, instance Method", [converter convertToEuro]);
    
    NSLog(@"2000 Pesetas son %f Euros, class method",[EuroConverter convertFromPesetaToEuro:2000]);
    
    NSLog(@"3000 Pesetas son %d Euros, instance Method", [converter convertToPeseta]);
    
    NSLog(@"20 Euros son %d pesetas, class method",[EuroConverter convertFromEuroToPeseta:20]);
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
