//
//  FTPickerView.h
//  FTPickerView
//
//  Created by liufengting on 15/12/3.
//  Copyright © 2015年 liufengting. All rights reserved.
//

#import <UIKit/UIKit.h>

#define PickerHeight 216

typedef void (^ FTPickerDoneBlock )(NSInteger);
typedef void (^ FTPickerCancelBlock )();

#pragma mark - FTPickerTitleView

@interface FTPickerTitleView : UIView

-(id)initWithFrame:(CGRect)frame withTitle:(NSString *)title;

@end

#pragma mark - FTPickerView

@interface FTPickerView : NSObject <UIPickerViewDataSource,UIPickerViewDelegate>

@property (nonatomic,strong)FTPickerDoneBlock doneBlock;
@property (nonatomic,strong)FTPickerCancelBlock cancelBlock;

+ (FTPickerView *)sharedInstance;

-(void)showWithTitle:(NSString *)title nameArray:(NSArray *)nameArray  doneBlock :(FTPickerDoneBlock)doneBlock cancelBlock:(FTPickerCancelBlock)cancelBlock;

@end
