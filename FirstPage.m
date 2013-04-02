//
//  FirstPage.m
//  Aviva-iDetail
//
//  Created by Rob Randell on 18/07/2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "FirstPage.h"

@interface FirstPage ()

@end

@implementation FirstPage
@synthesize title1, title2, title3, title4, quoteTextView, disclaimerTextView, webAddress, urlLink;

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
    UIColor *avivaYellow = [UIColor colorWithRed:0.99 green:0.85 blue:0 alpha:1.0];
    UIColor *avivaWhite = [UIColor whiteColor];
    
    NSString *fontName_Lgt = @"FrutigerLTStd-Light";
    //NSString *fontName_Hvy = @"FrutigerLTStd-Bold";
    //NSString *fontName_Mnn = @"MinionPro-Regular";
    
    //double fontSize = 36.0;
    
       
    title1.textColor = avivaYellow;
    title2.textColor = avivaYellow;
    title3.textColor = avivaWhite;
    title4.textColor = avivaWhite;
    quoteTextView.textColor = avivaWhite;
    disclaimerTextView.textColor = avivaWhite;
    webAddress.textColor = avivaYellow;
    
    title1.font = [UIFont fontWithName:fontName_Lgt size:32.0];
    title2.font = [UIFont fontWithName:fontName_Lgt size:32.0];
    title3.font = [UIFont fontWithName:fontName_Lgt size:32.0];
    title4.font = [UIFont fontWithName:fontName_Lgt size:32.0];
    quoteTextView.font = [UIFont fontWithName:fontName_Lgt size:15.0];
    disclaimerTextView.font = [UIFont fontWithName:fontName_Lgt size:10.0];
    webAddress.font = [UIFont fontWithName:fontName_Lgt size:10.0];
        
    title1.text = [[NSString stringWithFormat:@"Global Real"] uppercaseString];
    title2.text = [[NSString stringWithFormat:@"Estate"] uppercaseString];
    title3.text = [[NSString stringWithFormat:@"A World Of"] uppercaseString];
    title4.text = [[NSString stringWithFormat:@"Opportunity"] uppercaseString];
    quoteTextView.text = [NSString stringWithFormat:@"\"Unusually among real estate managers,\nwe are global specialists – combining\nextensive coverage with niche expertise\nin local markets.\"\n\nIan Womack – Chief Executive,\nReal Estate"];
    disclaimerTextView.text = [NSString stringWithFormat:@"This application is for investment professionals\nand institutional/qualified investors only. It is\nnot to be viewed by or used with retail clients.\""];
    webAddress.text = [NSString stringWithFormat:@"avivainvestors.com"];
    
}

- (void)openWeb:(UIButton *)sender {
    
    NSString *webURL = [NSString stringWithFormat:@"http://avivainvestors.com"];
    [[UIApplication sharedApplication] openURL: [NSURL URLWithString: webURL]];

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
