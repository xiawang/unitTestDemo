//
//  ViewController.m
//  unitTestDemo
//
//  Created by 王小天 on 14-9-22.
//  Copyright (c) 2014年 Xiaotian Wang. All rights reserved.
//

#import "ViewController.h"
#import "XWModel.h"

@interface ViewController () {
  XWModel* model;
}

@end

@implementation ViewController

- (void)viewDidLoad {
  [super viewDidLoad];
  model = [[XWModel alloc] init];
}

- (void)didReceiveMemoryWarning {
  [super didReceiveMemoryWarning];
  // Dispose of any resources that can be recreated.
}

- (IBAction)celsiusValueEntered:(id)sender
{
  int fahrenheit = [model convertToFahrenheit:[self.celsiusValueTextField.text integerValue]];
  self.fahrenheitValueLabel.text = [NSString stringWithFormat:@"%d", fahrenheit];
}

@end
