//
//  OpenCVManager.m
//  opencv_test
//
//  Created by AppSetNetDev on 2018/02/28.
//  Copyright © 2018年 AppSetNetDev. All rights reserved.
//

#import <opencv2/opencv.hpp>
#import <opencv2/imgcodecs/ios.h>

#import "OpenCVManager.h"

@implementation OpenCVManager

+ (UIImage*)test:(UIImage*)inImage
{
    cv::Mat img_Mat;
    
    UIImageToMat(inImage, img_Mat);
    cv::cvtColor(img_Mat, img_Mat, CV_BGR2GRAY);
    
    return MatToUIImage(img_Mat);
}
@end
