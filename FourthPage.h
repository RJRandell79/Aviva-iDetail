//
//  FourthPage.h
//  Aviva-iDetail
//
//  Created by Rob Randell on 19/07/2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FourthPage : UIViewController

@property (nonatomic, retain) IBOutlet UILabel *title1;
@property (nonatomic, retain) IBOutlet UILabel *title2;

@property (nonatomic, retain) IBOutlet UITextView *subtitle;
@property (nonatomic, retain) IBOutlet UITextView *para;

@property (nonatomic, retain) IBOutlet UILabel *trusted;
@property (nonatomic, retain) IBOutlet UITextView *trustedText;
@property (nonatomic, retain) IBOutlet UILabel *expert;
@property (nonatomic, retain) IBOutlet UITextView *expertText;
@property (nonatomic, retain) IBOutlet UILabel *responsible;
@property (nonatomic, retain) IBOutlet UITextView *responsibleText;

@property (nonatomic, retain) IBOutlet UILabel *chartTitle;
@property (nonatomic, retain) IBOutlet UIWebView *pieChart;
@property (nonatomic, retain) IBOutlet UILabel *chartSource;

@end