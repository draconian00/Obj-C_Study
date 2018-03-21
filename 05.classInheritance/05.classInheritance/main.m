//
//  main.m
//  05.classInheritance
//
//  Created by 송영현 on 2018. 3. 21..
//  Copyright © 2018년 draconian. All rights reserved.
//
/* 05. 클래스 상속
 - ios 상속
 - 뷰(부모 클래스)와 레이블, 이미지 뷰, 버튼
 - 뷰의 속성과 행위(위치, 크기, 화면 표시)를 상속
 - 상속을 통해서 상세화, 구체화됨
 
 - 자식 클래스 생성
 @interface Square : Rectangle
 @end
 
 - is-a 관계
 자식 클래스 객체는 부모 클래스 객체로 취급
 뷰 관계에서의 is-a 관계
 UIView *view1 = [[UILable alloc] init];
 UIView *view2 = [[UIImageView alloc] init];

 ex) Square는 Rectangle이다
 Retangel *obj = [[Square alloc] init];
 
 - 메소드 재정의
 상속 : 부모 클래스의 메소드 상속
 매소드 재정의 : 부모 클래스의 메소드를 재정의
 
 overriding
 
 @implementation Square
 - (void)setWidth:(int)newWidth {
    width = newWidth;
    height = newWidth;
 }
 @end
 
 - 오버로딩
 오버로딩 : 같은 메소드를 파라미터로 구분
 오브젝티브 씨 : 오버로딩 지원 안함
 - (void)foo:(int)i;
 - (void)foo:(NSString *)str;
 레이블을 다르게 작성해야 한다.
 - (void)foo:(int)a with:(float)b;
 - (void)foo:(int)a second:(float)b;
 
 - 포인터 super
 self : 클래스 내부에서 동작 중인 객체 참조
 super : 부모 클래스 부분을 참조
 Square 에서 부모 클래스 Rectangle 기능 사용
 - (void)setWidth:(int)newWidth {
    [super setWidth:newWidth];
    [super setHeight:newWidth];
 }
 
 -- 동적 타입과 바인딍
 - 정적 타입 : 코드 작성시 타입을 명시
 BOOL boolVar;
 int intVar;
 NSString *strVar;
 
 - 동적 타입 : 코드 작성시 타입을 명시하지 않음
 id 사용, 포인터 형이고 *를 사용하지 않음
 id dynamicTypeVar;
 - (void)dynamicTypeMethod:(id)arg;
 
 - 동적 바인딩
 바인딩 : 참조와 구현의 연결
    - 포인터 변수가 객체와 연결
    - 메소드 호출 코드와 메소드 구현부 연결
 정적 바인딩(static binding) : 컴파일 시간에 결정
 동적 바인딩(dynamic binding) : 런타임
 Obj-c : 동적 바인딩 언어
 
 클래스 알아내기 - Obj-C 가 동적 바인딩 언어이기 때문에 컴파일 시 에러를 잡아낼 수 없어서
 - 포인터가 가리키는 객체의 클래스 알아내기
 - (Class)superclass;
 - (Class)class;
 
 - 클래스에서 생성된 객체 알아내기
 - (BOOL)isMemberOfClass:(Class)aClass;
 - (BOOL)isKindOfClass:(Class)aClass; - 상속까지 고려한 메소드 - 부모 클래스의 클래스를 넣어도 동작
 
 객체 생성 메소드
 
 - 초기화 메소드
 객체 생성 alloc / init --> [[className alloc] init]
    alloc : 객체 생성
    init : 초기화
 객체 생성 과정에서 동작해야 하는 코드 --> init 메소드 재정의
 
 init 메소드 재정의
 부모 클래스를 이용한 초기화
 부모 클래스의 초기화 과정 성공시 초기화 코드 동작
 생성된 객체 반환 --> return self;
 
 다양한 객체 초기화 메소드
 가장 많은 정보를 이용하는 초기화 메소드 재사용
 - (id)init {
    return [self initWithWidth:10 height:10];
 }
 
 - 팩토리 메소드 : 객체 생성 디자인 패턴
 객체를 생성하고 반환하는 코드
 클래스 메소드
 메소드의 이름은 클래스의 이름으로 시작
 
 */

#import <Foundation/Foundation.h>
#import "Rectangle.h"
#import "Square.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Square *s1 = [[Square alloc] init];
        [s1 setHeight:10];
        [s1 setWidth:10];
        
        NSLog(@"width : %d, height %d", [s1 width], [s1 height]);
        NSLog(@"size : %d", [s1 size]);
        NSLog(@"isSquare : %@", [s1 isSquare] ? @"YES" : @"NO");
        
        Square *s2 = [[Square alloc] init];
        [s2 setWidth:20];
        
        NSLog(@"width : %d, height %d", [s2 width], [s2 height]);
        NSLog(@"size : %d", [s2 size]);
        NSLog(@"isSquare : %@", [s2 isSquare] ? @"YES" : @"NO");
        
//        if ([s1 isMemberOfClass:[Rectangle class]]) {
//            NSLog(@"Rectangle class");
//        } else {
//            NSLog(@"is Not");
//        }
//
//        if ([s1 isKindOfClass:[Rectangle class]]) {
//            NSLog(@"kind of Rectangle");
//        } else {
//            NSLog(@"is not kind of RECT");
//        }
        
        Square *s3 = [[Square alloc] initWithWidth:50];
        NSLog(@"s3 size : %d", [s3 size]);
        
        Square *s4 = [[Square alloc] init];
        NSLog(@"s4 size : %d", [s4 size]);
        
        Rectangle *obj1 = [Rectangle rectangle];
        NSLog(@"obj1 size : %d", [obj1 size]);
        
        Rectangle *obj2 = [Rectangle rectangle:30 height:50];
        NSLog(@"obj2 size : %d", [obj2 size]);
        
        Square *obj3 = [Square squareWithWidth:80];
        NSLog(@"obj3 size : %d", [obj3 size]);
    }
    return 0;
}
