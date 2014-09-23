//
//  unitTestDemoTests.m
//  unitTestDemoTests
//
//  Created by 王小天 on 14-9-22.
//  Copyright (c) 2014年 Xiaotian Wang. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "XWModel.h"

@interface unitTestDemoTests : XCTestCase {
  XWModel* _model;
}

@end

@implementation unitTestDemoTests

- (void)setUp {
    [super setUp];
  _model = [[XWModel alloc] init];
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample {
    // This is an example of a functional test case.
    XCTAssert(YES, @"Pass");
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

- (void)testValue
{
  XCTAssertTrue([_model convertToFahrenheit:0] == 32, @"Converting 0");
  XCTAssertTrue([_model convertToFahrenheit:-40] == -40, @"Converting -40");
}

- (void)testExtrema
{
  int maxValue = (int)((2147483647.0 - 32.0)*5.0/9.0) + 1;
  int minValue = (int)((-2147483647.0 - 32.0)*5.0/9.0) - 1;
  XCTAssertThrowsSpecific([_model convertToFahrenheit:maxValue], NSException, @"Converting more than max value");
  XCTAssertThrowsSpecific([_model convertToFahrenheit:minValue], NSException, @"Converting less than min value");
}

@end
