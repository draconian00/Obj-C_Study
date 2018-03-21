//
//  Rectangle.h
//  04.createClass
//
//  Created by 송영현 on 2018. 3. 19..
//  Copyright © 2018년 draconian. All rights reserved.
//

/*
 클래스 파일
 클래스 이름으로 파일 생성
 
 선언부 : 헤더 파일 .h
 구현부 : 구현 파일 .m
 
 일반적으로 헤더 파일은 공개

 클래스 선언 - 클래스의 행위를 알리는 역할
 형식
 @interface className : ParentName
 @end

 멤버 변수 선언
 클래스에서 다루는 데이터
 
 setter
 메소드 이름 : set + 변수이름(captialize)
 반환값은 void, 변수 타입 파라미터
 
 getter
 메소드 이름 : 변수 이름과 같이
 반환값은 멤버 변수와 같은 타입, 파라미터 없음
 */

#import <Foundation/Foundation.h>

@interface Rectangle : NSObject {
    int width;
    int height;
}
// 인스턴스 메소드 선언

- (void)setWidth:(int)newWidth;
- (int)width;

- (void)setHeight:(int)newHeight;
- (int)height;

- (int)size;

- (void)setWidth:(int)newWidth height:(int)newHeight;

- (BOOL)isSquare;

@end




