//
//  NSString+DOSChineseString.m
//  DOSChineseStringCompare
//
//  Created by dolphin on 2015/6/25.
//  Copyright (c) 2015年 dolphinsue319. All rights reserved.
//

#import "NSString+DOSChineseString.h"

@implementation NSString (DOSChineseString)
+(NSArray *)DOSIndexStrings{
    static NSArray *_titles;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _titles = @[
                @"一", @"二", @"三", @"太", @"正",
                @"米", @"言", @"門", @"音", @"馬",
                @"魚", @"黃", @"鼠", @"鼻", @"龜",
                @"龍", @"優", @"壘", @"懲", @"勸",
                @"儷", @"聾", @"體", @"靈", @"鑰",
                @"鑷", @"鑼", @"鑿", @"鸛", @"驫",
                @"灩", @"籲", @"鱻", @"䴑", @"齾",
                @"䨺", @"鬻", @"38", @"靐", @"龘"];
    });
    return _titles;
}
- (void)assertionCheck{
    NSAssert(self, @"string 不可為 nil");
    NSAssert(self.length == 1, @"一次只能一個字");
}
- (NSComparisonResult)DOSCompareString:(NSString *)string compareType:(DOSChineseStringCompareType)compareType isAscending:(BOOL)isAscending {
    [self assertionCheck];
    NSAssert(string, @"string 不可為 nil");
    NSAssert(string.length == 1, @"一次只能一個字");
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
-(NSUInteger)DOSCountOfStroke {
    [self assertionCheck];
    NSArray *indexes = [NSString DOSIndexStrings];
    for (NSString *index in indexes) {
        if (![index isEqualToString:@"38"]) {
            NSComparisonResult result = [self DOSCompareString:index compareType:DOSChineseStringCompareTypeStroke isAscending:YES];
            if (result == NSOrderedSame) {
                return [indexes indexOfObject:index] + 1;
            }
        }
    }
    return 0;
}
@end
