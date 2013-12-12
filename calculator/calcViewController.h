//
//  calcViewController.h
//  calculator
//
//  Created by Levon on 12/7/13.
//  Copyright (c) 2013 Levon. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface calcViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *labelResult;
- (IBAction)numberButtonSelected:(UIButton *)sender;
- (IBAction)operationButtonSelected:(UIButton *)sender;
- (IBAction)clearButtonSelected:(UIButton *)sender;

@end
