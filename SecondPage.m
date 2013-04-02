//
//  SecondPage.m
//  Aviva-iDetail
//
//  Created by Rob Randell on 18/07/2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "SecondPage.h"

@interface SecondPage ()

@end

@implementation SecondPage
@synthesize title1, title2, title3, subtitle;
@synthesize us_btn, eu_btn, au_btn;
@synthesize countryInfo, mapOverlay;
@synthesize countryLabel, countriesTextView;
@synthesize officeView, officeName, officeImage, close_btn, closeLabel;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)awakeFromNib
{
    [super awakeFromNib];
}

- (void)dealloc {
    
    [super dealloc];
    
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
        
    UIColor *avivaYellow = [UIColor colorWithRed:0.99 green:0.85 blue:0 alpha:1.0];
    UIColor *avivaGrey = [UIColor colorWithRed:0.32 green:0.38 blue:0.44 alpha:1.0];
    
    NSString *fontName_Lgt = @"FrutigerLTStd-Light";
    NSString *fontName_Hvy = @"FrutigerLTStd-Bold";
    
    title1.textColor = [UIColor blackColor];
    title2.textColor = [UIColor blackColor];
    title3.textColor = [UIColor blackColor];
    subtitle.textColor = avivaGrey;
    countryLabel.textColor = avivaYellow;
    countriesTextView.textColor = [UIColor whiteColor];
    officeName.textColor = [UIColor blackColor];
    closeLabel.textColor = [UIColor blackColor];
    
    title1.font = [UIFont fontWithName:fontName_Lgt size:32.0];
    title2.font = [UIFont fontWithName:fontName_Lgt size:32.0];
    title3.font = [UIFont fontWithName:fontName_Lgt size:32.0];
    subtitle.font = [UIFont fontWithName:fontName_Lgt size:15.0];
    countryLabel.font = [UIFont fontWithName:fontName_Hvy size:15.0];
    countriesTextView.font = [UIFont fontWithName:fontName_Lgt size:15.0];
    officeName.font = [UIFont fontWithName:fontName_Lgt size:15.0];
    closeLabel.font = [UIFont fontWithName:fontName_Lgt size:12.0];
    
    title1.text = [[NSString stringWithFormat:@"Global Real"] uppercaseString];
    title2.text = [[NSString stringWithFormat:@"Estate A World"] uppercaseString];
    title3.text = [[NSString stringWithFormat:@"Of Opportunity"] uppercaseString];
    subtitle.text = [NSString stringWithFormat:@"Our real estate team is based in six locations across the UK,\nEurope, North America and Asia-Pacific."];
    closeLabel.text = [NSString stringWithFormat:@"Close"];
    
    countryInfo.alpha = 0.0;
    countryLabel.alpha = 0.0;
    countriesTextView.alpha = 0.0;
    mapOverlay.alpha = 0.0;
    officeView.alpha = 0.0; 
    close_btn.alpha = 0.0;
    closeLabel.alpha = 0.0;

}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    //self.carousel = nil;
}

