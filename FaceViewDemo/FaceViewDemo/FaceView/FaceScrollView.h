//
//  FaceScrollView.h
//  HWWeibo
//
//  Created by 陈勇 on 15/10/25.
//  Copyright © 2015年 陈勇. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FaceView.h"
#import "Common.h"

@interface FaceScrollView : UIView<UIScrollViewDelegate>{
    
    UIScrollView *_scrollView;
    UIPageControl *_pageControl;
    FaceView *_faceView;

}

- (void)setFaceViewDelegate:(id<FaceViewDelegate>)delegate;

@end
