//
//  DOSChineseStringCompareTests.m
//  DOSChineseStringCompareTests
//
//  Created by dolphinsue319 on 06/24/2015.
//  Copyright (c) 2015 dolphinsue319. All rights reserved.
//

// https://github.com/Specta/Specta
#import <Specta/Specta.h>
#import "NSString+DOSChineseString.h"

SpecBegin(InitialSpecs)

describe(@"these will fail", ^{
/*    it(@"can do maths", ^{
        expect(1).to.equal(2);
    });

    it(@"can read", ^{
        expect(@"number").to.equal(@"string");
    });
    
    it(@"will wait for 10 seconds and fail", ^{
        waitUntil(^(DoneCallback done) {
        
        });
    });*/
});

describe(@"these will pass", ^{
    it(@"sort by stroke", ^{
        NSArray *array = @[@"一", @"二", @"三"];
        NSArray *sortedArray = [array sortedArrayUsingComparator:^NSComparisonResult(NSString *string1, NSString *string2) {
            return [string1 DOSCompareString:string2 compareType:DOSChineseStringCompareTypeStroke isAscending:NO];
        }];
        expect(sortedArray).to.equal(@[@"三", @"二", @"一"]);
    });

    it(@"sort by zhuyin", ^{
        NSArray *array = @[@"班", @"貓", @"虎"];
        NSArray *sortedArray = [array sortedArrayUsingComparator:^NSComparisonResult(NSString *string1, NSString *string2) {
            return [string1 DOSCompareString:string2 compareType:DOSChineseStringCompareTypeZhuyin isAscending:NO];
        }];
        expect(sortedArray).to.equal(@[@"虎", @"貓", @"班"]);
    });
    it(@"sort by pinyin", ^{
        NSArray *array = @[@"安", @"查", @"張"];
        NSArray *sortedArray = [array sortedArrayUsingComparator:^NSComparisonResult(NSString *string1, NSString *string2) {
            return [string1 DOSCompareString:string2 compareType:DOSChineseStringCompareTypePinyin isAscending:NO];
        }];
        expect(sortedArray).to.equal(@[@"張", @"查", @"安"]);
    });
    it(@"sort by unihan", ^{
        NSArray *array = @[@"一", @"二", @"三"];
        NSArray *sortedArray = [array sortedArrayUsingComparator:^NSComparisonResult(NSString *string1, NSString *string2) {
            return [string1 DOSCompareString:string2 compareType:DOSChineseStringCompareTypeUnihan isAscending:NO];
        }];
        expect(sortedArray).to.equal(@[@"二", @"三", @"一"]);
    });
});

SpecEnd
