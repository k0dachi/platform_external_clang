// RUN: %clang_cc1 -triple x86_64-apple-darwin10 -g -S -emit-llvm %s -o - | FileCheck %s
@interface NSObject {
  struct objc_object *isa;
}
@end

@interface Shape : NSObject

@end
// CHECK: !MDCompositeType(tag: DW_TAG_structure_type, name: "Circle"
// CHECK-SAME:             line: [[@LINE+1]],
@interface Circle : Shape

@end
@implementation Circle

@end
