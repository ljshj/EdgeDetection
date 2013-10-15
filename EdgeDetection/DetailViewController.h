//
//  DetailViewController.h
//  EdgeDetection
//
//  Created by Kirill Pugin on 10/14/13.
//  Copyright (c) 2013 pkir. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController <UISplitViewControllerDelegate>

@property (strong, nonatomic) id detailItem;

@property (weak, nonatomic) IBOutlet UIImageView *detailtItemView;
@end
