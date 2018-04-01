//
//  main.m
//  06_1.property
//
//  Created by 송영현 on 2018. 4. 1..
//  Copyright © 2018년 draconian. All rights reserved.
//

/**
 프로퍼티

 - 프로퍼티 선언
 프로퍼티 : 점(.)을 이용해서 데이터에 접근
 클래스 선언부에 프로퍼티 선언
     @property([프로퍼티 속성]) [타입] (*)[이름];
 
 - 프로퍼티 사용
 Rectangle *obj = [[Rectangle alloc] init];
 
 obj.width = 10;
 obj.height = 20;
 
 int w = obj.width;
 
 - 클래스 내부 사용 : self 로 프로퍼티 사용
 @implementation Rectangle
 - (int)size {
     return self.width * self.height;
 }
 @end
 
 
 - 프로퍼티와 멤버 변수
 프로퍼티 선언 --> 언더바(_) + 프로퍼티 이름의 멤버 변수 -> self.width == _width
 
 멤버변수 설정하기
 synthesize : 멤버 변수 이름 설정
 클래스 구현부에 @synthesize 작성
 
 @synthesize [프로퍼티 이름];
 @synthesize [프로퍼티 이름] = [멤버 변수 이름];
 
 
 - 프로퍼티 속성
 @property ([속성 수식자]) [프로퍼티 타입] [프로퍼티 이름];
 속성 종류
    - 읽기/쓰기 제어
        readonly
        readwrite (기본값)
         @property (readwrite) int width;
         @property (readonly) int size;
    - 쓰레드 접근 제어
        atomic : 동시에 접근하는 쓰레드 제어 (기본값)
        nonatomic : 쓰레드 접근 제어 사용 안함
         @property (nonatomic) int width;
 
    - 게터와 세터 메소드 이름
    - 메모리 소유권
 
 - 프로퍼티와 게터/세터 메소드
 프로퍼티 선언 -> 게터와 세터 메소드 생성
 프로퍼티로 값 얻어오기 -> 게터 메소드 동작
 프로퍼티로 값 설정 -> 세터 메소드 동작
 
 Rectangle *r = [[Rectangle alloc] init];
 [r setWidth:20];
 r.height = 30;
 
 프로퍼티 속성에 게터/세터 메소드 이름 설정
 getter = [게터 메소드 셀렉터];
 setter = [세터 메소드 셀렉터];
 
 width 게서톼 세터 메소드 이름 설정하기
 (보통 세터는 안함)
 @property (getter = getWidth, setter = setRectangleWidth:)int width;
 
 프로퍼티를 이용한 값 설정과 얻어오기 : 기본 행위
 별도의 동작 -> 게터와 세터 메소드를 별도로 작성
 
 프로퍼티의 사용 -> 세터 메소드 동작
 Rectangle *r1 = [[Rectangle alloc] init];
 r1.width = -100;
 
 게터/세터 메소드 별도 작성할 때
 self 사용 주의. 무한루프
 - (void)setWidth:(int)newWidth {
    self.width = newWidth;
 }
 _멤버 변수 사용할 것.
 */

#import <Foundation/Foundation.h>
#import "Rectangle.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Rectangle *obj = [[Rectangle alloc] init];
        
        obj.width = 10;
        obj.height = 20;
        
        NSLog(@"w: %d, h: %d", obj.width, obj.height);
        
        NSLog(@"size : %d", obj.size);
        
        obj.width = -100;
        
        NSLog(@"size : %d", obj.size);
    }
    return 0;
}
