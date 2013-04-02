//
//  ViewController.m
//  Aviva-iDetail
//
//  Created by Rob Randell on 18/07/2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (assign) BOOL pageControlUsed;
@property (assign) BOOL rotating;
@property (assign) NSUInteger page;
- (void)loadScrollViewWithPage:(int)page;

@end

@implementation ViewController

@synthesize scrollView;
@synthesize pageControl;
@synthesize pageControlUsed = _pageControlUsed;
@synthesize page = _page;
@synthesize rotating = _rotating;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    [self.scrollView setPagingEnabled:YES];
    [self.scrollView setScrollEnabled:YES];
    [self.scrollView setShowsHorizontalScrollIndicator:NO];
    [self.scrollView setShowsVerticalScrollIndicator:NO];
    [self.scrollView setDelegate:self];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    [scrollView release];
    [pageControl release];
}

- (BOOL)automaticallyForwardAppearanceAndRotationMethodsToChildViewControllers {
    return NO;
}

- (void)willAnimateRotationToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation duration:(NSTimeInterval)duration {
    
    UIViewController *viewController = [self.childViewControllers objectAtIndex:self.pageControl.currentPage];
    [viewController willAnimateRotationToInterfaceOrientation:toInterfaceOrientation duration:duration];
    
    self.scrollView.contentSize = CGSizeMake(scrollView.frame.size.width * [self.childViewControllers count], scrollView.frame.size.height);
    
    NSUInteger page = 0;
    
    for (viewController in self.childViewControllers) {
        
        CGRect frame = self.scrollView.frame;
        frame.origin.x = frame.size.width * page;
        frame.origin.y = 0;
        viewController.view.frame = frame;
        page++;
        
    }
    
    CGRect frame = self.scrollView.frame;
    frame.origin.x = frame.size.width * _page;
    frame.origin.y = 0;
    [self.scrollView scrollRectToVisible:frame animated:NO];
    
}

- (void)viewWillAppear:(BOOL)animated {
    
    [super viewWillAppear:animated];
    
    for (NSUInteger i = 0; i < [self.childViewControllers count]; i++) {
        [self loadScrollViewWithPage:i];
    }
    self.pageControl.currentPage = 0;
    _page = 0;
    [self.pageControl setNumberOfPages:[self.childViewControllers count]];
    
    UIViewController *viewController = [self.childViewControllers objectAtIndex:self.pageControl.currentPage];
    
    if (viewController.view.superview != nil) {
        [viewController viewWillAppear:animated];
    }
    self.scrollView.contentSize = CGSizeMake(scrollView.frame.size.width * [self.childViewControllers count], scrollView.frame.size.height);
}

- (void)viewDidAppear:(BOOL)animated {
    
    [super viewDidAppear:animated];
    
    UIViewController *viewController = [self.childViewControllers objectAtIndex:self.pageControl.currentPage];
    
    if (viewController.view.superview != nil) {
        [viewController viewDidAppear:animated];
    }
}

- (void)changePage:(id)sender {
    
    int page = ((UIPageControl *)sender).currentPage;
    
    //Update the scroll view to the appropriate page
    CGRect frame = self.scrollView.frame;
    frame.origin.x = frame.size.width * page;
    frame.origin.y = 0;
    
    UIViewController *oldViewController = [self.childViewControllers objectAtIndex:_page];
    UIViewController *newViewController = [self.childViewControllers objectAtIndex:self.pageControl.currentPage];
    [oldViewController viewWillDisappear:YES];
    [newViewController viewWillDisappear:YES];
    
    [self.scrollView scrollRectToVisible:frame animated:YES];
    
    //Set the boolean used when scrolls originate from the UIPageControl. See scrollViewDidScroll below.
    _pageControlUsed = YES;
    
}

- (void)scrollViewDidScroll:(UIScrollView *)sender {
    
    /*We don't want a 'feedback loop' between the UIPageControl and the scroll delegate in which a scroll event generated from the use hitting the page control triggers updates from the delegate method. We use a boolean to disable the delegate logic when the page control is used. */
    
    if (_pageControlUsed || _rotating) {
        return;
    }
    //Switch the indicator whem more than 50% of the previous/next step is visible.
    CGFloat pageWidth = self.scrollView.frame.size.width;
    int page = floor((self.scrollView.contentOffset.x - pageWidth/2) / pageWidth) + 1;
    
    if (self.pageControl.currentPage != page) {
        UIViewController *oldViewController = [self.childViewControllers objectAtIndex:self.pageControl.currentPage];
        UIViewController *newViewController = [self.childViewControllers objectAtIndex:page];
        [oldViewController viewWillDisappear:YES];
        [newViewController viewWillAppear:YES];
        self.pageControl.currentPage = page;
        [oldViewController viewDidDisappear:YES];
        [newViewController viewDidAppear:YES];
        _page = page;
    }
}

- (void)loadScrollViewWithPage:(int)page {
    
    if (page < 0)
        return;
    if (page >= [self.childViewControllers count])
        return;
    
    //Replace placeholder if necessary.
    UIViewController *controller = [self.childViewControllers objectAtIndex:page];
    if (controller == nil) {
        return;
    }
    //Add the controller's view to the scroll view.
    if (controller.view.superview == nil) {
        
        CGRect frame = self.scrollView.frame;
        frame.origin.x = frame.size.width * page;
        frame.origin.y = 0;
        controller.view.frame = frame;
        [self.scrollView addSubview:controller.view];
    }
}

- (void)viewDidDisappear:(BOOL)animated {
    
    UIViewController *viewController = [self.childViewControllers objectAtIndex:self.pageControl.currentPage];
    
    if (viewController.view.superview != nil) {
        [viewController viewWillDisappear:animated];
    }
    [super viewDidDisappear:animated];
}

//At the begin of scroll dragging, reset the boolean used when scrolls originate from the UIPageControl.
- (void)scrollViewWillBeginDragging:(UIScrollView *)scrollView {
    _pageControlUsed = NO;
}

//At the end of scroll animation, reset the boolean used when scrolls originates from the UIPageControl.
- (void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView {
    _pageControlUsed = NO;
}


- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)orientation
{
    return YES;
}

@end