- (IBAction)officeSelect:(UIButton *)sender {
    
    int officeTag = sender.tag;
    
    [self.view bringSubviewToFront:officeView];
    
    [UIView animateWithDuration:1.0 
                          delay:0.0 
                        options:UIViewAnimationCurveEaseIn 
                     animations:^{ 
                         officeView.alpha = 1.0;
                     }
                     completion:^(BOOL finished) {
                         [officeView setAlpha:1.0];
                     }];
    
    if (officeTag == 201) {
        officeName.text = [NSString stringWithFormat:@"Cannstatt, Germany"];
        officeImage.image = [UIImage imageNamed:@"CannstattGermany_full.png"];
    }
    if (officeTag == 202) {
        officeName.text = [NSString stringWithFormat:@"Luchow, Germany"];
        officeImage.image = [UIImage imageNamed:@"LuchowGermany_full.png"];
    }
    if (officeTag == 203) {
        officeName.text = [NSString stringWithFormat:@"Megaron, Germany"];
        officeImage.image = [UIImage imageNamed:@"MegaronGermany_full.png"];
    }
    if (officeTag == 204) {
        officeName.text = [NSString stringWithFormat:@"Bermondsey, London"];
        officeImage.image = [UIImage imageNamed:@"BermondseyLondon_full.png"];
    }
    if (officeTag == 205) {
        officeName.text = [NSString stringWithFormat:@"Paddington Central, London"];
        officeImage.image = [UIImage imageNamed:@"PaddingtonCentralLondon_full.png"];
    }
    if (officeTag == 206) {
        officeName.text = [NSString stringWithFormat:@"Heathrow, London"];
        officeImage.image = [UIImage imageNamed:@"HeathrowLondon_full.png"];
    }
    if (officeTag == 207) {
        officeName.text = [NSString stringWithFormat:@"Summit House, London"];
        officeImage.image = [UIImage imageNamed:@"SummitHouseLondon_full.png"];
    }
    if (officeTag == 208) {
        officeName.text = [NSString stringWithFormat:@"Carpe Diem, Paris"];
        officeImage.image = [UIImage imageNamed:@"CarpeDiemParis_full.png"];
    }
    if (officeTag == 209) {
        officeName.text = [NSString stringWithFormat:@"Guersant, Paris"];
        officeImage.image = [UIImage imageNamed:@"GuersantParis_full.png"];
    }
    if (officeTag == 210) {
        officeName.text = [NSString stringWithFormat:@"Halevy, Paris"];
        officeImage.image = [UIImage imageNamed:@"HalevyParis_full.png"];
    }
    if (officeTag == 211) {
        officeName.text = [NSString stringWithFormat:@"Metzanine, France"];
        officeImage.image = [UIImage imageNamed:@"MetzanineFrance_full.png"];
    }
    if (officeTag == 212) {
        officeName.text = [NSString stringWithFormat:@"Busitel, Netherlands"];
        officeImage.image = [UIImage imageNamed:@"BusitelNetherlands_full.png"];
    }
    if (officeTag == 213) {
        officeName.text = [NSString stringWithFormat:@"Liljeholmen, Sweden"];
        officeImage.image = [UIImage imageNamed:@"LiljeholmenSweden_full.png"];
    }
    if (officeTag == 301) {
        officeName.text = [NSString stringWithFormat:@"Commerce Point, Singapore"];
        officeImage.image = [UIImage imageNamed:@"CommercePointSingapore_full.png"];
    }
    if (officeTag == 302) {
        officeName.text = [NSString stringWithFormat:@"Kanda Matsunagacho, Tokyo"];
        officeImage.image = [UIImage imageNamed:@"KandaMatsunagacho_full.png"];
    }
    if (officeTag == 303) {
        officeName.text = [NSString stringWithFormat:@"Olderfleet Building, Australia"];
        officeImage.image = [UIImage imageNamed:@"OlderfleetBuildingAust_full.png"];
    }
    if (officeTag == 304) {
        officeName.text = [NSString stringWithFormat:@"Sydney, Australia"];
        officeImage.image = [UIImage imageNamed:@"SydneyAust_full.png"];
    }
}

- (IBAction)closeGallery:(UIButton *)sender {
    
    [cannstattGermany setAlpha:0.0f];
    [luchowGermany setAlpha:0.0f];
    [megaronGermany setAlpha:0.0f];
    [bermondseyLondon setAlpha:0.0f];
    [paddingtonCentral setAlpha:0.0f];
    [heathrowLondon setAlpha:0.0f];
    [summitHouseLondon setAlpha:0.0f];
    [carpeDiemParis setAlpha:0.0f];
    [guersantParis setAlpha:0.0f];
    [halevyParis setAlpha:0.0f];
    [metzanineFrance setAlpha:0.0f];
    [busitelNL setAlpha:0.0f];
    [liljeholmenSweden setAlpha:0.0f];
     
    [commercePoint setAlpha:0.0f];
    [kandaMat setAlpha:0.0f];
    [olderfleetAust setAlpha:0.0f];
    [sydneyAust setAlpha:0.0f];
    
    [mapOverlay setAlpha:0.0f];
    [close_btn setAlpha:0.0f];
    [closeLabel setAlpha:0.0f];
    
}

- (IBAction)closeOffice:(UIButton *)sender {
    
    [officeView setAlpha:0.0f];
    
}

