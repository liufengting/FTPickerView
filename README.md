# FTPickerView
FTPickerView

## Features
- singleton
- fit every device

## Useage

```
NSArry *nameArray = @[@"optionA",@"optionB",@"some other option"]
 [[FTPickerView sharedInstance] showWithTitle:@"i am title"
                                       nameArray:nameArray
                                       doneBlock:^(NSInteger selectedIndex) {
                                       		NSLog(@"the selected string is: %@",nameArray[selectedIndex]);
                                       } cancelBlock:^{

                                       }];
