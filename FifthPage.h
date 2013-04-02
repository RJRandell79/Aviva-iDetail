//
//  FifthPage.h
//  Aviva-iDetail
//
//  Created by Rob Randell on 23/07/2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FifthPage : UIViewController 

@property (nonatomic, retain) IBOutlet UILabel *title1;
@property (nonatomic, retain) IBOutlet UILabel *title2;

@property (nonatomic, retain) IBOutlet UITextView *subtitle;

@property (nonatomic, retain) IBOutlet UITextView *awardTitle;
@property (nonatomic, retain) IBOutlet UITextView *awardBlurb;

@property (nonatomic, retain) IBOutlet UILabel *footnote;

@property (nonatomic, retain) IBOutlet UILabel *buttonLabel1;
@property (nonatomic, retain) IBOutlet UILabel *buttonLabel2;
@property (nonatomic, retain) IBOutlet UILabel *buttonLabel3;

@property (nonatomic, retain) IBOutlet UIView *photos;
@property (nonatomic, retain) IBOutlet UIImageView *photoImage;
@property (nonatomic, retain) IBOutlet UILabel *photoLabel;

- (IBAction)awardBlurb:(UIButton *)sender;
- (IBAction)enlargePhoto:(UIButton *)sender;
- (IBAction)closePhoto:(UIButton *)sender;

@end
