//
//  SixthPage.m
//  Aviva-iDetail
//
//  Created by Rob Randell on 19/07/2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "SixthPage.h"
#import "QuartzCore/QuartzCore.h"

@interface SixthPage ()

@end

@implementation SixthPage
@synthesize title1, title2, subtitle, paraHeading1, para1, para2;
@synthesize graphTitle, graphSource, graphAxisY, graphAxisX0, graphAxisX1, graphAxisX2, graphAxisX3, graphAxisX4, graphAxisX5, graphAxisX6, graphAxisX7, graphAxisX8;
@synthesize IPDTableView, IPDTable, openTable;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (IBAction)openTable:(UIButton *)sender {
    
    [UIView animateWithDuration:2.0 
                          delay:0.0 
                        options:UIViewAnimationCurveEaseIn 
                     animations:^{ 
                         IPDTableView.alpha = 1.0;
                     }
                     completion:^(BOOL finished) {
                         [IPDTableView setAlpha:1.0];
                     }];
    
    NSString *tablePath = [[NSBundle mainBundle] pathForResource:@"table" ofType:@"html"];
    
    NSURL *tablefileURL = [NSURL fileURLWithPath:tablePath];
    NSURLRequest *tablefileRequest = [NSURLRequest requestWithURL:tablefileURL];
    
    [IPDTable loadRequest:tablefileRequest];
    [IPDTable setContentScaleFactor:3.0];

    [self.view bringSubviewToFront:IPDTableView];
    
}

- (IBAction)closeTable:(UIButton *)sender {
    
    [IPDTableView setAlpha:0.0];
    
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    NSString *fontName_Lgt = @"FrutigerLTStd-Light";
    NSString *fontName_Hvy = @"FrutigerLTStd-Bold";
    
    UIColor *avivaGrey = [UIColor colorWithRed:0.32 green:0.38 blue:0.44 alpha:1.0];

    title1.textColor = [UIColor blackColor];
    title2.textColor = [UIColor blackColor];
    subtitle.textColor = avivaGrey;
    paraHeading1.textColor = [UIColor blackColor];
    para1.textColor = [UIColor blackColor];
    para2.textColor = [UIColor blackColor];
    graphTitle.textColor = [UIColor blackColor];
    graphSource.textColor = [UIColor blackColor];
    graphAxisY.textColor = [UIColor blackColor];
    graphAxisX0.textColor = [UIColor blackColor];
    graphAxisX1.textColor = [UIColor blackColor];
    graphAxisX2.textColor = [UIColor blackColor];
    graphAxisX3.textColor = [UIColor blackColor];
    graphAxisX4.textColor = [UIColor blackColor];
    graphAxisX5.textColor = [UIColor blackColor];
    graphAxisX6.textColor = [UIColor blackColor];
    graphAxisX7.textColor = [UIColor blackColor];
    graphAxisX8.textColor = [UIColor blackColor];
    
    title1.font = [UIFont fontWithName:fontName_Lgt size:32.0];
    title2.font = [UIFont fontWithName:fontName_Lgt size:32.0];
    subtitle.font = [UIFont fontWithName:fontName_Lgt size:15.0];
    paraHeading1.font = [UIFont fontWithName:fontName_Hvy size:12.0];
    para1.font = [UIFont fontWithName:fontName_Lgt size:12.0];
    para2.font = [UIFont fontWithName:fontName_Lgt size:12.0];
    graphTitle.font = [UIFont fontWithName:fontName_Hvy size:12.0];
    graphSource.font = [UIFont fontWithName:fontName_Lgt size:12.0];
    graphAxisY.font = [UIFont fontWithName:fontName_Lgt size:12.0];
    graphAxisX0.font = [UIFont fontWithName:fontName_Lgt size:12.0];
    graphAxisX1.font = [UIFont fontWithName:fontName_Lgt size:12.0];
    graphAxisX2.font = [UIFont fontWithName:fontName_Lgt size:12.0];
    graphAxisX3.font = [UIFont fontWithName:fontName_Lgt size:12.0];
    graphAxisX4.font = [UIFont fontWithName:fontName_Lgt size:12.0];
    graphAxisX5.font = [UIFont fontWithName:fontName_Lgt size:12.0];
    graphAxisX6.font = [UIFont fontWithName:fontName_Lgt size:12.0];
    graphAxisX7.font = [UIFont fontWithName:fontName_Lgt size:12.0];
    graphAxisX8.font = [UIFont fontWithName:fontName_Lgt size:12.0];
    
    title1.text = [[NSString stringWithFormat:@"The Case For Global"] uppercaseString];
    title2.text = [[NSString stringWithFormat:@"Real Estate Investment"] uppercaseString];
    subtitle.text = [NSString stringWithFormat:@"A growing number of pension schemes are applying the same thinking to their real estate allocations in a drive to enhance returns and improve diversification."];
    paraHeading1.text = [NSString stringWithFormat:@"Other forms of diversification"];
    para1.text = [NSString stringWithFormat:@"Furthermore, allocating beyond\none’s domestic market extends this\ndiversification (or widened opportunity\nset) through exposure to a greater range\nof:\n\n– Property types\n– Market norms, such as terms of lending\n– Cashflow profiles and lease terms\n– Managers of unlisted funds."];
    para2.text = [NSString stringWithFormat:@"Diversifying outside of one’s domestic\nmarkets can be particularly attractive to\ninvestors based in relatively small or weak\ndomestic markets.\n\nHowever, all investors, regardless of the\nsize of their home market, can benefit\nfrom the potential to secure diversification\nand hence reduce risks through access to\nthe global opportunity set."];
    graphTitle.text = [NSString stringWithFormat:@"Global prime office correlation with central London 1991-2010"];
    graphSource.text = [NSString stringWithFormat:@"Source: PMA, Autumn 2011"];
    graphAxisY.text = [NSString stringWithFormat:@"Stockholm\n\nParis\n\nNew York\n\nSydney\n\nTokyo\n\nHong Kong\n\nMilan\n\nFrankfurt"];
    graphAxisX0.text = [NSString stringWithFormat:@"0.0"];
    graphAxisX1.text = [NSString stringWithFormat:@"0.1"];
    graphAxisX2.text = [NSString stringWithFormat:@"0.2"];
    graphAxisX3.text = [NSString stringWithFormat:@"0.3"];
    graphAxisX4.text = [NSString stringWithFormat:@"0.4"];
    graphAxisX5.text = [NSString stringWithFormat:@"0.5"];
    graphAxisX6.text = [NSString stringWithFormat:@"0.6"];
    graphAxisX7.text = [NSString stringWithFormat:@"0.7"];
    graphAxisX8.text = [NSString stringWithFormat:@"0.8"];
    
    [IPDTableView setAlpha:0.0];
    [openTable setAlpha:0.0];

}

