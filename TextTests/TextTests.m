//
//  TextTests.m
//  TextTests
//
//  Created by 崔天龙 on 2018/6/3.
//  Copyright © 2018年 崔天龙. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "ViewController.h"
@interface TextTests : XCTestCase

@property(nonatomic,strong)ViewController *vc;
@end

@implementation TextTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
    //初始化的代码，在测试方法调用之前调用
    self.vc  = [[ViewController alloc] init];
    
    self.vc.view.backgroundColor = [UIColor redColor];
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    //释放测试用例的资源代码，这个方法会每个测试用例执行后调用
    self.vc  = nil;
    [super tearDown];
}

- (void)testExample {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
    int result  = [self.vc getNumber];
    XCTAssertEqual(result, 100,@"测试不通过");
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    //测试性能例子
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
        //需要测试性能的代码
    }];
}

@end
