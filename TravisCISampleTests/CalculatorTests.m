//
//  CalculatorTests.m
//  TravisCISample
//
//  Created by NowTom on 3/31/14.
//
//

#import "CalculatorTests.h"
#import "Calculator.h"

@implementation CalculatorTests

- (void)testAdd
{
    XCTAssertEqual(2, [Calculator add:1 baseToAdd:1], @"1 + 1 is equals 2.");
    XCTAssertEqual(3, [Calculator add:1 baseToAdd:2], @"1 + 2 is equals 3.");
}

@end
