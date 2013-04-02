//
//  FifthPage.m
//  Aviva-iDetail
//
//  Created by Rob Randell on 23/07/2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "FifthPage.h"

@interface FifthPage ()

@end

@implementation FifthPage
@synthesize title1, title2, subtitle, awardTitle, awardBlurb, footnote;
@synthesize buttonLabel1, buttonLabel2, buttonLabel3;
@synthesize photos, photoImage, photoLabel;

- (IBAction)awardBlurb:(UIButton *)sender {
    
    int tag = sender.tag;
    
    if (tag == 201) {
        awardTitle.text = [NSString stringWithFormat:@"Property Manager of the Year at the UK Pensions Awards 2011"];
        awardBlurb.text = [NSString stringWithFormat:@"Based on innovation, communications, performance and/or benefits to clients and service."];
    }
    else if (tag == 202) {
        awardTitle.text = [NSString stringWithFormat:@"UK Property winner at the Pension and Investment Providers Awards 2011"];
        awardBlurb.text = [NSString stringWithFormat:@"The awards seek to recognise excellence of providers of products and services to UK occupational pension."];
    }
    else if (tag == 203) {
        awardTitle.text = [NSString stringWithFormat:@"Asia Asset Management Best of the Best Awards 2010. Most Innovative Award – Singapore"];
        awardBlurb.text = [NSString stringWithFormat:@"Awarded to one of Aviva Investors Asia Pacific property funds. Based on product design features, benefits to investors (either retail or institutional), ease of understanding, assets raised for the product and its market impact."];
    }
    else if (tag == 204) {
        awardTitle.text = [NSString stringWithFormat:@"Europe Fund of Funds/Secondaries Firm of the Year at the 2010 Global PERE Awards"];
        awardBlurb.text = [NSString stringWithFormat:@"The award was in recognition of Aviva Investors real estate multi-manager capability and our expertise in trading on secondary markets in Europe."];
    }
    else if (tag == 205) {
        awardTitle.text = [NSString stringWithFormat:@"IPD/IPF UK Property Investment Awards 2010 and 2011"];
        awardBlurb.text = [NSString stringWithFormat:@"Specialist Pooled Funds and Traditional Estates (above £500m, December 2009 and 2010) Awarded to one of Aviva Investors strategies investing in healthcare as the fund with the highest three-year annualised relative return versus the appropriate market sector benchmark."];
    }
    else {
        awardTitle.text = [NSString stringWithFormat:@"IPD/IPF UK Property Investment Awards 2009"];
        awardBlurb.text = [NSString stringWithFormat:@"Balanced Pooled & Traditional Funds (£100-£350m) Awarded to an Aviva Investors segregated mandate as the fund with the highest three-year annualised return including indirects (excluding years of portfolio set-up & portfolio sale)."];
    }
}

- (IBAction)enlargePhoto:(UIButton *)sender {
    
    int tag = sender.tag;
    
    [self.view bringSubviewToFront:photos];
    
    [UIView animateWithDuration:1.0 
                          delay:0.0 
                        options:UIViewAnimationCurveEaseIn 
                     animations:^{ 
                         photos.alpha = 1.0;
                     }
                     completion:^(BOOL finished) {
                         [photos setAlpha:1.0];
                     }];
    
    if (tag == 101) {
        photoLabel.text = [NSString stringWithFormat:@"Investor Tutor Awards"];
        photoImage.image = [UIImage imageNamed:@"awardPhoto_2.png"];
    }
    else if (tag == 102) {
        photoLabel.text = [NSString stringWithFormat:@"Investor Tutor Awards"];
        photoImage.image = [UIImage imageNamed:@"awardPhoto_1.png"];
    } else {
        photoLabel.text = [NSString stringWithFormat:@"Property Awards"];
        photoImage.image = [UIImage imageNamed:@"awardPhoto_3.png"];
    }
}

- (IBAction)closePhoto:(UIButton *)sender {
    
    [photos setAlpha:0.0f];
    
}

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
    //UIColor *avivaBlue = [UIColor colorWithRed:0.15 green:0.23 blue:0.53 alpha:1.0];
    UIColor *avivaGrey = [UIColor colorWithRed:0.32 green:0.38 blue:0.44 alpha:1.0];
    UIColor *avivaWhite = [UIColor whiteColor];
    
    NSString *fontName_Lgt = @"FrutigerLTStd-Light";
    NSString *fontName_Hvy = @"FrutigerLTStd-Bold";
    
    title1.textColor = [UIColor blackColor];
    title2.textColor = [UIColor blackColor];
    subtitle.textColor = avivaGrey;
    awardTitle.textColor = avivaYellow;
    awardBlurb.textColor = avivaWhite;
    footnote.textColor = [UIColor blackColor];
    buttonLabel1.textColor = [UIColor blackColor];
    buttonLabel2.textColor = [UIColor blackColor];
    buttonLabel3.textColor = [UIColor blackColor];
    photoLabel.textColor = [UIColor blackColor];

    title1.font = [UIFont fontWithName:fontName_Lgt size:32.0];
    title2.font = [UIFont fontWithName:fontName_Lgt size:32.0];
    subtitle.font = [UIFont fontWithName:fontName_Lgt size:15.0];
    awardTitle.font = [UIFont fontWithName:fontName_Hvy size:15.0];
    awardBlurb.font = [UIFont fontWithName:fontName_Lgt size:15.0];
    footnote.font = [UIFont fontWithName:fontName_Lgt size:12.0];
    buttonLabel1.font = [UIFont fontWithName:fontName_Lgt size:12.0];
    buttonLabel2.font = [UIFont fontWithName:fontName_Lgt size:12.0];
    buttonLabel3.font = [UIFont fontWithName:fontName_Lgt size:12.0];
    photoLabel.font = [UIFont fontWithName:fontName_Lgt size:12.0];

    title1.text = [[NSString stringWithFormat:@"Award-Winning Real"] uppercaseString];
    title2.text = [[NSString stringWithFormat:@"Estate Management"] uppercaseString];
    subtitle.text = [NSString stringWithFormat:@"Our success in managing real estate investments has been recognised by numerous industry awards."];
    awardTitle.text = [NSString stringWithFormat:@"IPD/IPF UK Property\nInvestment Awards\n2010 and 2011"];
    awardBlurb.text = [NSString stringWithFormat:@"Specialist Pooled Funds and Traditional Estates (above £500m, December 2009 and 2010) Awarded to one of Aviva Investors strategies investing in healthcare as the fund with the highest three-year annualised relative return versus the appropriate market sector benchmark."];
    footnote.text = [NSString stringWithFormat:@"Past performance is not a guide to the future."];
    
    buttonLabel1.text = [NSString stringWithFormat:@"Investor Tutor Awards"];
    buttonLabel2.text = [NSString stringWithFormat:@"Investor Tutor Awards"];
    buttonLabel3.text = [NSString stringWithFormat:@"Property Awards"];
    
    [photos setAlpha:0.0f];
    
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
