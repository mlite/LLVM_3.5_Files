; ModuleID = 'a.bc'
target datalayout = "e-m:e-p:32:32-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

%struct.timespec = type { i32, i32 }

@__cgt = global i32 (i32, %struct.timespec*)* @__vdso_clock_gettime, align 4

@__vdso_clock_gettime = alias weak i32 (i32, %struct.timespec*)* @sc_clock_gettime
@clock_gettime = alias weak i32 (i32, %struct.timespec*)* @__clock_gettime

; Function Attrs: nounwind
define internal i32 @sc_clock_gettime(i32 %clk, %struct.timespec* %ts) #0 {
entry:
  %retval = alloca i32, align 4
  %clk.addr = alloca i32, align 4
  %ts.addr = alloca %struct.timespec*, align 4
  %r = alloca i32, align 4
  store i32 %clk, i32* %clk.addr, align 4
  store %struct.timespec* %ts, %struct.timespec** %ts.addr, align 4
  %0 = load i32* %clk.addr, align 4
  %1 = load %struct.timespec** %ts.addr, align 4
  %2 = ptrtoint %struct.timespec* %1 to i32
  %call = call i32 @__syscall2(i32 265, i32 %0, i32 %2)
  store i32 %call, i32* %r, align 4
  %3 = load i32* %r, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %4 = load i32* %r, align 4
  store i32 %4, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %5 = load i32* %r, align 4
  %cmp = icmp eq i32 %5, -38
  br i1 %cmp, label %if.then1, label %if.end7

if.then1:                                         ; preds = %if.end
  %6 = load i32* %clk.addr, align 4
  %cmp2 = icmp eq i32 %6, 0
  br i1 %cmp2, label %if.then3, label %if.end6

if.then3:                                         ; preds = %if.then1
  %7 = load %struct.timespec** %ts.addr, align 4
  %8 = ptrtoint %struct.timespec* %7 to i32
  %call4 = call i32 @__syscall2(i32 78, i32 %8, i32 0)
  %9 = load %struct.timespec** %ts.addr, align 4
  %tv_nsec = getelementptr inbounds %struct.timespec* %9, i32 0, i32 1
  %10 = load i32* %tv_nsec, align 4
  %mul = mul nsw i32 %10, 1000
  %11 = load %struct.timespec** %ts.addr, align 4
  %tv_nsec5 = getelementptr inbounds %struct.timespec* %11, i32 0, i32 1
  store i32 %mul, i32* %tv_nsec5, align 4
  store i32 0, i32* %retval
  br label %return

if.end6:                                          ; preds = %if.then1
  store i32 -22, i32* %r, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.end6, %if.end
  %12 = load i32* %r, align 4
  %sub = sub nsw i32 0, %12
  %call8 = call i32* @__errno_location() #3
  store i32 %sub, i32* %call8, align 4
  store i32 -1, i32* %retval
  br label %return

return:                                           ; preds = %if.end7, %if.then3, %if.then
  %13 = load i32* %retval
  ret i32 %13
}

; Function Attrs: nounwind
define i32 @__clock_gettime(i32 %clk, %struct.timespec* %ts) #0 {
entry:
  %clk.addr = alloca i32, align 4
  %ts.addr = alloca %struct.timespec*, align 4
  store i32 %clk, i32* %clk.addr, align 4
  store %struct.timespec* %ts, %struct.timespec** %ts.addr, align 4
  %0 = load i32 (i32, %struct.timespec*)** @__cgt, align 4
  %tobool = icmp ne i32 (i32, %struct.timespec*)* %0, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load i32 (i32, %struct.timespec*)** @__cgt, align 4
  %2 = load i32* %clk.addr, align 4
  %3 = load %struct.timespec** %ts.addr, align 4
  %call = call i32 %1(i32 %2, %struct.timespec* %3)
  br label %cond.end

cond.false:                                       ; preds = %entry
  %4 = load i32* %clk.addr, align 4
  %5 = load %struct.timespec** %ts.addr, align 4
  %call1 = call i32 @sc_clock_gettime(i32 %4, %struct.timespec* %5)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %call1, %cond.false ]
  ret i32 %cond
}

; Function Attrs: inlinehint nounwind
define internal i32 @__syscall2(i32 %n, i32 %a1, i32 %a2) #1 {
entry:
  %n.addr = alloca i32, align 4
  %a1.addr = alloca i32, align 4
  %a2.addr = alloca i32, align 4
  %__ret = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  store i32 %a1, i32* %a1.addr, align 4
  store i32 %a2, i32* %a2.addr, align 4
  %0 = load i32* %n.addr, align 4
  %1 = load i32* %a1.addr, align 4
  %2 = load i32* %a2.addr, align 4
  %3 = call i32 asm sideeffect "call __vsyscall", "={ax},{ax},{dx},{cx},~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %0, i32 %1, i32 %2) #4, !srcloc !1
  store i32 %3, i32* %__ret, align 4
  %4 = load i32* %__ret, align 4
  ret i32 %4
}

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #2

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { inlinehint nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }
attributes #4 = { nounwind }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
!1 = metadata !{i32 68100}
