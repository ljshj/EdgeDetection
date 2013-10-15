//
//  UIImage+OpenCV.h
//  EdgeDetection
//
//  Created by Kirill Pugin on 10/14/13.
//  Copyright (c) 2013 pkir. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (OpenCV)

- (UIImage*) detectEdges:(int) lowThreshold ratio:(int)ratio kernelSize:(int)kernelSize;
- (cv::Mat)UIImageToCvMat;
+ (UIImage *)UIImageFromCVMat:(cv::Mat)cvMat;

@end
