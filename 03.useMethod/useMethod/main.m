//
//  main.m
//  useMethod
//
//  Created by 송영현 on 2018. 3. 19..
//  Copyright © 2018년 draconian. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        /**
         메소드 호출 표기 : [receiver message]
         ex) [str length]
         메소드 연속 호출 : [[NSString alloc] init]
         
         원시 타입 변수
            char short int long
            float double long double
            BOOL
         
         NS 원시 타입
            NSInteger
                32bit 환경에선 int --> 4byte
                64bit 환경에서 long --> 8byte
            NSUInteger
                unsigned
         */
        
        NSString *str = @"Hello";
        NSUInteger len = [str length];
        NSLog(@"length : %ld", len);

        NSLog(@"Upper case string : %@", [@"draconian" uppercaseString]);
        NSLog(@"capitalizedString : %@", [@"draconian" capitalizedString]);

        NSString *str02 = @"1";
        NSComparisonResult comResult = [str02 compare:@"09"];
        NSLog(@"result : %ld", comResult);

        NSComparisonResult result = [str02 compare:@"09" options:NSNumericSearch];
        NSLog(@"re : %ld", result);
        
        /**
         객체, 구조체
         
         - 반환값, 파라미터가 객체 : 클래스 이름과 *
         ex) - (NSString *)uppercaseString
         
         구조체 , * 없이 사용
         ex) - (NSRange)rangeOfString:(NSString *)aString;
         
         메소드의 파라미터 --> 파리미터 레이블, 콜론 사용
         
         클래스 메소드
         + 기호 사용
         리시버가 클래스
         alloc, 팩토리 메소드
         ex) + (instancetype)string;
         
         인스턴스 메소드
         - 기호 사용
         리시버가 객체
         객체 생성 후 사용할 수 있음
         */
        
        
        
        /**
         객체를 생성하는 메소드 : alloc/init
         다양한 init 계열의 메소드 (NSString)
         - (id)init;
         - (id)initWithString:(NSString *)aString;
         - (id)initWithFormat:(NSString *)format, ...;
         - (id)initWithDate:(NSData *)data encoding:(NSStringEncoding)encoding;
         */
        
        // 다양한 init 메소드를 이용한 객체 생성
        NSString *str1 = [[NSString alloc] initWithString:@"Hi"];
        NSString *str2 = [[NSString alloc] initWithFormat:@"hi %@", @"test"];
        NSLog(@"str1 : %@", str1);
        NSLog(@"str2 : %@", str2);
        
    
        // 팩토리 메소드
        // 클래스의 이름으로 시작
        // ex: + (instancetype)stringWithString
        NSString *str3 = [NSString stringWithFormat:@"Factory %@", @"Method"];
        NSLog(@"str3 : %@", str3);
        
        
        // 포인터 nil : 아무런 객체를 가리키지 않는 상태
        // 포인터 변수만 선언한 경우
        // nil 상태를 이용한 객체 생성(Lazy Initailization)
        /**
         NSString *str;
         ...
         if (nil == str) {
         str = [NSString stringWithFormat:@"" ..]
         */
        // nil 에 메소드 호출 --> 무시
        // 반환값은 0 또는 nil
        // NSString *str = nil;
        NSString *str4;
        NSLog(@"str4 : %@", str4);
        
        if (nil == str4) {
            str4 = [NSString stringWithFormat:@"Hello %@", @"test"];
        }
        NSLog(@"str4 : %@", str4);
        
        NSString *str5;
        NSLog(@"nil : %@", [str5 uppercaseString]); // 에러가 안나고 null 값을 반환
        NSLog(@"num : %ld", [str5 length]); // 에러가 안나고 0 을 반환
        
    }
    return 0;
}
