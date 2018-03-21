//
//  main.m
//  04.createClass
//
//  Created by 송영현 on 2018. 3. 19..
//  Copyright © 2018년 draconian. All rights reserved.
//

/*
 클래스 작성
 - 애플리케이션 고유의 업무 로직과 데이터
 - SDK에서 제공하는 클래스로는 부족
 - 예제 : 사각형을 다루는 프로젝트 Rectangles
 
 메소드 작성
     메소드 선언과 구현
     - 클래스가 수행하는 행위 -> 메소드
     - 메소드는 선언과 구형
     - 메소드 선언 : 클래스 헤더에 선언 public - if 구현부에서 선언한다면 private
     - 메소드 구현 : 클래스 구현부에 작성
 
     인스턴스 메소드                클래스 메소드
     - 기호로 시작                 + 기호로 시작
     객체가 리시버                  클래스가 리시버
     멤버 변수 접근 가능             멤버 변수 접근 불가능
     - (void)method1;           + (void)method2;
     [obj method1]              [Class method2]
 
 메소드 실행 결과
     반환값의 타입에 맞도록 선언
     반환값이 없으면 void
 
 메소드 파라미터
    클래스에 정의한 메소드에 정보 전달
    형식 - 파리미터레이블 : (타입) 파라미터 변수 이름
    - (void)setWidth:(int)newWidth height:(int)newHeight;
 
 데이터 입출력 메소드
    - 클래스의 데이터 : 보호(캡슐화)
    - 클래스 외부에서 데이터 값을 얻거나/설정하기 위한 방법 사용
    - setter
    - getter

 포인터 self
     - 객체에 접근하기
     - 클래스 외부에서 : 포인터 변수로 다루기
     - 클래스 내부 코드에서 다루기 : self
 */

#import <Foundation/Foundation.h>
#import "Rectangle.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
//        Rectangle *rect = [[Rectangle alloc] init];
//        [rect setWidth:20];
//        [rect setHeight:30];
//        [rect setWidth:30 height:40];
//
//        NSLog(@"width: %d", [rect width]);
//        NSLog(@"height: %d", [rect height]);
//
//        int size = [rect size];
//
//        NSLog(@"size: %d", size);
        
        Rectangle *r1 = [[Rectangle alloc] init];
        [r1 setWidth:10 height:20];
        NSLog(@"is square? : %@", [r1 isSquare] ? @"YES" : @"NO");
        
        Rectangle *r2 = [[Rectangle alloc] init];
        [r2 setWidth:20 height:20];
        NSLog(@"is square? : %@", [r2 isSquare] ? @"YES" : @"NO");
        
    }
    return 0;
}




