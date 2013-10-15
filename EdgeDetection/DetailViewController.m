//
//  DetailViewController.m
//  EdgeDetection
//
//  Created by Kirill Pugin on 10/14/13.
//  Copyright (c) 2013 pkir. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()
@property (strong, nonatomic) UIPopoverController *masterPopoverController;
- (void)configureView;
@end

@implementation DetailViewController

#pragma mark - Managing the detail item

- (void)setDetailItem:(id)newDetailItem
{
    if (_detailItem != newDetailItem) {
        _detailItem = newDetailItem;
        
        // Update the view.
        [self configureView];
    }

    if (self.masterPopoverController != nil) {
        [self.masterPopoverController dismissPopoverAnimated:YES];
    }        
}

- (void)configureView
{
    // Update the user interface for the detail item.
    self.detailtItemView.contentMode = UIViewContentModeScaleAspectFit;
    if (self.detailItem) {
        self.detailtItemView.image = self.detailItem;
    }
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [self configureView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) viewDidLayoutSubviews {
    /*CGSize imageSize = self.detailtItemView.image.size;
    CGFloat aspectRatio = imageSize.width / imageSize.height;
    CGRect frame = self.view.bounds.frame;
    if (kMaxImageViewSize.width / aspectRatio <= kMaxImageViewSize.height) {
        frame.size.width = kMaxImageViewSize.width;
        frame.size.height = frame.size.width / aspectRatio;
    } else {
        frame.size.height = kMaxImageViewSize.height;
        frame.size.width = frame.size.height * aspectRatio;
    }
    imageView.frame = frame;
    self.detailtItemView.frame = bounds;*/
    
//    self.detailtItemView.frame = self.view.bounds;
//    self.detailtItemView.center = CGPointMake(self.view.bounds.size.width*0.5, self.view.bounds.size.height*0.5);
    
}

#pragma mark - Split view

- (void)splitViewController:(UISplitViewController *)splitController willHideViewController:(UIViewController *)viewController withBarButtonItem:(UIBarButtonItem *)barButtonItem forPopoverController:(UIPopoverController *)popoverController
{
    barButtonItem.title = NSLocalizedString(@"Master", @"Master");
    [self.navigationItem setLeftBarButtonItem:barButtonItem animated:YES];
    self.masterPopoverController = popoverController;
}

- (void)splitViewController:(UISplitViewController *)splitController willShowViewController:(UIViewController *)viewController invalidatingBarButtonItem:(UIBarButtonItem *)barButtonItem
{
    // Called when the view is shown again in the split view, invalidating the button and popover controller.
    [self.navigationItem setLeftBarButtonItem:nil animated:YES];
    self.masterPopoverController = nil;
}

@end
