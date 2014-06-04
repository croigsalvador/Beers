//
//  EuroConverterViewController.m
//  Beers
//
//  Created by Carlos Roig Salvador on 03/06/14.
//  Copyright (c) 2014 Roxe. All rights reserved.
//

#import "EuroConverterViewController.h"
#import "EuroConverter.h"

@interface EuroConverterViewController ()

@property (weak, nonatomic) IBOutlet UITextField *textField;
@property (weak, nonatomic) IBOutlet UILabel *resultLabel;

@end

@implementation EuroConverterViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}
- (IBAction)convertMoney:(UIButton *)sender {
    
    float result = [EuroConverter convertFromPesetaToEuro:[self.textField.text floatValue]];
    self.resultLabel.text = [NSString stringWithFormat:@"%.02f",result];
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
