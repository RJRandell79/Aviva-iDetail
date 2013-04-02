//
//  FourthPage.m
//  Aviva-iDetail
//
//  Created by Rob Randell on 19/07/2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "FourthPage.h"

@interface FourthPage ()

@end

@implementation FourthPage
@synthesize title1, title2, subtitle, para;
@synthesize trusted, trustedText, expert, expertText, responsible, responsibleText;
@synthesize chartTitle, pieChart, chartSource;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    NSString *fontName_Lgt = @"FrutigerLTStd-Light";
    NSString *fontName_Hvy = @"FrutigerLTStd-Bold";
    
    UIColor *avivaBlue = [UIColor colorWithRed:0.15 green:0.23 blue:0.53 alpha:1.0];
    
    title1.textColor = [UIColor whiteColor];
    title2.textColor = [UIColor whiteColor];
    subtitle.textColor = [UIColor whiteColor];
    para.textColor = [UIColor whiteColor];
    trusted.textColor = avivaBlue;
    trustedText.textColor = avivaBlue;
    expert.textColor = avivaBlue;
    expertText.textColor = avivaBlue;
    responsible.textColor = avivaBlue;
    responsibleText.textColor = avivaBlue;
    chartTitle.textColor = [UIColor blackColor];
    chartSource.textColor = [UIColor blackColor];
    
    title1.font = [UIFont fontWithName:fontName_Lgt size:32.0];
    title2.font = [UIFont fontWithName:fontName_Lgt size:32.0];
    subtitle.font = [UIFont fontWithName:fontName_Lgt size:15.0];
    para.font = [UIFont fontWithName:fontName_Lgt size:12.0];
    trusted.font = [UIFont fontWithName:fontName_Hvy size:15.0];
    trustedText.font = [UIFont fontWithName:fontName_Lgt size:15.0];
    expert.font = [UIFont fontWithName:fontName_Hvy size:15.0];
    expertText.font = [UIFont fontWithName:fontName_Lgt size:15.0];
    responsible.font = [UIFont fontWithName:fontName_Hvy size:15.0];
    responsibleText.font = [UIFont fontWithName:fontName_Lgt size:15.0];
    chartTitle.font = [UIFont fontWithName:fontName_Hvy size:12.0];
    chartSource.font = [UIFont fontWithName:fontName_Lgt size:10.0];
    
    title1.text = [[NSString stringWithFormat:@"Listening To Clients,"] uppercaseString];
    title2.text = [[NSString stringWithFormat:@"Understanding Risk"] uppercaseString];
    subtitle.text = [NSString stringWithFormat:@"Every investment starts with a conversation. Our priority is to understand your unique risk-return reqirements"];
    para.text = [NSString stringWithFormat:@"We constantly monitor the service that\nwe provide to our clients and their\nadvisers and review their feedback.\nEach year, we commission independent\nresearch to review our investment\nperformance and service standards.\n\nBy providing a comprehensive range\nof global real estate investment strategies,\nwe aim to assist our clients in developing\nsolutions for their changing investment\nneeds. To meet the requirements of\ndifferent investor types and jurisdictions,\nour strategies are available through a\nvariety of fund structures and account\ntypes, including:\n\n– Segregated direct accounts\n– Pooled funds providing balanced\nand specialist strategies\n– Real estate multi-manager accounts\nand funds of funds\n– Real estate listed securities funds\nand segregated accounts. Our client\nreporting packages can be tailored\nto provide the appropriate level\nand regularity of information through\na combination of written reports, bespoke\npresentations and regular meetings."];
    trusted.text = [NSString stringWithFormat:@"Trusted"];
    trustedText.text = [NSString stringWithFormat:@"More than 450\ninstitutional clients around\nthe world trust us to\nmanage their assets."];
    expert.text = [NSString stringWithFormat:@"Expert"];
    expertText.text = [NSString stringWithFormat:@"Over 508 investment professionals based in 8 countries, including specialists in every asset class."];
    responsible.text = [NSString stringWithFormat:@"Responsible"];
    responsibleText.text = [NSString stringWithFormat:@"Working with the UN\nsince 2008 to call for\nsustainable business\nbehaviour."];
    chartTitle.text = [NSString stringWithFormat:@"Aviva Investors manages £269 billion on behalf of its clients"];
    chartSource.text = [NSString stringWithFormat:@"Source: Aviva Investors as at 30 June 2011."];
    
    NSString *pieChartPath = [[NSBundle mainBundle] pathForResource:@"piechart" ofType:@"html"];
    
    NSURL *pieChartfileURL = [NSURL fileURLWithPath:pieChartPath];
    NSURLRequest *pieChartfileRequest = [NSURLRequest requestWithURL:pieChartfileURL];
    
    pieChart.opaque = NO;
    pieChart.backgroundColor = [UIColor clearColor];
    pieChart.scrollView.scrollEnabled = NO;
    pieChart.scrollView.bounces = NO;
    [pieChart loadRequest:pieChartfileRequest];
    
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
