//
//  calcViewController.m
//  calculator
//
//  Created by Levon on 12/7/13.
//  Copyright (c) 2013 Levon. All rights reserved.
//

#import "calcViewController.h"
@interface calcViewController ()

@end

@implementation calcViewController

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

- (IBAction)numberButtonSelected:(UIButton *)sender {
    if ([self.labelResult.text length] < 11) {
        if (sender.tag !=1 ||  ![self.labelResult.text isEqualToString:@"0"]){
            if ([self.labelResult.text isEqualToString:@"0"]) {
                self.labelResult.text=sender.titleLabel.text;
            }else{
                self.labelResult.text = [NSString stringWithFormat:@"%@%@", self.labelResult.text, sender.titleLabel.text];
            }
        }
    }
}

- (IBAction)operationButtonSelected:(UIButton *)sender {
}

- (IBAction)clearButtonSelected:(UIButton *)sender {
    self.labelResult.text = @"0";
}
@end
