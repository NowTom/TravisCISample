//
//  TravisCISampleTests.m
//  TravisCISampleTests
//
//  Created by NowTom on 3/29/14.
//
//

#import <XCTest/XCTest.h>

@interface TravisCISampleTests : XCTestCase

@end

@implementation TravisCISampleTests

- (void)setUp
{
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown
{
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample
{
    XCTAssertEqual(@"hoge", @"hoge", @"hoge is not equal to hoge");
}

@end
