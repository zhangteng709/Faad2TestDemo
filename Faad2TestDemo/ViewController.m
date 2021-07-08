//
//  ViewController.m
//  Faad2TestDemo
//
//  Created by zhang teng on 2021/7/8.
//

#import "ViewController.h"
#import "TDFaad2Manager.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    NSString *inputPath = [[NSBundle mainBundle] pathForResource:@"OnCall.aac" ofType:nil];
    
    NSString *docDir = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) firstObject];
    NSString *outputPath = [docDir stringByAppendingPathComponent:@"OnCall.wav"];
    if (![[NSFileManager defaultManager] fileExistsAtPath:outputPath]) {
        [[NSFileManager defaultManager] createFileAtPath:outputPath contents:nil attributes:nil];
    }
    [TDFaad2Manager transformAACToWAV:inputPath outPath:outputPath];
}



@end
