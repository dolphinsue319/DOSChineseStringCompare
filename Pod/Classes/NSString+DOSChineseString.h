//
//  NSString+DOSChineseString.h
//  DOSChineseStringCompare
//
//  Created by dolphin on 2015/6/25.
//  Copyright (c) 2015年 dolphinsue319. All rights reserved.
//

#import <Foundation/Foundation.h>
/**
 * 這裡提供了四種排序方法
 */
typedef NS_ENUM(NSInteger, DOSChineseStringCompareType){
    /**
     *  筆畫排序
     */
    DOSChineseStringCompareTypeStroke,
    /**
     *  注音排序
     */
    DOSChineseStringCompareTypeZhuyin,
    /**
     *  拼音排序
     */
    DOSChineseStringCompareTypePinyin,
    /**
     *  Unihan 碼排序
     */
    DOSChineseStringCompareTypeUnihan
};
/**
 *  詳細的實作原理，請看這裡：http://www.unicode.org/reports/tr35/tr35-collation.html#Contents
 */
@interface NSString (DOSChineseString)
/**
 *  給我一個被比較的字串，我回傳比較後的結果給你
 *
 *  @param string      被比較的字串
 *  @param compareType 你要用哪種方式做比較？(筆畫、注音、拼音、Unihan)
 *  @param isAscending 要以小到大排序的結果嗎？
 *
 *  @return NSComparisonResult
 */
- (NSComparisonResult)DOSCompareString:(NSString *)string compareType:(DOSChineseStringCompareType)compareType isAscending:(BOOL)isAscending;

- (NSUInteger)DOSCountOfStroke;
@end
