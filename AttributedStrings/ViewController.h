//
//  ViewController.h
//  AttributedStrings
//
//  Created by 吴海涛 on 14-6-9.
//  Copyright (c) 2014年 吴海涛. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextView *bodyView;
- (IBAction)clickedButtonToChangeSelectedAreaColor:(UIButton *)sender;
- (IBAction)change2outline:(id)sender;
- (IBAction)chage2unOutline:(id)sender;

@end
