//
//  SeventhPage.m
//  Aviva-iDetail
//
//  Created by Rob Randell on 24/07/2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "SeventhPage.h"

@interface SeventhPage ()

@end

@implementation SeventhPage
@synthesize title1, bioButton1, biotitle1, bio1, bioBlurbBold1, bioBlurbLight1, bioBackground1, bioButton2, biotitle2, bio2, bioBlurbBold2, bioBlurbLight2, bioBackground2, bioButton3, biotitle3, bio3, bioBlurbBold3, bioBlurbLight3, bioBackground3;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (IBAction)showBlurb:(UIButton *)sender {
    
    int tag = sender.tag;
    
    if (tag == 101) {
                
        [UIView animateWithDuration:1.0 
                              delay:0.0 
                            options:UIViewAnimationCurveEaseIn 
                         animations:^{ 
                             bioBackground1.alpha = 1.0;
                             bioBlurbBold1.alpha = 1.0;
                             bioBlurbLight1.alpha = 1.0;
                         }
                         completion:^(BOOL finished) {
                             [bioBackground1 setAlpha:1.0];
                             [bioBlurbBold1 setAlpha:1.0];
                             [bioBlurbLight1 setAlpha:1.0];
                         }];
        
        [UIView animateWithDuration:1.0 
                              delay:0.0 
                            options:UIViewAnimationCurveEaseOut 
                         animations:^{ 
                             bioBackground2.alpha = 0.0;
                             bioBlurbBold2.alpha = 0.0;
                             bioBlurbLight2.alpha = 0.0;
                             bioBackground3.alpha = 0.0;
                             bioBlurbBold3.alpha = 0.0;
                             bioBlurbLight3.alpha = 0.0;
                         }
                         completion:^(BOOL finished) {
                             [bioBackground2 setAlpha:0.0];
                             [bioBlurbBold2 setAlpha:0.0];
                             [bioBlurbLight2 setAlpha:0.0];
                             [bioBackground3 setAlpha:0.0];
                             [bioBlurbBold3 setAlpha:0.0];
                             [bioBlurbLight3 setAlpha:0.0];
                         }];
        
    } else if (tag == 102) {
        
        [UIView animateWithDuration:1.0 
                              delay:0.0 
                            options:UIViewAnimationCurveEaseIn 
                         animations:^{ 
                             bioBackground2.alpha = 1.0;
                             bioBlurbBold2.alpha = 1.0;
                             bioBlurbLight2.alpha = 1.0;
                         }
                         completion:^(BOOL finished) {
                             [bioBackground2 setAlpha:1.0];
                             [bioBlurbBold2 setAlpha:1.0];
                             [bioBlurbLight2 setAlpha:1.0];
                         }];
        
        [UIView animateWithDuration:1.0 
                              delay:0.0 
                            options:UIViewAnimationCurveEaseOut 
                         animations:^{ 
                             bioBackground1.alpha = 0.0;
                             bioBlurbBold1.alpha = 0.0;
                             bioBlurbLight1.alpha = 0.0;
                             bioBackground3.alpha = 0.0;
                             bioBlurbBold3.alpha = 0.0;
                             bioBlurbLight3.alpha = 0.0;
                         }
                         completion:^(BOOL finished) {
                             [bioBackground1 setAlpha:0.0];
                             [bioBlurbBold1 setAlpha:0.0];
                             [bioBlurbLight1 setAlpha:0.0];
                             [bioBackground3 setAlpha:0.0];
                             [bioBlurbBold3 setAlpha:0.0];
                             [bioBlurbLight3 setAlpha:0.0];
                         }];
        
    } else {  
        
        [UIView animateWithDuration:1.0 
                                  delay:0.0 
                                options:UIViewAnimationCurveEaseIn 
                             animations:^{ 
                                 bioBackground3.alpha = 1.0;
                                 bioBlurbBold3.alpha = 1.0;
                                 bioBlurbLight3.alpha = 1.0;
                             }
                             completion:^(BOOL finished) {
                                 [bioBackground3 setAlpha:1.0];
                                 [bioBlurbBold3 setAlpha:1.0];
                                 [bioBlurbLight3 setAlpha:1.0];
                             }];
        
        [UIView animateWithDuration:1.0 
                              delay:0.0 
                            options:UIViewAnimationCurveEaseOut 
                         animations:^{ 
                             bioBackground1.alpha = 0.0;
                             bioBlurbBold1.alpha = 0.0;
                             bioBlurbLight1.alpha = 0.0;
                             bioBackground2.alpha = 0.0;
                             bioBlurbBold2.alpha = 0.0;
                             bioBlurbLight2.alpha = 0.0;
                         }
                         completion:^(BOOL finished) {
                             [bioBackground1 setAlpha:0.0];
                             [bioBlurbBold1 setAlpha:0.0];
                             [bioBlurbLight1 setAlpha:0.0];
                             [bioBackground2 setAlpha:0.0];
                             [bioBlurbBold2 setAlpha:0.0];
                             [bioBlurbLight2 setAlpha:0.0];
                         }];
    }
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    //UIColor *avivaYellow = [UIColor colorWithRed:0.99 green:0.85 blue:0 alpha:1.0];
    //UIColor *avivaBlue = [UIColor colorWithRed:0.15 green:0.23 blue:0.53 alpha:1.0];
    //UIColor *avivaGrey = [UIColor colorWithRed:0.32 green:0.38 blue:0.44 alpha:1.0];
    //UIColor *avivaWhite = [UIColor whiteColor];
    
    NSString *fontName_Lgt = @"FrutigerLTStd-Light";
    NSString *fontName_Hvy = @"FrutigerLTStd-Bold";
    
    title1.textColor = [UIColor blackColor];
    
    biotitle1.textColor = [UIColor blackColor];
    bio1.textColor = [UIColor blackColor];
    bioBlurbBold1.textColor = [UIColor blackColor];
    bioBlurbLight1.textColor = [UIColor blackColor];
    
    biotitle2.textColor = [UIColor blackColor];
    bio2.textColor = [UIColor blackColor];
    bioBlurbBold2.textColor = [UIColor blackColor];
    bioBlurbLight2.textColor = [UIColor blackColor];
    
    biotitle3.textColor = [UIColor blackColor];
    bio3.textColor = [UIColor blackColor];
    bioBlurbBold3.textColor = [UIColor blackColor];
    bioBlurbLight3.textColor = [UIColor blackColor];
    
    title1.font = [UIFont fontWithName:fontName_Lgt size:32.0];
    
    biotitle1.font = [UIFont fontWithName:fontName_Hvy size:10.0];
    bio1.font = [UIFont fontWithName:fontName_Lgt size:10.0];
    bioBlurbBold1.font = [UIFont fontWithName:fontName_Hvy size:9.0];
    bioBlurbLight1.font = [UIFont fontWithName:fontName_Lgt size:9.0];
    
    biotitle2.font = [UIFont fontWithName:fontName_Hvy size:10.0];
    bio2.font = [UIFont fontWithName:fontName_Lgt size:10.0];
    bioBlurbBold2.font = [UIFont fontWithName:fontName_Hvy size:9.0];
    bioBlurbLight2.font = [UIFont fontWithName:fontName_Lgt size:9.0];
    
    biotitle3.font = [UIFont fontWithName:fontName_Hvy size:10.0];
    bio3.font = [UIFont fontWithName:fontName_Lgt size:10.0];
    bioBlurbBold3.font = [UIFont fontWithName:fontName_Hvy size:9.0];
    bioBlurbLight3.font = [UIFont fontWithName:fontName_Lgt size:9.0];
    
    title1.text = [[NSString stringWithFormat:@"The Team"] uppercaseString];
    
    biotitle1.text = [NSString stringWithFormat:@"Phil Ellis"];
    bio1.text = [NSString stringWithFormat:@"Head of Real Estate Client\nPortfolio Management\nAviva Investors\nTel: TBA\nMob: TBA\nphil.ellis@avivainvestors.com"];
    bioBlurbBold1.text = [NSString stringWithFormat:@"After a career as a fund manager, where he was responsible amongst other things for the setting up the multi-manager team, Phil is now responsible for Aviva Investors institutional real estate clients and for the development of the Aviva Investors real estate fund management business."];
    bioBlurbLight1.text = [NSString stringWithFormat:@"Phil advises public sector and corporate pension fund clients on their direct and indirect real estate holdings and has been closely involved in all pension fund multi-manager and segregated client mandates. Phil is a chartered surveyor and sits on the property panel of the National Association of Pension Funds."];
    
    biotitle2.text = [NSString stringWithFormat:@"David Skinner"];
    bio2.text = [NSString stringWithFormat:@"Investment Strategy and Research\nDirector – Real Estate\nAviva Investors\nTel: TBA\nMob: TBA\ndavid.skinner@avivainvestors.com"];
    bioBlurbBold2.text = [NSString stringWithFormat:@"David is responsible for the management of the Aviva Investors real estate investment strategy and research team. "];
    bioBlurbLight2.text = [NSString stringWithFormat:@"David has the remit to further enhance the UK and European strategy and research capability and co-ordinates global asset allocation discussions and assists in allocations across direct, unlisted funds and listed securities."];
    
    biotitle3.text = [NSString stringWithFormat:@"Chris Laxton"];
    bio3.text = [NSString stringWithFormat:@"Real Estate Investment Director\nAviva Investors\nTel: TBA\nMob: TBA\nchris.laxton@avivainvestors.com"];
    bioBlurbBold3.text = [NSString stringWithFormat:@"Chris is responsible for initiating and overseeing the implementation of new real estate product and service initiatives."];
    bioBlurbLight3.text = [NSString stringWithFormat:@"Chris set up the UK’s first Authorised Property Unit Trust (Aviva Investors Property Trust) in 1991 before spending 2 years in New Zealand where he was responsible for restructuring Aviva Investors existing property portfolios. In 1994 Chris became responsible for the external property funds team and has been responsible for the global business development team since 2008. Chris is a Member of the Royal Institution of Chartered Surveyors and a Member of the Investment Property Forum. He was also was Chairman of the Association of Real Estate Funds (formerly known as the Association of Property Unit Trusts) in 2004 and 2005."];
    
    [bioBackground1 setAlpha:0.0f];
    [bioBackground2 setAlpha:0.0f];
    [bioBackground3 setAlpha:0.0f];
    [bioBlurbBold1 setAlpha:0.0f];
    [bioBlurbBold2 setAlpha:0.0f];
    [bioBlurbBold3 setAlpha:0.0f];
    [bioBlurbLight1 setAlpha:0.0f];
    [bioBlurbLight2 setAlpha:0.0f];
    [bioBlurbLight3 setAlpha:0.0f];
    
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