- (IBAction)regionSelect:(UIButton *)sender {
    
    [UIImageView animateWithDuration:2.0 
                               delay:0.0 
                             options:UIViewAnimationCurveEaseIn 
                          animations:^{ 
                              countryInfo.alpha = 0.75;
                              mapOverlay.alpha = 0.75;
                          }
                          completion:^(BOOL finished) {
                              [countryInfo setAlpha:0.75];
                              [mapOverlay setAlpha:0.75];
                          }];
    
    [UIButton animateWithDuration:2.0 
                            delay:0.0 
                          options:UIViewAnimationCurveEaseIn 
                       animations:^{ 
                           close_btn.alpha = 1.0;
                       }
                       completion:^(BOOL finished) {
                           [close_btn setAlpha:1.0];
                       }];
    
    [UILabel animateWithDuration:2.0 
                           delay:0.5 
                         options:UIViewAnimationCurveEaseIn 
                      animations:^{ 
                          countryLabel.alpha = 1.0;
                          closeLabel.alpha = 1.0;
                      }
                      completion:^(BOOL finished) {
                          [countryLabel setAlpha:1.0];
                          [closeLabel setAlpha:1.0];
                      }];
    
    [UITextView animateWithDuration:2.0
                              delay:0.5 
                            options:UIViewAnimationCurveEaseIn
                         animations:^{ 
                             countriesTextView.alpha = 1.0;
                         }
                         completion:^(BOOL finished) {
                             [countriesTextView setAlpha:1.0];
                         }];
    
    int buttonTag = sender.tag;
    
    if (buttonTag == 101) {  
        
        countryLabel.text = [NSString stringWithFormat:@"North America"];
        countriesTextView.text = [NSString stringWithFormat:@"To view US portfolios, contact Aviva Investors US offices"];
        
        UIImage *highlightedCountry = [UIImage imageNamed:@"country_us_hl.png"];
        UIImage *countryOne = [UIImage imageNamed:@"country_au.png"];
        UIImage *countryTwo = [UIImage imageNamed:@"country_eu.png"];
        
        [self.us_btn setEnabled:NO];
        [self.au_btn setEnabled:YES];
        [self.eu_btn setEnabled:YES];
        
        [self.us_btn setImage:highlightedCountry forState:UIControlStateDisabled];
        [self.au_btn setImage:countryOne forState:UIControlStateNormal];
        [self.eu_btn setImage:countryTwo forState:UIControlStateNormal];
        
        euroLocations = [[NSArray alloc] initWithObjects:cannstattGermany, luchowGermany, megaronGermany, bermondseyLondon, paddingtonCentral, heathrowLondon, summitHouseLondon, carpeDiemParis, guersantParis, halevyParis, metzanineFrance, busitelNL, liljeholmenSweden, nil];
        
        int fadeOutEuros = 0;
        
        while (fadeOutEuros < [euroLocations count]) {
                
            UIButton *locationButton = [euroLocations objectAtIndex:fadeOutEuros];
                
            [UIButton animateWithDuration:1.0
                                    delay:0.0 
                                  options:UIViewAnimationCurveEaseOut
                               animations:^{ 
                                   locationButton.alpha = 0.0;
                                   close_btn.alpha = 0.0;
                               }
                               completion:^(BOOL finished) {
                                   [locationButton setAlpha:0.0];
                                   [locationButton removeFromSuperview];
                                   [close_btn setAlpha:0.0];
                               }];
            
            [UIImageView animateWithDuration:1.0
                                       delay:0.0 
                                     options:UIViewAnimationCurveEaseOut
                                  animations:^{ 
                                      mapOverlay.alpha = 0.0;
                                  }
                                  completion:^(BOOL finished) {
                                      [mapOverlay setAlpha:0.0];
                                  }];
            
            [UILabel animateWithDuration:1.0
                                   delay:0.0 
                                 options:UIViewAnimationCurveEaseOut
                              animations:^{ 
                                  closeLabel.alpha = 0.0;
                              }
                              completion:^(BOOL finished) {
                                  [closeLabel setAlpha:0.0];
                              }];
                fadeOutEuros++;
            }
            
            asiaLocations = [[NSArray alloc] initWithObjects:commercePoint, kandaMat, olderfleetAust, sydneyAust, nil];
        
            int fadeOutAsia = 0;
            
            while (fadeOutAsia < [asiaLocations count]) {
                
                UIButton *locationButton = [asiaLocations objectAtIndex:fadeOutAsia];
                
                [UIButton animateWithDuration:1.0 
                                        delay:0.0 
                                      options:UIViewAnimationCurveEaseOut 
                                   animations:^{ 
                                       locationButton.alpha = 0.0; 
                                       close_btn.alpha = 0.0;
                                   }
                                   completion:^(BOOL finished) {
                                       [locationButton setAlpha:0.0];
                                       [locationButton removeFromSuperview];
                                       [close_btn setAlpha:0.0];
                                   }];
                
                [UIImageView animateWithDuration:1.0
                                           delay:0.0 
                                         options:UIViewAnimationCurveEaseOut
                                      animations:^{ 
                                          mapOverlay.alpha = 0.0;
                                      }
                                      completion:^(BOOL finished) {
                                          [mapOverlay setAlpha:0.0];
                                      }];
                
                [UILabel animateWithDuration:1.0
                                       delay:0.0 
                                     options:UIViewAnimationCurveEaseOut
                                  animations:^{ 
                                      closeLabel.alpha = 0.0;
                                  }
                                  completion:^(BOOL finished) {
                                      [closeLabel setAlpha:0.0];
                                  }];
                fadeOutAsia++;
            }
    }
    
    else if (buttonTag == 102) {
        
        countryLabel.text = [NSString stringWithFormat:@"Europe"];
        countriesTextView.text = [NSString stringWithFormat:@"Frankfurt, Germany\nLondon, UK\nParis, France\nStockholm, Sweden\nUtrecht, Netherlands"];
        
        UIImage *highlightedCountry = [UIImage imageNamed:@"country_eu_hl.png"];
        UIImage *countryOne = [UIImage imageNamed:@"country_us.png"];
        UIImage *countryTwo = [UIImage imageNamed:@"country_au.png"];     
        
        [self.us_btn setEnabled:YES];
        [self.au_btn setEnabled:YES];
        [self.eu_btn setEnabled:NO];
        
        [self.us_btn setImage:countryOne forState:UIControlStateNormal];
        [self.au_btn setImage:countryTwo forState:UIControlStateNormal];
        [self.eu_btn setImage:highlightedCountry forState:UIControlStateDisabled];
        
        cannstattGermany = [UIButton buttonWithType:UIButtonTypeCustom];
        cannstattGermany.frame = CGRectMake(661.0f, 51.0f, 100.0f, 100.0f);
        cannstattGermany.tag = 201;
        cannstattGermany.alpha = 0.0f;
        [cannstattGermany setImage:[UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"CannstattCarre" ofType:@"png"]] forState:UIControlStateNormal];
        [cannstattGermany addTarget:self
                          action:@selector(officeSelect:)
                forControlEvents:UIControlEventTouchUpInside];
        
        luchowGermany = [UIButton buttonWithType:UIButtonTypeCustom];
        luchowGermany.frame = CGRectMake(779.0f, 51.0f, 100.0f, 100.0f);
        luchowGermany.tag = 202;
        luchowGermany.alpha = 0.0f;
        [luchowGermany setImage:[UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"LuchowGermany" ofType:@"png"]] forState:UIControlStateNormal];
        [luchowGermany addTarget:self
                             action:@selector(officeSelect:)
                   forControlEvents:UIControlEventTouchUpInside];
        
        megaronGermany = [UIButton buttonWithType:UIButtonTypeCustom];
        megaronGermany.frame = CGRectMake(898.0f, 51.0f, 100.0f, 100.0f);
        megaronGermany.tag = 203;
        megaronGermany.alpha = 0.0f;
        [megaronGermany setImage:[UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"MegaronGermany" ofType:@"png"]] forState:UIControlStateNormal];
        [megaronGermany addTarget:self
                             action:@selector(officeSelect:)
                   forControlEvents:UIControlEventTouchUpInside];
        
        bermondseyLondon = [UIButton buttonWithType:UIButtonTypeCustom];
        bermondseyLondon.frame = CGRectMake(661.0f, 168.0f, 100.0f, 100.0f);
        bermondseyLondon.tag = 204;
        bermondseyLondon.alpha = 0.0f;
        [bermondseyLondon setImage:[UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"BermondseySqLondon" ofType:@"png"]] forState:UIControlStateNormal];
        [bermondseyLondon addTarget:self
                             action:@selector(officeSelect:)
                   forControlEvents:UIControlEventTouchUpInside];
        
        paddingtonCentral = [UIButton buttonWithType:UIButtonTypeCustom];
        paddingtonCentral.frame = CGRectMake(779.0f, 168.0f, 100.0f, 100.0f);
        paddingtonCentral.tag = 205;
        paddingtonCentral.alpha = 0.0f;
        [paddingtonCentral setImage:[UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"PaddingtonCentralLondon" ofType:@"png"]] forState:UIControlStateNormal];
        [paddingtonCentral addTarget:self
                             action:@selector(officeSelect:)
                   forControlEvents:UIControlEventTouchUpInside];
        
        heathrowLondon = [UIButton buttonWithType:UIButtonTypeCustom];
        heathrowLondon.frame = CGRectMake(897.0f, 168.0f, 100.0f, 100.0f);
        heathrowLondon.tag = 206;
        heathrowLondon.alpha = 0.0f;
        [heathrowLondon setImage:[UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"WCCHeathrow" ofType:@"png"]] forState:UIControlStateNormal];
        [heathrowLondon addTarget:self
                              action:@selector(officeSelect:)
                    forControlEvents:UIControlEventTouchUpInside];
        
        summitHouseLondon = [UIButton buttonWithType:UIButtonTypeCustom];
        summitHouseLondon.frame = CGRectMake(661.0f, 286.0f, 100.0f, 100.0f);
        summitHouseLondon.tag = 207;
        summitHouseLondon.alpha = 0.0f;
        [summitHouseLondon setImage:[UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"SummitHouseLondon" ofType:@"png"]] forState:UIControlStateNormal];
        [summitHouseLondon addTarget:self
                           action:@selector(officeSelect:)
                 forControlEvents:UIControlEventTouchUpInside];
        
        carpeDiemParis = [UIButton buttonWithType:UIButtonTypeCustom];
        carpeDiemParis.frame = CGRectMake(779.0f, 286.0f, 100.0f, 100.0f);
        carpeDiemParis.tag = 208;
        carpeDiemParis.alpha = 0.0f;
        [carpeDiemParis setImage:[UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"CarpeDiemParis" ofType:@"png"]] forState:UIControlStateNormal];
        [carpeDiemParis addTarget:self
                              action:@selector(officeSelect:)
                    forControlEvents:UIControlEventTouchUpInside];
        
        guersantParis = [UIButton buttonWithType:UIButtonTypeCustom];
        guersantParis.frame = CGRectMake(897.0f, 286.0f, 100.0f, 100.0f);
        guersantParis.tag = 209;
        guersantParis.alpha = 0.0f;
        [guersantParis setImage:[UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"GuersantParis" ofType:@"png"]] forState:UIControlStateNormal];
        [guersantParis addTarget:self
                              action:@selector(officeSelect:)
                    forControlEvents:UIControlEventTouchUpInside];
        
        halevyParis = [UIButton buttonWithType:UIButtonTypeCustom];
        halevyParis.frame = CGRectMake(661.0f, 408.0f, 100.0f, 100.0f);
        halevyParis.tag = 210;
        halevyParis.alpha = 0.0f;
        [halevyParis setImage:[UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"HalevyParis" ofType:@"png"]] forState:UIControlStateNormal];
        [halevyParis addTarget:self
                          action:@selector(officeSelect:)
                forControlEvents:UIControlEventTouchUpInside];
        
        metzanineFrance = [UIButton buttonWithType:UIButtonTypeCustom];
        metzanineFrance.frame = CGRectMake(779.0f, 408.0f, 100.0f, 100.0f);
        metzanineFrance.tag = 211;
        metzanineFrance.alpha = 0.0f;
        [metzanineFrance setImage:[UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"MetzanineFrance" ofType:@"png"]] forState:UIControlStateNormal];
        [metzanineFrance addTarget:self
                        action:@selector(officeSelect:)
              forControlEvents:UIControlEventTouchUpInside];
        
        busitelNL = [UIButton buttonWithType:UIButtonTypeCustom];
        busitelNL.frame = CGRectMake(897.0f, 408.0f, 100.0f, 100.0f);
        busitelNL.tag = 212;
        busitelNL.alpha = 0.0f;
        [busitelNL setImage:[UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"BusitelAmsterdamNL" ofType:@"png"]] forState:UIControlStateNormal];
        [busitelNL addTarget:self
                            action:@selector(officeSelect:)
                  forControlEvents:UIControlEventTouchUpInside];
        
        liljeholmenSweden = [UIButton buttonWithType:UIButtonTypeCustom];
        liljeholmenSweden.frame = CGRectMake(897.0f, 530.0f, 100.0f, 100.0f);
        liljeholmenSweden.tag = 213;
        liljeholmenSweden.alpha = 0.0f;
        [liljeholmenSweden setImage:[UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"LiljeholmenSweden" ofType:@"png"]] forState:UIControlStateNormal];
        [liljeholmenSweden addTarget:self
                            action:@selector(officeSelect:)
                  forControlEvents:UIControlEventTouchUpInside];
        
        [self.view addSubview:cannstattGermany];
        [self.view addSubview:luchowGermany];
        [self.view addSubview:megaronGermany];
        [self.view addSubview:bermondseyLondon];
        [self.view addSubview:paddingtonCentral];
        [self.view addSubview:heathrowLondon];
        [self.view addSubview:summitHouseLondon];
        [self.view addSubview:carpeDiemParis];
        [self.view addSubview:guersantParis];
        [self.view addSubview:halevyParis];
        [self.view addSubview:metzanineFrance];
        [self.view addSubview:busitelNL];
        [self.view addSubview:liljeholmenSweden];
        
        [cannstattGermany release];
        [luchowGermany release];
        [megaronGermany release];
        [bermondseyLondon release];
        [paddingtonCentral release];
        [heathrowLondon release];
        [summitHouseLondon release];
        [carpeDiemParis release];
        [guersantParis release];
        [halevyParis release];
        [metzanineFrance release];
        [busitelNL release];
        [liljeholmenSweden release];
        
        euroLocations = [[NSArray alloc] initWithObjects:cannstattGermany, luchowGermany, megaronGermany, bermondseyLondon, paddingtonCentral, heathrowLondon, summitHouseLondon, carpeDiemParis, guersantParis, halevyParis, metzanineFrance, busitelNL, liljeholmenSweden, nil];
        
        int i = 0;
        
        while (i < [euroLocations count]) {
            
            UIButton *locationButton = [euroLocations objectAtIndex:i];
            
            [UIButton animateWithDuration:2.0
                                    delay:1.0 
                                  options:UIViewAnimationCurveEaseIn
                               animations:^{ 
                                   locationButton.alpha = 1.0;
                               }
                               completion:^(BOOL finished) {
                                   [locationButton setAlpha:1.0];
                               }];
            i++;
        }
        
        asiaLocations = [[NSArray alloc] initWithObjects:commercePoint, kandaMat, olderfleetAust, sydneyAust, nil];
        
        if (commercePoint.alpha == 1.0) {
            
            int fadeOut = 0;
            
            while (fadeOut < [asiaLocations count]) {
                
                UIButton *locationButton = [asiaLocations objectAtIndex:fadeOut];
                
                [UIButton animateWithDuration:1.0 
                                        delay:0.0 
                                      options:UIViewAnimationCurveEaseOut 
                                   animations:^{ 
                                       locationButton.alpha = 0.0; 
                                   }
                                   completion:^(BOOL finished) {
                                       [locationButton setAlpha:0.0];
                                       [locationButton removeFromSuperview];
                                   }];
                fadeOut++;
            }
        }

    } else {
        
        countryLabel.text = [NSString stringWithFormat:@"Asia Pacific"];
        countriesTextView.text = [NSString stringWithFormat:@"Singapore, Singapore\nSydney, Australia\nTokyo, Japan"];
        
        UIImage *highlightedCountry = [UIImage imageNamed:@"country_au_hl.png"];
        UIImage *countryOne = [UIImage imageNamed:@"country_us.png"];
        UIImage *countryTwo = [UIImage imageNamed:@"country_eu.png"];   
        
        [self.us_btn setEnabled:YES];
        [self.au_btn setEnabled:NO];
        [self.eu_btn setEnabled:YES];
        
        [self.us_btn setImage:countryOne forState:UIControlStateNormal];
        [self.au_btn setImage:highlightedCountry forState:UIControlStateDisabled];
        [self.eu_btn setImage:countryTwo forState:UIControlStateNormal];
        
        commercePoint = [UIButton buttonWithType:UIButtonTypeCustom];
        commercePoint.frame = CGRectMake(661.0f, 168.0f, 100.0f, 100.0f);
        commercePoint.tag = 301;
        commercePoint.alpha = 0.0f;
        [commercePoint setImage:[UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"CommercePointSingapore" ofType:@"png"]] forState:UIControlStateNormal];
        [commercePoint addTarget:self
                          action:@selector(officeSelect:)
                forControlEvents:UIControlEventTouchUpInside];
        
        kandaMat = [UIButton buttonWithType:UIButtonTypeCustom];
        kandaMat.frame = CGRectMake(779.0f, 168.0f, 100.0f, 100.0f);
        kandaMat.tag = 302;
        kandaMat.alpha = 0.0f;
        [kandaMat setImage:[UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"KandaMatsunagachoTokyo" ofType:@"png"]] forState:UIControlStateNormal];
        [kandaMat addTarget:self
                     action:@selector(officeSelect:)
           forControlEvents:UIControlEventTouchUpInside];
        
        olderfleetAust = [UIButton buttonWithType:UIButtonTypeCustom];
        olderfleetAust.frame = CGRectMake(898.0f, 168.0f, 100.0f, 100.0f);
        olderfleetAust.tag = 303;
        olderfleetAust.alpha = 0.0f;
        [olderfleetAust setImage:[UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"OlderfleetBuildingAustralia" ofType:@"png"]] forState:UIControlStateNormal];
        [olderfleetAust addTarget:self
                           action:@selector(officeSelect:)
                 forControlEvents:UIControlEventTouchUpInside];
        
        sydneyAust = [UIButton buttonWithType:UIButtonTypeCustom];
        sydneyAust.frame = CGRectMake(661.0f, 286.0f, 100.0f, 100.0f);
        sydneyAust.tag = 304;
        sydneyAust.alpha = 0.0f;
        [sydneyAust setImage:[UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"SussexStSydney" ofType:@"png"]] forState:UIControlStateNormal];
        [sydneyAust addTarget:self
                           action:@selector(officeSelect:)
                 forControlEvents:UIControlEventTouchUpInside];
        
        [self.view addSubview:commercePoint];
        [self.view addSubview:kandaMat];
        [self.view addSubview:olderfleetAust];
        [self.view addSubview:sydneyAust];
        
        [commercePoint release];
        [kandaMat release];
        [olderfleetAust release];
        [sydneyAust release];
        
        asiaLocations = [[NSArray alloc] initWithObjects:commercePoint, kandaMat, olderfleetAust, sydneyAust, nil];
        
        int i = 0;
        
        while (i < [asiaLocations count]) {
            
            UIButton *locationButton = [asiaLocations objectAtIndex:i];
            
            [UIButton animateWithDuration:2.0
                                    delay:1.0 
                                  options:UIViewAnimationCurveEaseIn
                               animations:^{ 
                                   locationButton.alpha = 1.0;
                               }
                               completion:^(BOOL finished) {
                                   [locationButton setAlpha:1.0];
                               }];
            i++;
        }
        
        euroLocations = [[NSArray alloc] initWithObjects:cannstattGermany, luchowGermany, megaronGermany, bermondseyLondon, paddingtonCentral, heathrowLondon, summitHouseLondon, carpeDiemParis, guersantParis, halevyParis, metzanineFrance, busitelNL, liljeholmenSweden, nil];
        
        int fadeOut = 0;
        
        while (fadeOut < [euroLocations count]) {
            
            UIButton *locationButton = [euroLocations objectAtIndex:fadeOut];
            
            [UIButton animateWithDuration:1.0
                                    delay:0.0 
                                  options:UIViewAnimationCurveEaseOut
                               animations:^{ 
                                   locationButton.alpha = 0.0;
                               }
                               completion:^(BOOL finished) {
                                   [locationButton setAlpha:0.0];
                                   [locationButton removeFromSuperview];
                               }];
            fadeOut++;
        }
    }
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)orientation
{
    return (orientation != UIDeviceOrientationPortrait) &&
    (orientation != UIDeviceOrientationPortraitUpsideDown);
}

@end
