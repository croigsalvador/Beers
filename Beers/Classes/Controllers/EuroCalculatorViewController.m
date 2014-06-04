//
//  EuroCalculatorViewController.m
//  Beers
//
//  Created by Carlos Roig Salvador on 03/06/14.
//  Copyright (c) 2014 Roxe. All rights reserved.
//

#import "EuroCalculatorViewController.h"
#import "EuroConverter.h"

@interface EuroCalculatorViewController ()

@property(nonatomic, assign)float totalValue;
@property (weak, nonatomic) IBOutlet UILabel *resultLabel;
@property (strong, nonatomic) NSString *value;
@property (assign,nonatomic, getter = isAlreadyCalculated)BOOL alreadyCalculated;

@end

@implementation EuroCalculatorViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}
#pragma mark - IBActions

- (IBAction)processDigit:(id)sender {
    if(![sender isKindOfClass:[UIButton class]]) {
        return;
    }
    if (self.isAlreadyCalculated) {
        self.alreadyCalculated = NO;
        self.resultLabel.text = @"";
    }
    UIButton *button = (UIButton *)sender;
    self.totalValue = button.tag;
    NSString *totalText = [self.resultLabel.text stringByAppendingString:[NSString stringWithFormat:@"%lu",(unsigned long)self.totalValue]];
    self.resultLabel.text = totalText;
    
}

- (IBAction)convertToEuros:(id)sender {
    float value = [EuroConverter convertFromPesetaToEuro:[self.resultLabel.text floatValue]];

    NSString *totalText = [NSString stringWithFormat:@"%.02f", value];
    self.resultLabel.text = totalText;
    self.alreadyCalculated = YES;
    
}

- (IBAction)converToPesetas:(id)sender {
    int value = [EuroConverter convertFromEuroToPeseta:[self.resultLabel.text floatValue]];
    
    NSString *totalText = [NSString stringWithFormat:@"%d", value];
    self.resultLabel.text = totalText;
    self.alreadyCalculated = YES;
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
