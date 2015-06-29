//
//  NSString+DOSChineseString.m
//  DOSChineseStringCompare
//
//  Created by dolphin on 2015/6/25.
//  Copyright (c) 2015年 dolphinsue319. All rights reserved.
//

#import "NSString+DOSChineseString.h"

@implementation NSString (DOSChineseString)
- (NSComparisonResult)DOSCompareString:(NSString *)string compareType:(DOSChineseStringCompareType)compareType isAscending:(BOOL)isAscending {
    NSAssert(string, @"string 不可為 nil");

    NSString *sortType = @"pinyin";
    switch (compareType) {
        case DOSChineseStringCompareTypePinyin:
            break;
        case DOSChineseStringCompareTypeStroke: {
            sortType = @"stroke";
            break;
        }
        case DOSChineseStringCompareTypeZhuyin: {
            sortType = @"zhuyin";
            break;
        }
        case DOSChineseStringCompareTypeUnihan: {
            sortType = @"unihan";
            break;
        };
    };
    NSLocale *locale = [[NSLocale alloc] initWithLocaleIdentifier:[NSString stringWithFormat:@"zh@collation=%@", sortType]];
    NSComparisonResult result = [self compare:string options:NSCaseInsensitiveSearch | NSLiteralSearch
                                        range:NSMakeRange(0, self.length) locale:locale];
    if (!isAscending) {
        if (result == NSOrderedAscending) {
            return NSOrderedDescending;
        } else if (result == NSOrderedDescending) {
            return NSOrderedAscending;
        } else {
            return NSOrderedSame;
        }
    } else {
        return result;
    }
}
@end
