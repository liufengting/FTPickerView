# FTPickerView
[![Twitter](https://img.shields.io/badge/twitter-@liufengting-blue.svg?style=flat)](http://twitter.com/liufengting) 
[![GitHub license](https://img.shields.io/badge/license-MIT-blue.svg)](https://raw.githubusercontent.com/liufengting/FTPickerView/master/LICENSE)
[![CI Status](http://img.shields.io/travis/liufengting/FTPickerView.svg?style=flat)](https://travis-ci.org/liufengting/FTPickerView)
[![GitHub stars](https://img.shields.io/github/stars/liufengting/FTPickerView.svg)](https://github.com/liufengting/FTPickerView/stargazers)


A simple UIPickerView/UIDatePicker wapper.
View detial at : http://liufengting.github.io/FTPickerView


## Features
- singleton
- block callbacks


## ScreenShots

<table>
  <tr>
    <th><img src="/ImageAssets/SimplePicker.png" width="250"/></th>
    <th><img src="/ImageAssets/DatePicker.png" width="250"/></th>
  </tr>
</table>


## Useage

* Simple Picker 

```objective-c

//simple picker
NSArry *nameArray = @[@"optionA",@"optionB",@"some other option"]
[[FTPickerView sharedInstance]  showWithTitle:@"i am title"
                                    nameArray:nameArray
                                    doneBlock:^(NSInteger selectedIndex) {
                                       		NSLog(@"the selected string is: %@",nameArray[selectedIndex]);
                                    } cancelBlock:^{
                                    }];
```

* Date Picker 


```objective-c

//date picker
[[FTDatePickerView sharedInstance] showWithTitle:@"选择日期"
                                      selectDate:[NSDate date]
                                  datePickerMode:UIDatePickerModeDateAndTime
                                       doneBlock:^(NSDate *selectedDate) {
                                            NSDateFormatter *f = [[NSDateFormatter alloc]init];
                                            [f setDateFormat:@"yyyy年MM月dd日 HH:mm:ss"];
                                            NSLog(@"the selected date is: %@",[f stringFromDate:selectedDate]);
                                  } cancelBlock:^{
                                  }];
```
# Installation

* Drag 'FTPickerView' file to you project,
* Import 'FTPickerView.h',
* Enjoy！ 🍺



## License

FTPickerView is available under the MIT license. See the LICENSE file for more info.




