//
//  NSObject+XWModel.m
//  unitTestDemo
//
//  Created by 王小天 on 14-9-22.
//  Copyright (c) 2014年 Xiaotian Wang. All rights reserved.
//

#import "XWModel.h"

@implementation XWModel

-(int)convertToFahrenheit: (int)celsiusValue
{
  int maxValue = (int)((2147483647.0 - 32.0)*5.0/9.0) + 1;
  int minValue = (int)((-2147483647.0 - 32.0)*5.0/9.0) - 1;
  NSAssert(celsiusValue<maxValue, @"Invalid: input is too large.");
  NSAssert(celsiusValue>minValue, @"Invalid: input is too small.");
  return (int) (((float) celsiusValue)*9.0/5.0 + 32.0);
}

@end
