//
//  main.m
//  06.selector_property
//
//  Created by 송영현 on 2018. 4. 1..
//  Copyright © 2018년 draconian. All rights reserved.
//

/**
 셀렉터
 - 클래스에 선언된 메소드 구별하기
 - 메소드 식별하려면? : 이름, 파라미터 개수, 레이블
 - 메소드 선언 : - (NSUInteger)length
 - 셀렉터 : length
 
 - (NSComparisonResult)compare:(NSString *)string;
     --> compare:
 
 - (NSComparisonResult)compare:(NSString *)string options:(NSStringCompareOptions)mask;
     --> compare:options:
 
 - (NSComparisonResult)compare:(NSString *)string options:(NSStringCompareOptions)mask range:(NSRange)compareRange;
     --> compare:options:range:
 
 컴파일드 셀렉터
 - 코드로 셀렉터 사용
 - 형태 : @selector(xxx)
 - SEL 타입
     SEL s = @selector(length);
 
 EX)
 - (NSComparisonResult)compare:(NSString *)string;
 - (NSComparisonResult)compare:(NSString *)string options:(NSStringCompareOptions)mask;
 - (NSComparisonResult)compare:(NSString *)string options:(NSStringCompareOptions)mask range:(NSRange)compareRange;
     --> 컴파일드 셀렉터
     SEL s1 = @selector(compare:);
     SEL s2 = @selector(comapre:options:);
     SEL s3 = @selector(compare:options:range:);
 
 셀렉터 실행 메소드
 - (id)performSelector:(SEL)aSelector;
 - (id)performSelector:(SEL)aSelector withObject:(id)object;
 - (id)performSelector:(SEL)aSelector withObject:(id)object1 withObject(id)object2;
 
 셀렉터로 메소드 호출
 SEL s = @selector(length);
 [obj perfromSelector:s];

 메소드 작성 여부를 체크
 - (BOOL)respondsToSelector:(SEL)aSelector
 
 체크 후 호출 예제
 if ( [obj respondsToSelector:s]) {
    [obj perfromSelector:s];
 }
 */

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        // NSString에 정의된 메소드와 셀렉터 사용
        NSString *str = @"hello world";
        
        SEL s = @selector(uppercaseString);
        
        if ( [str respondsToSelector:s] ) {
            NSString *str2 = [str performSelector:s];
            NSLog(@"Upper Case : %@", str2);
        }
        
        SEL s2 = @selector(abcd);
        if ( [str respondsToSelector:s2] ) {
            NSString *str3 = [str performSelector:s2];
            NSLog(@"abcd : %@", str3);
        } else {
            NSLog(@"Undeclared selector : abcd");
        }
        
        
    }
    return 0;
}
