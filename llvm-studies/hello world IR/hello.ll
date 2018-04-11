; This is output of
; % llvm-as hello.ll
; % llvm-dis hello.bc

; ModuleID = 'hello.bc'
source_filename = "hello.ll"

@.str = private unnamed_addr constant [13 x i8] c"hello world\0A\00"

; Function Attrs: nounwind
declare i32 @puts(i8* nocapture) #0

define i32 @main() {
  %cast210 = getelementptr [13 x i8], [13 x i8]* @.str, i64 0, i64 0
  %1 = call i32 @puts(i8* %cast210)
  ret i32 0
}

attributes #0 = { nounwind }

!foo = !{!0}

!0 = !{i32 42, null, !"string"}
