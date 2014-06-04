//
//  AlphaViewController.m
//  Beers
//
//  Created by Carlos Roig Salvador on 03/06/14.
//  Copyright (c) 2014 Roxe. All rights reserved.
//

#import "AlphaViewController.h"

@interface AlphaViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *imageView;

@end

@implementation AlphaViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
    
    UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(75, 475, 200, 14)];
    [btn setTitle:@"Next" forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(changeImage:)forControlEvents:UIControlEventTouchUpInside];
    btn.backgroundColor = [UIColor redColor];
    [self.view addSubview:btn];

}
- (IBAction)changeImageAlphaAttribute:(id)sender {
    if (![sender isKindOfClass:[UISlider class]]) {
        return;
    }
    UISlider *slider = (UISlider *)sender;
    self.imageView.alpha = slider.value;
    self.imageView.alpha = [slider value];
    [self imageView].alpha = [slider value];
    [[self imageView] setAlpha:[slider value]];
    [self.imageView setAlpha:[slider value]];
    [self.imageView setAlpha:slider.value];
    [self imageView].alpha = slider.value;
    
    //NSArray *subviews = [self.view subviews];
}


- (void)changeImage:(id)sender {
    static BOOL toogle = YES;
    toogle = !toogle;
    
    NSData *imageData = [NSData dataWithContentsOfURL:[NSURL URLWithString:@"http://fotosdegoku.com/wp-content/uploads/2012/05/Fotos-de-Goku-ssj-10-640x479.jpg"]];
    UIImage *image = [UIImage imageWithData:imageData];
    
    self.imageView.image = image;
}

- (IBAction)buttonPressed:(id)sender {
    static BOOL toogle = YES;
    toogle = !toogle;
    
    NSData *imageData = [NSData dataWithContentsOfURL:[NSURL URLWithString:@"http://fotosdegoku.com/wp-content/uploads/2012/05/Fotos-de-Goku-ssj-10-640x479.jpg"]];
    UIImage *image = [UIImage imageWithData:imageData];
    
    self.imageView.image = image;
}


@end
