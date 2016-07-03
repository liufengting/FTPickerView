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

@property (nonatomic,strong)NSArray<NSString *> *optionArrayOne;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

}

-(NSArray<NSString *> *)optionArrayOne
{
    if (!_optionArrayOne) {
        _optionArrayOne = @[@"Step 1",@"Step 2",@"Step 3",@"Step 4"];
    }
    return _optionArrayOne;
}


- (IBAction)chooseOne:(UIButton *)sender {
    //simple picker
    [FTPickerView showWithTitle:@"Choose a step"
                      nameArray:self.optionArrayOne
                      doneBlock:^(NSInteger selectedIndex) {
                          [sender setTitle:_optionArrayOne[selectedIndex] forState:UIControlStateNormal];
                      } cancelBlock:^{

                      }];
    
}
- (IBAction)chooseTwo:(UIButton *)sender {
    //date picker
    [FTDatePickerView showWithTitle:@"Choose a date"
                         selectDate:nil
                     datePickerMode:UIDatePickerModeDateAndTime
                          doneBlock:^(NSDate *selectedDate) {
                              NSDateFormatter *dateFormate = [[NSDateFormatter alloc]init];
                              [dateFormate setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
                              [sender setTitle:[dateFormate stringFromDate:selectedDate] forState:UIControlStateNormal];
                          } cancelBlock:^{
                              
                          }];
}

@end
