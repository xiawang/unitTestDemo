//
//  ViewController.h
//  unitTestDemo
//
//  Created by 王小天 on 14-9-22.
//  Copyright (c) 2014年 Xiaotian Wang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *celsiusValueTextField;

@property (weak, nonatomic) IBOutlet UILabel *fahrenheitValueLabel;


- (IBAction)celsiusValueEntered:(id)sender;

@end

