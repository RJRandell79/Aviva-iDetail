//
//  ThirdPage.h
//  Aviva-iDetail
//
//  Created by Rob Randell on 19/07/2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MediaPlayer/MediaPlayer.h>

@interface ThirdPage : UIViewController

@property (nonatomic, retain) IBOutlet UILabel *title1;
@property (nonatomic, retain) IBOutlet UILabel *title2;

@property (nonatomic, retain) IBOutlet UITextView *subtitle;

@property (nonatomic, retain) IBOutlet UILabel *paraHeading1;
@property (nonatomic, retain) IBOutlet UITextView *para1;

@property (nonatomic, retain) IBOutlet UITextView *footnotes;

@property (nonatomic, retain) IBOutlet UILabel *innovation;
@property (nonatomic, retain) IBOutlet UITextView *innovationText;
@property (nonatomic, retain) IBOutlet UILabel *caption;

@property (nonatomic, retain) MPMoviePlayerController *moviePlayer;

- (IBAction)playMovie:(id)sender;

@end