- (void)viewDidAppear:(BOOL)animated {
    
    NSString *tablePath = [[NSBundle mainBundle] pathForResource:@"table" ofType:@"html"];
    
    NSURL *tablefileURL = [NSURL fileURLWithPath:tablePath];
    NSURLRequest *tablefileRequest = [NSURLRequest requestWithURL:tablefileURL];
    
    table = [[UIWebView alloc] initWithFrame:CGRectMake(32, 390, 475, 0)];
    [table loadRequest:tablefileRequest];
    [table setAlpha:0.0f];
    [table setClipsToBounds:YES];
    [table setOpaque:NO];
    [table setBackgroundColor:[UIColor clearColor]];
    [table setContentMode:UIViewContentModeTopLeft];
    
    [self.view addSubview:table];
    [table release];
    
    [UIView animateWithDuration:2.0f
                          delay:0.25f
                        options:UIViewAnimationOptionCurveEaseIn
                     animations:^(void) {
                         table.frame = CGRectMake(32, 390, 475, 480);
                         table.alpha = 1.0f;
                     }
                     completion:NULL];
    
    [UIButton animateWithDuration:2.0f 
                          delay:0.25f 
                        options:UIViewAnimationCurveEaseIn 
                     animations:^{ 
                         openTable.alpha = 1.0f;
                     }
                     completion:^(BOOL finished) {
                         [openTable setAlpha:1.0f];
                     }];

    
    //UIColor *avivalowBlue = [UIColor colorWithRed:0.15 green:0.23 blue:0.53 alpha:0.25];
    UIColor *avivahighBlue = [UIColor colorWithRed:0.15 green:0.23 blue:0.53 alpha:1.0];
    
    /*
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(648, 262, 310, 20)];
    CAGradientLayer *gradient = [CAGradientLayer layer];
    gradient.frame = view.bounds;
    gradient.colors = [NSArray arrayWithObjects:(id)[[UIColor blackColor] CGColor], (id)[[UIColor blueColor] CGColor], nil];
    [stockholmBar.layer insertSublayer:gradient atIndex:0];
    */
    
    stockholmBar = [[UIImageView alloc] initWithFrame:CGRectMake(648, 262, 0, 20)];
    [stockholmBar setAlpha:0.0f];    
    [stockholmBar setBackgroundColor:avivahighBlue];
    
    parisBar = [[UIImageView alloc] initWithFrame:CGRectMake(648, 292, 0, 20)];
    [parisBar setAlpha:0.0f];
    [parisBar setBackgroundColor:avivahighBlue];
    
    newyorkBar = [[UIImageView alloc] initWithFrame:CGRectMake(648, 322, 0, 20)];
    [newyorkBar setAlpha:0.0f];
    [newyorkBar setBackgroundColor:avivahighBlue];
    
    sydneyBar = [[UIImageView alloc] initWithFrame:CGRectMake(648, 352, 0, 20)];
    [sydneyBar setAlpha:0.0f];
    [sydneyBar setBackgroundColor:avivahighBlue];
    
    tokyoBar = [[UIImageView alloc] initWithFrame:CGRectMake(648, 382, 0, 20)];
    [tokyoBar setAlpha:0.0f];
    [tokyoBar setBackgroundColor:avivahighBlue];
    
    hongkongBar = [[UIImageView alloc] initWithFrame:CGRectMake(648, 412, 0, 20)];
    [hongkongBar setAlpha:0.0f];
    [hongkongBar setBackgroundColor:avivahighBlue];
    
    milanBar = [[UIImageView alloc] initWithFrame:CGRectMake(648, 442, 0, 20)];
    [milanBar setAlpha:0.0f];
    [milanBar setBackgroundColor:avivahighBlue];
    
    frankfurtBar = [[UIImageView alloc] initWithFrame:CGRectMake(648, 472, 0, 20)];
    [frankfurtBar setAlpha:0.0f];
    [frankfurtBar setBackgroundColor:avivahighBlue];
    
    [self.view addSubview:stockholmBar];
    [self.view addSubview:parisBar];
    [self.view addSubview:newyorkBar];
    [self.view addSubview:sydneyBar];
    [self.view addSubview:tokyoBar];
    [self.view addSubview:hongkongBar];
    [self.view addSubview:milanBar];
    [self.view addSubview:frankfurtBar];
    
    [stockholmBar release];
    [parisBar release];
    [newyorkBar release];
    [sydneyBar release];
    [tokyoBar release];
    [hongkongBar release];
    [milanBar release];
    [frankfurtBar release];
    
    [UIButton animateWithDuration:2.0f 
                          delay:0.25f 
                        options:UIViewAnimationCurveEaseOut 
                     animations:^(void) {
                         stockholmBar.frame = CGRectMake(648, 262, 305, 20);
                         stockholmBar.alpha = 1.0f;
                     }
                     completion:NULL];
    
    [UIView animateWithDuration:2.0f 
                          delay:0.5f 
                        options:UIViewAnimationCurveEaseOut 
                     animations:^(void) {
                         parisBar.frame = CGRectMake(648, 292, 300, 20);
                         parisBar.alpha = 1.0f;
                     }
                     completion:NULL];
    
    [UIView animateWithDuration:2.0f 
                          delay:0.75f 
                        options:UIViewAnimationCurveEaseOut 
                     animations:^(void) {
                         newyorkBar.frame = CGRectMake(648, 322, 300, 20);
                         newyorkBar.alpha = 1.0f;
                     }
                     completion:NULL];
    
    [UIView animateWithDuration:2.0f 
                          delay:1.0f 
                        options:UIViewAnimationCurveEaseOut 
                     animations:^(void) {
                         sydneyBar.frame = CGRectMake(648, 352, 255, 20);
                         sydneyBar.alpha = 1.0f;
                     }
                     completion:NULL];
    
    [UIView animateWithDuration:2.0f 
                          delay:1.25f 
                        options:UIViewAnimationCurveEaseOut 
                     animations:^(void) {
                         tokyoBar.frame = CGRectMake(648, 382, 205, 20);
                         tokyoBar.alpha = 1.0f;
                     }
                     completion:NULL];
    
    [UIView animateWithDuration:2.0f 
                          delay:1.5f 
                        options:UIViewAnimationCurveEaseOut 
                     animations:^(void) {
                         hongkongBar.frame = CGRectMake(648, 412, 180, 20);
                         hongkongBar.alpha = 1.0f;
                     }
                     completion:NULL];
    
    [UIView animateWithDuration:2.0f 
                          delay:1.75f 
                        options:UIViewAnimationCurveEaseOut 
                     animations:^(void) {
                         milanBar.frame = CGRectMake(648, 442, 175, 20);
                         milanBar.alpha = 1.0f;
                     }
                     completion:NULL];
    
    [UIView animateWithDuration:2.0f 
                          delay:2.0f 
                        options:UIViewAnimationCurveEaseOut 
                     animations:^(void) {
                         frankfurtBar.frame = CGRectMake(648, 472, 145, 20);
                         frankfurtBar.alpha = 1.0f;
                     }
                     completion:NULL];

}

- (void)viewDidDisappear:(BOOL)animated {
    
    [table removeFromSuperview];
    
    [stockholmBar removeFromSuperview];
    [parisBar removeFromSuperview];
    [newyorkBar removeFromSuperview];
    [sydneyBar removeFromSuperview];
    [tokyoBar removeFromSuperview];
    [hongkongBar removeFromSuperview];
    [milanBar removeFromSuperview];
    [frankfurtBar removeFromSuperview];
    
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)orientation
{
    return (orientation != UIDeviceOrientationPortrait) &&
    (orientation != UIDeviceOrientationPortraitUpsideDown);
}

@end
