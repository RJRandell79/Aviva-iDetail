//
//  FirstPage.h
//  Aviva-iDetail
//
//  Created by Rob Randell on 18/07/2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FirstPage : UIViewController

@property (nonatomic, retain) IBOutlet UILabel *title1;
@property (nonatomic, retain) IBOutlet UILabel *title2;
@property (nonatomic, retain) IBOutlet UILabel *title3;
@property (nonatomic, retain) IBOutlet UILabel *title4;

@property (nonatomic, retain) IBOutlet UITextView *quoteTextView;
@property (nonatomic, retain) IBOutlet UITextView *disclaimerTextView;
@property (nonatomic, retain) IBOutlet UILabel *webAddress;

@property (nonatomic, retain) IBOutlet UIButton *urlLink;

- (IBAction)openWeb:(UIButton *)sender;

@end
