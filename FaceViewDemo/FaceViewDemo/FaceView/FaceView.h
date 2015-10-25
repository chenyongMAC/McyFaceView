//
//  FaceView.h
//  HWWeibo
//
//  Created by 陈勇 on 15/10/25.
//  Copyright © 2015年 陈勇. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Common.h"

@protocol FaceViewDelegate <NSObject>

- (void)faceDidSelect:(NSString *)text;

@end

@interface FaceView : UIView{
    //二维数组
    NSMutableArray *_items;
    
    //放大镜视图
    UIImageView *_magnifierView;
    
    //选中的表情名
    NSString *_selectedFaceName;
}
@property(nonatomic,readonly)NSInteger pageNumber;
@property (nonatomic,weak) id<FaceViewDelegate> delegate;

@end
