# FTPickerView
FTPickerView

## Features
- singleton
- fit every device

## Simple Picker Useage

```objective-c
//simple picker
NSArry *nameArray = @[@"optionA",@"optionB",@"some other option"]
 [[FTPickerView sharedInstance] showWithTitle:@"i am title"
                                       nameArray:nameArray
                                       doneBlock:^(NSInteger selectedIndex) {
                                       		NSLog(@"the selected string is: %@",nameArray[selectedIndex]);
                                       } cancelBlock:^{

                                       }];
``
## Date Picker Useage

```objective-c
//date picker
[[FTDatePickerView sharedInstance] showWithTitle:@"选择日期"
selectDate:[NSDate date]
datePickerMode:UIDatePickerModeDateAndTime
doneBlock:^(NSDate *selectedDate) {
NSDateFormatter *f = [[NSDateFormatter alloc]init];
[f setDateFormat:@"yyyy年MM月dd日 HH:mm:ss"];
[sender setTitle:[f stringFromDate:selectedDate] forState:UIControlStateNormal];
} cancelBlock:^{

}];
``
