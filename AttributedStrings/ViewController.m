
//  ViewController.m
//  AttributedStrings
//
//  Created by 吴海涛 on 14-6-9.
//  Copyright (c) 2014年 吴海涛. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)clickedButtonToChangeSelectedAreaColor:(UIButton *)sender
{
    NSMutableAttributedString *mutableAttributed = [[NSMutableAttributedString alloc] init];
    NSDictionary *attribtesDiction = @{NSForegroundColorAttributeName:sender.backgroundColor,NSStrokeWidthAttributeName:@-3};
    [mutableAttributed addAttributes:attribtesDiction range:self.bodyView.selectedRange];
    [self.bodyView.textStorage addAttribute:NSForegroundColorAttributeName value:sender.backgroundColor range:self.bodyView.selectedRange];
}


- (IBAction)change2outline:(id)sender
{
    [self.bodyView.textStorage addAttributes:@{NSStrokeWidthAttributeName:@-3,NSStrokeColorAttributeName:[UIColor redColor]} range:self.bodyView.selectedRange];
}

- (IBAction)chage2unOutline:(id)sender
{
    [self.bodyView.textStorage removeAttribute:NSStrokeWidthAttributeName range:self.bodyView.selectedRange];
}
@end
