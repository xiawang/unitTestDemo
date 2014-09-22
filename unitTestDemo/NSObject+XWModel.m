//
//  NSObject+XWModel.m
//  unitTestDemo
//
//  Created by 王小天 on 14-9-22.
//  Copyright (c) 2014年 Xiaotian Wang. All rights reserved.
//

#import "NSObject+XWModel.h"

@implementation NSObject (XWModel)

-(int)convertToFahrenheit: (int)celsiusValue
{
  return (int) (((float) celsiusValue)*9.0/5.0 + 32.0);
}

@end
