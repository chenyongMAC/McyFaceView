//
//  ViewController.m
//  FaceViewDemo
//
//  Created by 陈勇 on 15/10/25.
//  Copyright © 2015年 陈勇. All rights reserved.
//

#import "ViewController.h"

#import "Common.h"
#import "FaceScrollView.h"


@interface ViewController () <FaceViewDelegate> {
    //5.表情
    FaceScrollView *_faceViewPanel;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _textView.text = nil;
    _textView.backgroundColor = [UIColor lightGrayColor];
    
    [self _showFaceView];
    
}

#pragma mark - 表情处理
//显示表情
- (void)_showFaceView{

    _faceViewPanel = [[FaceScrollView alloc] init];
    [_faceViewPanel setFaceViewDelegate:self];
    //放到底部
    _faceViewPanel.top  = 200;
    [self.view addSubview:_faceViewPanel];

}

//隐藏表情
- (void)_hideFaceView {

    _faceViewPanel.top = kScreenHeight;
    
}

//选中表情
- (void)faceDidSelect:(NSString *)text{
    NSLog(@"选中了%@",text);
    _textView.text = [NSString stringWithFormat:@"%@%@", _textView.text,text];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
