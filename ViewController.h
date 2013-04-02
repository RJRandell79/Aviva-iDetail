//
//  ViewController.h
//  Aviva-iDetail
//
//  Created by Rob Randell on 18/07/2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UIScrollViewDelegate> {
    
    
    
}

@property (nonatomic, retain) IBOutlet UIScrollView *scrollView;
@property (nonatomic, retain) IBOutlet UIPageControl *pageControl;

- (IBAction)changePage:(id)sender;

@end
