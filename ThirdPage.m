//
//  ThirdPage.m
//  Aviva-iDetail
//
//  Created by Rob Randell on 19/07/2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ThirdPage.h"

@implementation ThirdPage
@synthesize title1, title2, subtitle, paraHeading1, para1, footnotes, caption, innovation, innovationText;
@synthesize moviePlayer;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (IBAction)playMovie:(id)sender {
    
    NSString *path = [[NSBundle mainBundle] pathForResource:@"214376_MIPIM" ofType:@"m4v"];
    NSURL *movieURL = [[NSURL fileURLWithPath:path] retain];
        
    moviePlayer = [[MPMoviePlayerController alloc] initWithContentURL:movieURL];    
    UIButton *playButton = (UIButton *)sender;
    
    [moviePlayer.view setFrame:CGRectMake(playButton.frame.origin.x, playButton.frame.origin.y, playButton.frame.size.width, playButton.frame.size.height)];
    [moviePlayer prepareToPlay];
    
    [self.view addSubview:moviePlayer.view];
    [moviePlayer setFullscreen:NO];
    
}

- (void)viewDidDisappear:(BOOL)animated
{
    [moviePlayer pause];
    // e.g. self.myOutlet = nil;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    NSString *fontName_Lgt = @"FrutigerLTStd-Light";
    NSString *fontName_Hvy = @"FrutigerLTStd-Bold";
    
    UIColor *avivaBlue = [UIColor colorWithRed:0.15 green:0.23 blue:0.53 alpha:1.0];
    UIColor *avivaGrey = [UIColor colorWithRed:0.32 green:0.38 blue:0.44 alpha:1.0];
        
    title1.textColor = [UIColor blackColor];
    title2.textColor = [UIColor blackColor];
    subtitle.textColor = avivaGrey;
    paraHeading1.textColor = [UIColor blackColor];
    para1.textColor = [UIColor blackColor];
    footnotes.textColor = [UIColor blackColor];
    caption.textColor = [UIColor blackColor];
    innovation.textColor = avivaBlue;
    innovationText.textColor = avivaBlue;
    
    title1.font = [UIFont fontWithName:fontName_Lgt size:32.0];
    title2.font = [UIFont fontWithName:fontName_Lgt size:32.0];
    subtitle.font = [UIFont fontWithName:fontName_Lgt size:15.0];
    paraHeading1.font = [UIFont fontWithName:fontName_Hvy size:12.0];
    para1.font = [UIFont fontWithName:fontName_Lgt size:12.0];
    footnotes.font = [UIFont fontWithName:fontName_Lgt size:10.0];
    caption.font = [UIFont fontWithName:fontName_Lgt size:10.0];
    innovation.font = [UIFont fontWithName:fontName_Hvy size:15.0];
    innovationText.font = [UIFont fontWithName:fontName_Lgt size:15.0];
    
    title1.text = [[NSString stringWithFormat:@"A Global Investment"] uppercaseString];
    title2.text = [[NSString stringWithFormat:@"Specialist"] uppercaseString];
    subtitle.text = [NSString stringWithFormat:@"Real estate is a core area of Aviva Investor Expertise\u00B9.\nWith over £24 billion of assets under management\u00B2,\nwe are the largest manager of UK commercial real estate assets."];
    paraHeading1.text = [NSString stringWithFormat:@"Global reach, local expertise"];
    para1.text = [NSString stringWithFormat:@"With investment professionals in the\nUS, the UK, France, Germany, Singapore\nand Australia our global scale and\nmarket presence give us access to local\nexpertise, research and a wide range of\nopportunities which are not available to\nsmaller real estate managers.\n\nOur 215-strong Real Estate Team includes\nmore than 140 investment professionals,\nwho have an average of over 15 years’\nexperience in the industry.\u00B2 The team\nbrings together the diverse skills needed\nto compete successfully in the world’s\nvaried and complex real estate markets.\n\nOur professional judgement, which is\nbacked up by proven and repeatable\ninvestment processes, combines with our\nscale and experience to achieve one aim:\nthe delivery of strong performance for\nour clients."];
    footnotes.text = [NSString stringWithFormat:@"1. Aviva Investors ('Us', 'We', 'Our') is the name\nunder which a number of globally integrated\nasset management businesses operate."];
    caption.text = [NSString stringWithFormat:@"Alkotas Point, Budapest, Hungary"];
    innovation.text = [NSString stringWithFormat:@"Innovation"];
    innovationText.text = [NSString stringWithFormat:@"We were one of\nthe first real estate\nmanager to offer\npooled funds and global\nmulti-manager portfolios."];


    
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