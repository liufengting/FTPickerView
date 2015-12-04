//
//  ViewController.m
//  FTPickerView
//
//  Created by liufengting on 15/12/3.
//  Copyright © 2015年 liufengting. All rights reserved.
//

#import "ViewController.h"
#import "FTPickerView.h"

@interface ViewController ()

@property (nonatomic,strong)NSArray *optionArrayOne;
@property (nonatomic,strong)NSArray *optionArrayTwo;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _optionArrayOne = @[@"如果你之前安装过Alcatraz，卸载它",@"最关键的一步，运行命令",@"打开Xcode",@"安装 Alcatraz 重启Xcode"];
    _optionArrayTwo = @[@"安装Xcode7后",@"继续采用官方方法安装Alcatraz，发现不成功。",@"单独安装XVim也不成功",@"看了一下Alcatraz的issues，找到了解决方法"];
}

- (IBAction)chooseOne:(UIButton *)sender {
    [[FTPickerView sharedInstance] showWithTitle:@"安装Alcatraz"
                                       nameArray:_optionArrayOne
                                       doneBlock:^(NSInteger selectedIndex) {
                                           [sender setTitle:_optionArrayOne[selectedIndex] forState:UIControlStateNormal];
                                       } cancelBlock:^{
                                           [sender setTitle:@"Alcatraz的issues" forState:UIControlStateNormal];
                                       }];
    
}
- (IBAction)chooseTwo:(UIButton *)sender {
    [[FTPickerView sharedInstance] showWithTitle:@"Alcatraz的issues"
                                       nameArray:_optionArrayTwo
                                       doneBlock:^(NSInteger selectedIndex) {
                                           [sender setTitle:_optionArrayTwo[selectedIndex] forState:UIControlStateNormal];
                                       } cancelBlock:^{
                                           [sender setTitle:@"Alcatraz的issues" forState:UIControlStateNormal];
                                       }];
}

@end
