//
//  SeventhPage.h
//  Aviva-iDetail
//
//  Created by Rob Randell on 24/07/2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SeventhPage : UIViewController

@property (nonatomic, retain) IBOutlet UILabel *title1;

@property (nonatomic, retain) IBOutlet UIButton *bioButton1;
@property (nonatomic, retain) IBOutlet UILabel *biotitle1;
@property (nonatomic, retain) IBOutlet UITextView *bio1;
@property (nonatomic, retain) IBOutlet UITextView *bioBlurbBold1;
@property (nonatomic, retain) IBOutlet UITextView *bioBlurbLight1;
@property (nonatomic, retain) IBOutlet UIImageView *bioBackground1;

@property (nonatomic, retain) IBOutlet UIButton *bioButton2;
@property (nonatomic, retain) IBOutlet UILabel *biotitle2;
@property (nonatomic, retain) IBOutlet UITextView *bio2;
@property (nonatomic, retain) IBOutlet UITextView *bioBlurbBold2;
@property (nonatomic, retain) IBOutlet UITextView *bioBlurbLight2;
@property (nonatomic, retain) IBOutlet UIImageView *bioBackground2;

@property (nonatomic, retain) IBOutlet UIButton *bioButton3;
@property (nonatomic, retain) IBOutlet UILabel *biotitle3;
@property (nonatomic, retain) IBOutlet UITextView *bio3;
@property (nonatomic, retain) IBOutlet UITextView *bioBlurbBold3;
@property (nonatomic, retain) IBOutlet UITextView *bioBlurbLight3;
@property (nonatomic, retain) IBOutlet UIImageView *bioBackground3;

- (IBAction)showBlurb:(UIButton *)sender;

@end
