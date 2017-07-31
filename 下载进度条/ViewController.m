//
//  ViewController.m
//  下载进度条
//
//  Created by mm on 15/10/23.
//  Copyright © 2015年 mm. All rights reserved.
//

#import "ViewController.h"
#import "ProgressView.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet ProgressView *progressview;
@property (nonatomic,strong) NSTimer *timer;

@end

@implementation ViewController

- (IBAction)valueChange:(UISlider *)sender {
//    NSLog(@"sender.value:%f",sender.value);
    _progressview.progess = sender.value;
//    NSLog(@"ddd");
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    
    btn.backgroundColor = [UIColor redColor];
    btn.frame = CGRectMake(0, 0, 50, 50);
    [self.view addSubview:btn];
    
//    self.progressview.progess = 0.5;
    
    
//    self.timer = [NSTimer timerWithTimeInterval:3.0 target:selfselector:@selector(timerFired:)userInfo:nilrepeats:NO];
    
//    self.timer = [NSTimer timerWithTimeInterval:0.5 target:self selector:@selector(ddd) userInfo:nil repeats:YES];
//    
//    [[NSRunLoop currentRunLoop] addTimer:self.timer forMode:NSDefaultRunLoopMode];
    
//    [self.progressview addObserver:self.progressview forKeyPath:@"progess" options:NSKeyValueObservingOptionNew|NSKeyValueObservingOptionOld context:NULL];
    
//    [btn addTarget:self action:@selector(start) forControlEvents:UIControlEventTouchUpInside];
    // Do any additional setup after loading the view, typically from a nib.
}

-(void)ddd{
    NSLog(@"给我跑哟");
    CGFloat pro = self.progressview.progess;
    
    pro +=  0.01;
    self.progressview.progess = pro;
}


//
//-(void)start{
//    
//    CGFloat progess = 0;
//    
////    for (CGFloat i = 0; i < 1.0; i += 0.01) {
////        
////
//////        self.progressview.progess = i;
//////        NSLog(@"进度条：%f",i);
////        
////        
////        
////        [NSThread sleepForTimeInterval:0.5];
////    }
//    
//    while (progess < 1.0) {
////        self.progressview.progess = progess;
//        NSLog(@"进度条：%f",progess);
//        progess += 0.01;
//        [self.progressview setValue:[NSString stringWithFormat:@"%f",progess] forKey:@"progess"];
//    }
//}


//-(void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSString *,id> *)change context:(void *)context{
//    NSLog(@"在外部监听：%@",change);
//    if ([keyPath isEqualToString:@"progess"]) {
//        NSLog(@"%@",change[@"new"]);
//        _progressview.progess = [[change valueForKey:@"new"] floatValue];
//    }
//    
//}
//        sleep(2);
//usleep(200000);
//        [self performSelector: @selector(start) withObject: nil afterDelay:1.0f];

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
