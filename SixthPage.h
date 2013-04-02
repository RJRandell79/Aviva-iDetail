//
//  SixthPage.h
//  Aviva-iDetail
//
//  Created by Rob Randell on 19/07/2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SixthPage : UIViewController {
    
    UIWebView *table;
    UIImageView *stockholmBar;
    UIImageView *parisBar;
    UIImageView *newyorkBar;
    UIImageView *sydneyBar;
    UIImageView *tokyoBar;
    UIImageView *hongkongBar;
    UIImageView *milanBar;
    UIImageView *frankfurtBar;
    
}

@property (nonatomic, retain) IBOutlet UILabel *title1;
@property (nonatomic, retain) IBOutlet UILabel *title2;

@property (nonatomic, retain) IBOutlet UITextView *subtitle;

@property (nonatomic, retain) IBOutlet UILabel *paraHeading1;
@property (nonatomic, retain) IBOutlet UITextView *para1;
@property (nonatomic, retain) IBOutlet UITextView *para2;

@property (nonatomic, retain) IBOutlet UILabel *graphTitle;
@property (nonatomic, retain) IBOutlet UILabel *graphSource;
@property (nonatomic, retain) IBOutlet UITextView *graphAxisY;
@property (nonatomic, retain) IBOutlet UILabel *graphAxisX0;
@property (nonatomic, retain) IBOutlet UILabel *graphAxisX1;
@property (nonatomic, retain) IBOutlet UILabel *graphAxisX2;
@property (nonatomic, retain) IBOutlet UILabel *graphAxisX3;
@property (nonatomic, retain) IBOutlet UILabel *graphAxisX4;
@property (nonatomic, retain) IBOutlet UILabel *graphAxisX5;
@property (nonatomic, retain) IBOutlet UILabel *graphAxisX6;
@property (nonatomic, retain) IBOutlet UILabel *graphAxisX7;
@property (nonatomic, retain) IBOutlet UILabel *graphAxisX8;

@property (nonatomic, retain) IBOutlet UIButton *openTable;

@property (nonatomic, retain) IBOutlet UIWebView *IPDTable;
@property (nonatomic, retain) IBOutlet UIView *IPDTableView;

- (IBAction)openTable:(UIButton *)sender;
- (IBAction)closeTable:(UIButton *)sender;

@end