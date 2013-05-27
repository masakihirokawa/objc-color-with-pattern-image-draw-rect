//
//  ViewController.m
//  ColorWithPatternImage-DrawRect
//
//  Created by Dolice on 2013/05/27.
//  Copyright (c) 2013年 Dolice. All rights reserved.
//

#import "ViewController.h"

@implementation SampleView:UIView

- (void)drawRect:(CGRect)rect
{
    //パターン画像の作成
    UIImage *image = [UIImage imageNamed:@"background_pattern.jpg"];
    UIColor *patternColor = [UIColor colorWithPatternImage:image];
    //四角形を描画
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextBeginPath(context);
    CGContextAddRect(context, rect);
    CGContextClosePath(context);
    [[UIColor grayColor] setStroke];
    [patternColor setFill];
    CGContextDrawPath(context, kCGPathEOFillStroke);
}

@end

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	SampleView *sampleView = [[SampleView alloc] init];
    sampleView.frame = self.view.bounds;
    [self.view addSubview:sampleView];
}

@end
