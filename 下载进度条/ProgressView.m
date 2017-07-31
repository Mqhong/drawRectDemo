//
//  ProgressView.m
//  下载进度条
//
//  Created by mm on 15/10/23.
//  Copyright © 2015年 mm. All rights reserved.
//

#import "ProgressView.h"

@interface ProgressView()

@property (nonatomic,weak) UILabel *label;



@end


@implementation ProgressView


-(UILabel *)label{
    if (_label == nil) {
        UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 100, 100)];
        
        label.textAlignment = NSTextAlignmentCenter;
        
        [self addSubview:label];
        
        _label = label;
    }
    return _label;
}

//-(void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSString *,id> *)change context:(void *)context{
//    
//    if ([keyPath isEqualToString:@"progess"]) {
//        NSLog(@"内部监听:%@",[change valueForKey:@"new"]);
//        _progess = [[change valueForKey:@"new"] floatValue];
//        [self setNeedsDisplay];
//    }
//}



-(void)setProgess:(CGFloat)progess{
    _progess = progess;
    self.label.text = [NSString stringWithFormat:@"%.2f%%",progess*100];
    //重新绘制
    //在View上做一个重绘的标记，当下一次屏幕刷新的时候，就会调用drawRect方法
    [self setNeedsDisplay];
    
    
//    [self drawRect:self.bounds];
    
//    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
//        // switch to a background thread and perform your expensive operation
//        
//        dispatch_async(dispatch_get_main_queue(), ^{
//            // switch back to the main thread to update your UI
//            
//        });
//    });
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/
//当试图显示的时候会调用，默认真会只会调用一次

- (void)drawRect:(CGRect)rect {
    //1.获取上下文
    
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    //2.拼接路径
    //大小
    CGPoint center = CGPointMake(50, 50);
    //半径
    CGFloat radius = 50 - 2;
    
    //起始角度
    CGFloat startA = -M_PI_2;
    
    //结束角度
    CGFloat endA = -M_PI_2 + _progess * M_PI * 2;
    
    UIBezierPath *path = [UIBezierPath bezierPathWithArcCenter:center radius:radius startAngle:startA endAngle:endA clockwise:YES];
    
    
    //3.把路径添加到上下文
    
    CGContextAddPath(ctx, path.CGPath);
    
    //4.把上下文渲染到试图
    
    CGContextStrokePath(ctx);
    
}

@end
