//
//  CustomPager.m
//  Aviva-iDetail
//
//  Created by Rob Randell on 18/07/2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "CustomPager.h"

@interface CustomPager ()

@end

@implementation CustomPager

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
    self.title = @"Aviva";
    
    [self addChildViewController:[self.storyboard instantiateViewControllerWithIdentifier:@"FrontPage"]];
    [self addChildViewController:[self.storyboard instantiateViewControllerWithIdentifier:@"GlobalRealEstate"]];
    [self addChildViewController:[self.storyboard instantiateViewControllerWithIdentifier:@"GlobalInvestment"]];
    [self addChildViewController:[self.storyboard instantiateViewControllerWithIdentifier:@"ListeningClients"]];
    [self addChildViewController:[self.storyboard instantiateViewControllerWithIdentifier:@"AwardWinning"]];
    [self addChildViewController:[self.storyboard instantiateViewControllerWithIdentifier:@"CaseStudy"]];
    [self addChildViewController:[self.storyboard instantiateViewControllerWithIdentifier:@"TheTeam"]];

}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

@end
