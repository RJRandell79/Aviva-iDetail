//
//  SecondPage.h
//  Aviva-iDetail
//
//  Created by Rob Randell on 18/07/2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SecondPage : UIViewController {
    
    UIButton *cannstattGermany;
    UIButton *luchowGermany;
    UIButton *megaronGermany;
    UIButton *bermondseyLondon;
    UIButton *paddingtonCentral;
    UIButton *heathrowLondon;
    UIButton *summitHouseLondon;
    UIButton *carpeDiemParis;
    UIButton *guersantParis;
    UIButton *halevyParis;
    UIButton *metzanineFrance;
    UIButton *busitelNL;
    UIButton *liljeholmenSweden;
    
    UIButton *commercePoint;
    UIButton *kandaMat;
    UIButton *olderfleetAust;
    UIButton *sydneyAust;
    
    NSArray *euroLocations;
    NSArray *asiaLocations;
        
}

@property (nonatomic, retain) IBOutlet UILabel *title1;
@property (nonatomic, retain) IBOutlet UILabel *title2;
@property (nonatomic, retain) IBOutlet UILabel *title3;
@property (nonatomic, retain) IBOutlet UITextView *subtitle;

@property (nonatomic, retain) IBOutlet UIImageView *countryInfo;
@property (nonatomic, retain) IBOutlet UIImageView *mapOverlay;

@property (nonatomic, retain) IBOutlet UILabel *countryLabel;
@property (nonatomic, retain) IBOutlet UITextView *countriesTextView;

@property (nonatomic, retain) IBOutlet UIButton *us_btn;
@property (nonatomic, retain) IBOutlet UIButton *eu_btn;
@property (nonatomic, retain) IBOutlet UIButton *au_btn;
@property (nonatomic, retain) IBOutlet UIButton *close_btn;

@property (nonatomic, retain) IBOutlet UIView *officeView;
@property (nonatomic, retain) IBOutlet UIImageView *officeImage;
@property (nonatomic, retain) IBOutlet UILabel *officeName;
@property (nonatomic, retain) IBOutlet UILabel *closeLabel;

- (IBAction)regionSelect:(UIButton *)sender;
- (IBAction)officeSelect:(UIButton *)sender;
- (IBAction)closeOffice:(UIButton *)sender;
- (IBAction)closeGallery:(UIButton *)sender;

@end
