//
//  NSString+DOSChineseString.h
//  DOSChineseStringCompare
//
//  Created by dolphin on 2015/6/25.
//  Copyright (c) 2015年 dolphinsue319. All rights reserved.
//

#import <Foundation/Foundation.h>
/*
* 請參考這裡：http://www.unicode.org/reports/tr35/tr35-collation.html#Contents
*
* */
typedef NS_ENUM(NSInteger, DOSChineseStringCompareType) {
    /*筆畫排序*/
    DOSChineseStringCompareTypeStroke,
    /*注音排序*/
    DOSChineseStringCompareTypeZhuyin,
    /*拼音排序*/
    DOSChineseStringCompareTypePinyin,
    /*Unihan 碼排序*/
    DOSChineseStringCompareTypeUnihan
};

@interface NSString (DOSChineseString)

- (NSComparisonResult)DOSCompareString:(NSString *)string compareType:(DOSChineseStringCompareType)compareType isAscending:(BOOL)isAscending;
@end
