(component
  (type (;0;)
    (instance
      (type (;0;) u32)
      (export (;1;) "input-stream" (type (eq 0)))
      (type (;2;) (func (param "this" 1)))
      (export (;0;) "drop-input-stream" (func (type 2)))
      (type (;3;) u32)
      (export (;4;) "output-stream" (type (eq 3)))
      (type (;5;) (list u8))
      (type (;6;) (record))
      (export (;7;) "stream-error" (type (eq 6)))
      (type (;8;) (result u64 (error 7)))
      (type (;9;) (func (param "this" 4) (param "buf" 5) (result 8)))
      (export (;1;) "write" (func (type 9)))
      (type (;10;) (func (param "this" 4)))
      (export (;2;) "drop-output-stream" (func (type 10)))
    )
  )
  (import "streams" "path:/io/streams/streams" (instance (;0;) (type 0)))
  (alias export 0 "output-stream" (type (;1;)))
  (type (;2;)
    (instance
      (type (;0;) u32)
      (export (;1;) "descriptor" (type (eq 0)))
      (type (;2;) u64)
      (export (;3;) "filesize" (type (eq 2)))
      (alias outer 1 1 (type (;4;)))
      (export (;5;) "output-stream" (type (eq 4)))
      (type (;6;) (func (param "this" 1) (param "offset" 3) (result 5)))
      (export (;0;) "write-via-stream" (func (type 6)))
      (type (;7;) (func (param "this" 1) (result 5)))
      (export (;1;) "append-via-stream" (func (type 7)))
      (type (;8;) (func (param "this" 1)))
      (export (;2;) "drop-descriptor" (func (type 8)))
    )
  )
  (import "filesystem" "path:/filesystem/filesystem/filesystem" (instance (;1;) (type 2)))
  (type (;3;)
    (instance
      (type (;0;) (tuple string string))
      (type (;1;) (list 0))
      (type (;2;) (func (result 1)))
      (export (;0;) "get-environment" (func (type 2)))
    )
  )
  (import "environment" (instance (;2;) (type 3)))
  (type (;4;)
    (instance
      (type (;0;) (result))
      (type (;1;) (func (param "status" 0)))
      (export (;0;) "exit" (func (type 1)))
    )
  )
  (import "exit" (instance (;3;) (type 4)))
  (type (;5;)
    (instance
      (type (;0;) (func (param "message" string)))
      (export (;0;) "print" (func (type 0)))
    )
  )
  (import "stderr" (instance (;4;) (type 5)))
  (type (;6;) (record (field "content" string)))
  (import "response" (type (eq 6)))
  (type (;8;) (record (field "name" string) (field "version" string)))
  (import "plugin-config" (type (eq 8)))
  (type (;10;) (func (result 9)))
  (import "get-config" (func (;0;) (type 10)))
  (core module (;0;)
    (type $.rodata (;0;) (func (param i32)))
    (type $.data (;1;) (func (param i32) (result i64)))
    (type (;2;) (func (param i32 i32 i32)))
    (type (;3;) (func (param i32 i32)))
    (type (;4;) (func (param i32 i32 i32) (result i32)))
    (type (;5;) (func (param i32 i32) (result i32)))
    (type (;6;) (func (param i32 i32 i32 i32) (result i32)))
    (type (;7;) (func))
    (type (;8;) (func (param i32 i32 i32 i32)))
    (type (;9;) (func (param i32) (result i32)))
    (type (;10;) (func (param i32 i32 i32 i32 i32)))
    (type (;11;) (func (param i32 i32 i32 i32 i32 i32 i32 i32)))
    (type (;12;) (func (param i32 i32 i32 i32 i32 i32 i32)))
    (type (;13;) (func (result i32)))
    (type (;14;) (func (param i32 i32 i32 i32 i32) (result i32)))
    (type (;15;) (func (param i32 i32 i32 i32 i32 i32) (result i32)))
    (type (;16;) (func (param i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32) (result i32)))
    (type (;17;) (func (param i64 i32 i32) (result i32)))
    (import "$root" "get-config" (func $_ZN16wit_sample_guest10get_config10wit_import17hcb0e2283a6937a1aE (;0;) (type $.rodata)))
    (import "wasi_snapshot_preview1" "fd_write" (func $_ZN4wasi13lib_generated22wasi_snapshot_preview18fd_write17hb97b2006f57f9505E (;1;) (type 6)))
    (import "wasi_snapshot_preview1" "environ_get" (func $__imported_wasi_snapshot_preview1_environ_get (;2;) (type 5)))
    (import "wasi_snapshot_preview1" "environ_sizes_get" (func $__imported_wasi_snapshot_preview1_environ_sizes_get (;3;) (type 5)))
    (import "wasi_snapshot_preview1" "proc_exit" (func $__imported_wasi_snapshot_preview1_proc_exit (;4;) (type $.rodata)))
    (func $__wasm_call_ctors (;5;) (type 7)
      call $__wasilibc_initialize_environ_eagerly
    )
    (func $_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17h6262c3844736fa3dE (;6;) (type 2) (param i32 i32 i32)
      (local i32 i32 i32 i32 i32 i32 i32 i32 i32)
      global.get $__stack_pointer
      local.set 3
      i32.const 32
      local.set 4
      local.get 3
      local.get 4
      i32.sub
      local.set 5
      local.get 5
      global.set $__stack_pointer
      local.get 5
      local.get 1
      i32.store offset=8
      local.get 5
      local.get 2
      i32.store offset=12
      local.get 5
      local.get 0
      i32.store offset=20
      i32.const 8
      local.set 6
      local.get 5
      local.get 6
      i32.add
      local.set 7
      local.get 5
      local.get 7
      call $_ZN4core5slice4iter13Iter$LT$T$GT$8as_slice17heedc3617dc8c00fbE
      local.get 5
      i32.load offset=4
      local.set 8
      local.get 5
      i32.load
      local.set 9
      local.get 5
      local.get 9
      i32.store offset=24
      local.get 5
      local.get 8
      i32.store offset=28
      local.get 0
      local.get 9
      local.get 8
      call $_ZN5alloc3vec16Vec$LT$T$C$A$GT$15append_elements17h90e09da4c9529726E
      i32.const 32
      local.set 10
      local.get 5
      local.get 10
      i32.add
      local.set 11
      local.get 11
      global.set $__stack_pointer
      return
    )
    (func $_ZN5alloc3vec16Vec$LT$T$C$A$GT$15append_elements17h90e09da4c9529726E (;7;) (type 2) (param i32 i32 i32)
      (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
      global.get $__stack_pointer
      local.set 3
      i32.const 96
      local.set 4
      local.get 3
      local.get 4
      i32.sub
      local.set 5
      local.get 5
      global.set $__stack_pointer
      local.get 5
      local.get 0
      i32.store offset=4
      local.get 5
      local.get 1
      i32.store offset=8
      local.get 5
      local.get 2
      i32.store offset=12
      local.get 5
      local.get 2
      i32.store offset=16
      local.get 0
      local.get 2
      call $_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h87b4fd4f4058a552E
      local.get 5
      local.get 0
      i32.store offset=20
      local.get 0
      i32.load offset=8
      local.set 6
      local.get 5
      local.get 6
      i32.store offset=24
      local.get 5
      local.get 1
      i32.store offset=28
      local.get 5
      local.get 0
      i32.store offset=32
      local.get 5
      local.get 0
      i32.store offset=36
      local.get 0
      i32.load offset=4
      local.set 7
      local.get 5
      local.get 7
      i32.store offset=40
      local.get 5
      local.get 7
      i32.store offset=44
      local.get 5
      local.get 7
      i32.store offset=48
      local.get 5
      local.get 7
      i32.store offset=52
      local.get 5
      local.get 7
      i32.store
      local.get 5
      i32.load
      local.set 8
      local.get 5
      local.get 8
      i32.store offset=56
      local.get 5
      local.get 8
      i32.store offset=60
      local.get 5
      local.get 8
      i32.store offset=64
      local.get 5
      local.get 8
      i32.store offset=68
      local.get 5
      local.get 6
      i32.store offset=72
      local.get 5
      local.get 7
      i32.store offset=76
      local.get 5
      local.get 6
      i32.store offset=80
      local.get 7
      local.get 6
      i32.add
      local.set 9
      local.get 5
      local.get 9
      i32.store offset=84
      local.get 5
      i32.load offset=84
      local.set 10
      local.get 5
      local.get 10
      i32.store offset=88
      local.get 5
      local.get 2
      i32.store offset=92
      i32.const 0
      local.set 11
      local.get 2
      local.get 11
      i32.shl
      local.set 12
      local.get 10
      local.get 1
      local.get 12
      call $memcpy
      drop
      local.get 0
      i32.load offset=8
      local.set 13
      local.get 13
      local.get 2
      i32.add
      local.set 14
      local.get 0
      local.get 14
      i32.store offset=8
      i32.const 96
      local.set 15
      local.get 5
      local.get 15
      i32.add
      local.set 16
      local.get 16
      global.set $__stack_pointer
      return
    )
    (func $_ZN5alloc3vec12Vec$LT$T$GT$14from_raw_parts17h5a0942210df77500E (;8;) (type 8) (param i32 i32 i32 i32)
      (local i32 i32 i32 i32 i32 i32 i32)
      global.get $__stack_pointer
      local.set 4
      i32.const 80
      local.set 5
      local.get 4
      local.get 5
      i32.sub
      local.set 6
      local.get 6
      local.get 1
      i32.store offset=28
      local.get 6
      local.get 2
      i32.store offset=32
      local.get 6
      local.get 3
      i32.store offset=36
      local.get 6
      local.get 1
      i32.store offset=52
      local.get 6
      local.get 2
      i32.store offset=56
      local.get 6
      local.get 3
      i32.store offset=60
      local.get 6
      local.get 1
      i32.store offset=64
      local.get 6
      local.get 3
      i32.store offset=68
      local.get 6
      local.get 1
      i32.store offset=72
      local.get 6
      local.get 1
      i32.store offset=76
      local.get 6
      local.get 1
      i32.store offset=24
      local.get 6
      i32.load offset=24
      local.set 7
      local.get 6
      local.get 7
      i32.store offset=20
      local.get 6
      i32.load offset=20
      local.set 8
      local.get 6
      local.get 8
      i32.store offset=12
      local.get 6
      local.get 3
      i32.store offset=8
      local.get 6
      i32.load offset=8
      local.set 9
      local.get 6
      i32.load offset=12
      local.set 10
      local.get 0
      local.get 9
      i32.store
      local.get 0
      local.get 10
      i32.store offset=4
      local.get 0
      local.get 2
      i32.store offset=8
      return
    )
    (func $_ZN5alloc3vec16Vec$LT$T$C$A$GT$13shrink_to_fit17h59375f48e80b4e95E (;9;) (type $.rodata) (param i32)
      (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
      global.get $__stack_pointer
      local.set 1
      i32.const 16
      local.set 2
      local.get 1
      local.get 2
      i32.sub
      local.set 3
      local.get 3
      global.set $__stack_pointer
      local.get 3
      local.get 0
      i32.store offset=4
      local.get 3
      local.get 0
      i32.store offset=8
      local.get 3
      local.get 0
      i32.store offset=12
      i32.const 0
      local.set 4
      i32.const 1
      local.set 5
      local.get 4
      local.get 5
      i32.and
      local.set 6
      block ;; label = @1
        block ;; label = @2
          local.get 6
          br_if 0 (;@2;)
          local.get 0
          i32.load
          local.set 7
          local.get 3
          local.get 7
          i32.store
          br 1 (;@1;)
        end
        i32.const -1
        local.set 8
        local.get 3
        local.get 8
        i32.store
      end
      local.get 0
      i32.load offset=8
      local.set 9
      local.get 3
      i32.load
      local.set 10
      local.get 10
      local.set 11
      local.get 9
      local.set 12
      local.get 11
      local.get 12
      i32.gt_u
      local.set 13
      i32.const 1
      local.set 14
      local.get 13
      local.get 14
      i32.and
      local.set 15
      block ;; label = @1
        local.get 15
        i32.eqz
        br_if 0 (;@1;)
        local.get 0
        i32.load offset=8
        local.set 16
        local.get 0
        local.get 16
        call $_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$13shrink_to_fit17h08ba79cbdc1a9876E
      end
      i32.const 16
      local.set 17
      local.get 3
      local.get 17
      i32.add
      local.set 18
      local.get 18
      global.set $__stack_pointer
      return
    )
    (func $_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h87b4fd4f4058a552E (;10;) (type 3) (param i32 i32)
      (local i32 i32 i32 i32 i32 i32)
      global.get $__stack_pointer
      local.set 2
      i32.const 16
      local.set 3
      local.get 2
      local.get 3
      i32.sub
      local.set 4
      local.get 4
      global.set $__stack_pointer
      local.get 4
      local.get 0
      i32.store offset=8
      local.get 4
      local.get 1
      i32.store offset=12
      local.get 0
      i32.load offset=8
      local.set 5
      local.get 0
      local.get 5
      local.get 1
      call $_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve17h8ad9baad29ba5473E
      i32.const 16
      local.set 6
      local.get 4
      local.get 6
      i32.add
      local.set 7
      local.get 7
      global.set $__stack_pointer
      return
    )
    (func $_ZN5alloc3vec16Vec$LT$T$C$A$GT$16into_boxed_slice17h84ffb49497777477E (;11;) (type 3) (param i32 i32)
      (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i32 i32 i32 i32 i64 i32 i32 i32 i32 i64 i32 i32 i32 i32 i32 i32 i64 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
      global.get $__stack_pointer
      local.set 2
      i32.const 128
      local.set 3
      local.get 2
      local.get 3
      i32.sub
      local.set 4
      local.get 4
      global.set $__stack_pointer
      local.get 1
      call $_ZN5alloc3vec16Vec$LT$T$C$A$GT$13shrink_to_fit17h59375f48e80b4e95E
      i32.const 8
      local.set 5
      local.get 1
      local.get 5
      i32.add
      local.set 6
      local.get 6
      i32.load
      local.set 7
      i32.const 32
      local.set 8
      local.get 4
      local.get 8
      i32.add
      local.set 9
      local.get 9
      local.get 5
      i32.add
      local.set 10
      local.get 10
      local.get 7
      i32.store
      local.get 1
      i64.load align=4
      local.set 11
      local.get 4
      local.get 11
      i64.store offset=32
      i32.const 48
      local.set 12
      local.get 4
      local.get 12
      i32.add
      local.set 13
      local.get 13
      local.get 5
      i32.add
      local.set 14
      local.get 10
      i32.load
      local.set 15
      local.get 14
      local.get 15
      i32.store
      local.get 4
      i64.load offset=32
      local.set 16
      local.get 4
      local.get 16
      i64.store offset=48
      i32.const 16
      local.set 17
      local.get 4
      local.get 17
      i32.add
      local.set 18
      local.get 18
      local.get 5
      i32.add
      local.set 19
      local.get 14
      i32.load
      local.set 20
      local.get 19
      local.get 20
      i32.store
      local.get 4
      i64.load offset=48
      local.set 21
      local.get 4
      local.get 21
      i64.store offset=16
      i32.const 16
      local.set 22
      local.get 4
      local.get 22
      i32.add
      local.set 23
      local.get 4
      local.get 23
      i32.store offset=76
      i32.const 16
      local.set 24
      local.get 4
      local.get 24
      i32.add
      local.set 25
      local.get 4
      local.get 25
      i32.store offset=80
      i32.const 64
      local.set 26
      local.get 4
      local.get 26
      i32.add
      local.set 27
      local.get 4
      local.get 27
      i32.store offset=84
      local.get 4
      i64.load offset=16
      local.set 28
      local.get 4
      local.get 28
      i64.store offset=64
      local.get 4
      i32.load offset=64
      local.set 29
      local.get 4
      i32.load offset=68
      local.set 30
      local.get 4
      local.get 29
      i32.store offset=88
      local.get 4
      local.get 30
      i32.store offset=92
      local.get 4
      local.get 29
      i32.store offset=96
      local.get 4
      local.get 30
      i32.store offset=100
      local.get 4
      local.get 29
      i32.store offset=104
      local.get 4
      local.get 30
      i32.store offset=108
      i32.const 16
      local.set 31
      local.get 4
      local.get 31
      i32.add
      local.set 32
      local.get 4
      local.get 32
      i32.store offset=116
      i32.const 16
      local.set 33
      local.get 4
      local.get 33
      i32.add
      local.set 34
      local.get 4
      local.get 34
      i32.store offset=120
      local.get 19
      i32.load
      local.set 35
      local.get 4
      local.get 35
      i32.store offset=124
      i32.const 8
      local.set 36
      local.get 4
      local.get 36
      i32.add
      local.set 37
      local.get 37
      local.get 29
      local.get 30
      local.get 35
      call $_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8into_box17hf1fedbc162dc27e8E
      local.get 4
      i32.load offset=12
      local.set 38
      local.get 4
      i32.load offset=8
      local.set 39
      local.get 4
      local.get 39
      local.get 38
      call $_ZN5alloc5boxed70Box$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$C$A$GT$11assume_init17he546865cf0bf7e44E
      local.get 4
      i32.load
      local.set 40
      local.get 4
      i32.load offset=4
      local.set 41
      local.get 0
      local.get 41
      i32.store offset=4
      local.get 0
      local.get 40
      i32.store
      i32.const 128
      local.set 42
      local.get 4
      local.get 42
      i32.add
      local.set 43
      local.get 43
      global.set $__stack_pointer
      return
    )
    (func $_ZN5alloc3vec16Vec$LT$T$C$A$GT$17extend_from_slice17h408ffb6f029364baE (;12;) (type 2) (param i32 i32 i32)
      (local i32 i32 i32 i32 i32 i32 i32)
      global.get $__stack_pointer
      local.set 3
      i32.const 32
      local.set 4
      local.get 3
      local.get 4
      i32.sub
      local.set 5
      local.get 5
      global.set $__stack_pointer
      local.get 5
      local.get 0
      i32.store offset=12
      local.get 5
      local.get 1
      i32.store offset=16
      local.get 5
      local.get 2
      i32.store offset=20
      local.get 5
      local.get 1
      i32.store offset=24
      local.get 5
      local.get 2
      i32.store offset=28
      local.get 5
      local.get 1
      local.get 2
      call $_ZN4core5slice4iter13Iter$LT$T$GT$3new17hb8e67eb7ba41edc2E
      local.get 5
      i32.load offset=4
      local.set 6
      local.get 5
      i32.load
      local.set 7
      local.get 0
      local.get 7
      local.get 6
      call $_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17h6262c3844736fa3dE
      i32.const 32
      local.set 8
      local.get 5
      local.get 8
      i32.add
      local.set 9
      local.get 9
      global.set $__stack_pointer
      return
    )
    (func $_ZN72_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h1d91db52c5838605E (;13;) (type 3) (param i32 i32)
      (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
      global.get $__stack_pointer
      local.set 2
      i32.const 96
      local.set 3
      local.get 2
      local.get 3
      i32.sub
      local.set 4
      local.get 4
      local.get 1
      i32.store offset=24
      local.get 4
      local.get 1
      i32.store offset=28
      local.get 4
      local.get 1
      i32.store offset=32
      local.get 1
      i32.load offset=4
      local.set 5
      local.get 4
      local.get 5
      i32.store offset=36
      local.get 4
      local.get 5
      i32.store offset=40
      local.get 4
      local.get 5
      i32.store offset=44
      local.get 4
      local.get 5
      i32.store offset=48
      local.get 4
      local.get 5
      i32.store offset=4
      local.get 4
      i32.load offset=4
      local.set 6
      local.get 4
      local.get 6
      i32.store offset=52
      local.get 4
      local.get 6
      i32.store offset=56
      local.get 4
      local.get 6
      i32.store offset=60
      local.get 4
      local.get 6
      i32.store offset=64
      local.get 4
      local.get 5
      i32.store offset=68
      local.get 1
      i32.load offset=8
      local.set 7
      local.get 4
      local.get 7
      i32.store offset=72
      local.get 4
      local.get 5
      i32.store offset=76
      local.get 4
      local.get 7
      i32.store offset=80
      local.get 4
      local.get 5
      i32.store offset=84
      local.get 4
      local.get 5
      i32.store offset=88
      local.get 4
      local.get 7
      i32.store offset=92
      local.get 4
      local.get 5
      i32.store offset=16
      local.get 4
      local.get 7
      i32.store offset=20
      local.get 4
      i32.load offset=16
      local.set 8
      local.get 4
      i32.load offset=20
      local.set 9
      local.get 4
      local.get 8
      i32.store offset=8
      local.get 4
      local.get 9
      i32.store offset=12
      local.get 4
      i32.load offset=8
      local.set 10
      local.get 4
      i32.load offset=12
      local.set 11
      local.get 0
      local.get 11
      i32.store offset=4
      local.get 0
      local.get 10
      i32.store
      return
    )
    (func $_ZN4core5slice4iter13Iter$LT$T$GT$3new17hb8e67eb7ba41edc2E (;14;) (type 2) (param i32 i32 i32)
      (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
      global.get $__stack_pointer
      local.set 3
      i32.const 160
      local.set 4
      local.get 3
      local.get 4
      i32.sub
      local.set 5
      local.get 5
      global.set $__stack_pointer
      local.get 5
      local.get 1
      i32.store offset=48
      local.get 5
      local.get 2
      i32.store offset=52
      local.get 5
      local.get 1
      i32.store offset=64
      local.get 5
      local.get 2
      i32.store offset=68
      local.get 5
      local.get 1
      i32.store offset=76
      local.get 5
      local.get 1
      i32.store offset=80
      local.get 5
      local.get 1
      i32.store offset=28
      local.get 5
      i32.load offset=28
      local.set 6
      local.get 5
      local.get 6
      i32.store offset=84
      local.get 5
      local.get 6
      i32.store offset=88
      local.get 5
      local.get 6
      i32.store offset=92
      local.get 5
      local.get 6
      i32.store offset=96
      i32.const 0
      local.set 7
      i32.const 1
      local.set 8
      local.get 7
      local.get 8
      i32.and
      local.set 9
      block ;; label = @1
        block ;; label = @2
          local.get 9
          br_if 0 (;@2;)
          local.get 5
          local.get 1
          i32.store offset=140
          local.get 5
          local.get 2
          i32.store offset=144
          local.get 5
          local.get 1
          i32.store offset=148
          local.get 5
          local.get 2
          i32.store offset=152
          local.get 1
          local.get 2
          i32.add
          local.set 10
          local.get 5
          local.get 10
          i32.store offset=20
          br 1 (;@1;)
        end
        local.get 5
        local.get 1
        i32.store offset=100
        local.get 5
        local.get 2
        i32.store offset=104
        local.get 5
        local.get 1
        i32.store offset=108
        local.get 5
        local.get 1
        i32.store offset=112
        local.get 5
        local.get 2
        i32.store offset=116
        local.get 5
        local.get 1
        i32.store offset=120
        local.get 5
        local.get 2
        i32.store offset=124
        local.get 1
        local.get 2
        i32.add
        local.set 11
        local.get 5
        local.get 11
        i32.store offset=128
        local.get 5
        i32.load offset=128
        local.set 12
        local.get 5
        local.get 12
        i32.store offset=132
        local.get 5
        local.get 12
        i32.store offset=136
        local.get 5
        local.get 12
        i32.store offset=40
        local.get 5
        i32.load offset=40
        local.set 13
        local.get 5
        local.get 13
        i32.store offset=32
        local.get 5
        i32.load offset=32
        local.set 14
        local.get 5
        local.get 14
        i32.store offset=20
      end
      local.get 5
      local.get 1
      i32.store offset=156
      local.get 5
      local.get 1
      i32.store offset=24
      local.get 5
      i32.load offset=20
      local.set 15
      local.get 5
      i32.load offset=24
      local.set 16
      local.get 5
      local.get 16
      i32.store offset=12
      local.get 5
      local.get 15
      i32.store offset=8
      local.get 5
      i32.load offset=8
      local.set 17
      local.get 5
      i32.load offset=12
      local.set 18
      local.get 0
      local.get 18
      i32.store offset=4
      local.get 0
      local.get 17
      i32.store
      i32.const 160
      local.set 19
      local.get 5
      local.get 19
      i32.add
      local.set 20
      local.get 20
      global.set $__stack_pointer
      return
    )
    (func $_ZN4core5slice4iter13Iter$LT$T$GT$8as_slice17heedc3617dc8c00fbE (;15;) (type 3) (param i32 i32)
      (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
      global.get $__stack_pointer
      local.set 2
      i32.const 112
      local.set 3
      local.get 2
      local.get 3
      i32.sub
      local.set 4
      local.get 4
      global.set $__stack_pointer
      local.get 4
      local.get 1
      i32.store offset=32
      local.get 4
      local.get 1
      i32.store offset=36
      local.get 1
      i32.load offset=4
      local.set 5
      local.get 4
      local.get 5
      i32.store offset=40
      local.get 4
      local.get 5
      i32.store offset=44
      local.get 1
      i32.load offset=4
      local.set 6
      local.get 4
      local.get 6
      i32.store offset=48
      i32.const 0
      local.set 7
      i32.const 1
      local.set 8
      local.get 7
      local.get 8
      i32.and
      local.set 9
      block ;; label = @1
        block ;; label = @2
          local.get 9
          br_if 0 (;@2;)
          local.get 1
          i32.load
          local.set 10
          local.get 4
          local.get 6
          i32.store offset=88
          local.get 10
          local.get 6
          call $_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$7sub_ptr17h9d4f09d607d51aa4E
          local.set 11
          local.get 4
          local.get 11
          i32.store offset=12
          br 1 (;@1;)
        end
        local.get 1
        i32.load
        local.set 12
        local.get 4
        local.get 12
        i32.store offset=52
        local.get 4
        local.get 12
        i32.store offset=56
        local.get 4
        local.get 12
        i32.store offset=60
        local.get 4
        i32.load offset=60
        local.set 13
        local.get 4
        local.get 13
        i32.store offset=64
        local.get 4
        local.get 6
        i32.store offset=68
        local.get 4
        local.get 6
        i32.store offset=72
        local.get 4
        local.get 6
        i32.store offset=76
        local.get 4
        local.get 6
        i32.store offset=80
        local.get 4
        i32.load offset=80
        local.set 14
        local.get 4
        local.get 14
        i32.store offset=84
        local.get 13
        local.get 14
        i32.sub
        local.set 15
        local.get 4
        local.get 15
        i32.store offset=12
      end
      local.get 4
      local.get 5
      i32.store offset=92
      local.get 4
      i32.load offset=12
      local.set 16
      local.get 4
      local.get 16
      i32.store offset=96
      local.get 4
      local.get 5
      i32.store offset=100
      local.get 4
      local.get 5
      i32.store offset=104
      local.get 4
      local.get 16
      i32.store offset=108
      local.get 4
      local.get 5
      i32.store offset=24
      local.get 4
      local.get 16
      i32.store offset=28
      local.get 4
      i32.load offset=24
      local.set 17
      local.get 4
      i32.load offset=28
      local.set 18
      local.get 4
      local.get 17
      i32.store offset=16
      local.get 4
      local.get 18
      i32.store offset=20
      local.get 4
      i32.load offset=16
      local.set 19
      local.get 4
      i32.load offset=20
      local.set 20
      local.get 0
      local.get 20
      i32.store offset=4
      local.get 0
      local.get 19
      i32.store
      i32.const 112
      local.set 21
      local.get 4
      local.get 21
      i32.add
      local.set 22
      local.get 22
      global.set $__stack_pointer
      return
    )
    (func $_ZN78_$LT$wit_sample_guest..Responder$u20$as$u20$wit_sample_guest..SamplePlugin$GT$12gen_response17h74b3f8a895d40981E (;16;) (type 3) (param i32 i32)
      (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i32 i32 i32 i32 i32 i32 i32 i32 i64 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
      global.get $__stack_pointer
      local.set 2
      i32.const 64
      local.set 3
      local.get 2
      local.get 3
      i32.sub
      local.set 4
      local.get 4
      global.set $__stack_pointer
      i32.const 40
      local.set 5
      local.get 4
      local.get 5
      i32.add
      local.set 6
      local.get 6
      local.set 7
      local.get 7
      call $_ZN16wit_sample_guest10get_config17he95138a6152629cbE
      i32.const 8
      local.set 8
      i32.const 24
      local.set 9
      local.get 4
      local.get 9
      i32.add
      local.set 10
      local.get 10
      local.get 8
      i32.add
      local.set 11
      i32.const 40
      local.set 12
      local.get 4
      local.get 12
      i32.add
      local.set 13
      local.get 13
      local.get 8
      i32.add
      local.set 14
      local.get 14
      i32.load
      local.set 15
      local.get 11
      local.get 15
      i32.store
      local.get 4
      i64.load offset=40
      local.set 16
      local.get 4
      local.get 16
      i64.store offset=24
      local.get 4
      local.get 1
      call $_ZN65_$LT$alloc..string..String$u20$as$u20$core..ops..deref..Deref$GT$5deref17h072d044b80d6f840E
      local.get 4
      i32.load offset=4
      local.set 17
      local.get 4
      i32.load
      local.set 18
      i32.const 8
      local.set 19
      local.get 4
      local.get 19
      i32.add
      local.set 20
      local.get 20
      local.set 21
      i32.const 24
      local.set 22
      local.get 4
      local.get 22
      i32.add
      local.set 23
      local.get 23
      local.set 24
      local.get 21
      local.get 24
      local.get 18
      local.get 17
      call $_ZN78_$LT$alloc..string..String$u20$as$u20$core..ops..arith..Add$LT$$RF$str$GT$$GT$3add17h979b19b3de3d8c51E
      local.get 4
      i64.load offset=8
      local.set 25
      local.get 0
      local.get 25
      i64.store align=4
      i32.const 8
      local.set 26
      local.get 0
      local.get 26
      i32.add
      local.set 27
      i32.const 8
      local.set 28
      local.get 4
      local.get 28
      i32.add
      local.set 29
      local.get 29
      local.get 26
      i32.add
      local.set 30
      local.get 30
      i32.load
      local.set 31
      local.get 27
      local.get 31
      i32.store
      i32.const 40
      local.set 32
      local.get 4
      local.get 32
      i32.add
      local.set 33
      local.get 33
      local.set 34
      i32.const 12
      local.set 35
      local.get 34
      local.get 35
      i32.add
      local.set 36
      local.get 36
      call $_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h35e17815eaca2727E
      local.get 1
      call $_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h35e17815eaca2727E
      i32.const 64
      local.set 37
      local.get 4
      local.get 37
      i32.add
      local.set 38
      local.get 38
      global.set $__stack_pointer
      return
    )
    (func $_ZN16wit_sample_guest10get_config17he95138a6152629cbE (;17;) (type $.rodata) (param i32)
      (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i32 i32 i32 i32 i32 i32 i32 i32 i64 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
      global.get $__stack_pointer
      local.set 1
      i32.const 144
      local.set 2
      local.get 1
      local.get 2
      i32.sub
      local.set 3
      local.get 3
      global.set $__stack_pointer
      local.get 3
      local.set 4
      local.get 3
      local.get 4
      i32.store offset=140
      local.get 3
      local.set 5
      local.get 3
      local.get 5
      i32.store offset=128
      local.get 5
      call $_ZN16wit_sample_guest10get_config10wit_import17hcb0e2283a6937a1aE
      i32.const 4
      local.set 6
      local.get 5
      local.get 6
      i32.add
      local.set 7
      local.get 7
      local.get 5
      i32.lt_s
      local.set 8
      i32.const 1
      local.set 9
      local.get 8
      local.get 9
      i32.and
      local.set 10
      block ;; label = @1
        block ;; label = @2
          block ;; label = @3
            block ;; label = @4
              block ;; label = @5
                block ;; label = @6
                  block ;; label = @7
                    local.get 10
                    br_if 0 (;@7;)
                    local.get 7
                    i32.load
                    local.set 11
                    local.get 3
                    local.get 11
                    i32.store offset=132
                    i32.const 12
                    local.set 12
                    local.get 5
                    local.get 12
                    i32.add
                    local.set 13
                    local.get 13
                    local.get 5
                    i32.lt_s
                    local.set 14
                    i32.const 1
                    local.set 15
                    local.get 14
                    local.get 15
                    i32.and
                    local.set 16
                    local.get 16
                    br_if 2 (;@5;)
                    br 1 (;@6;)
                  end
                  i32.const 1048608
                  local.set 17
                  i32.const 28
                  local.set 18
                  i32.const 1048592
                  local.set 19
                  local.get 17
                  local.get 18
                  local.get 19
                  call $_ZN4core9panicking5panic17h72f0442034a99972E
                  unreachable
                end
                local.get 13
                i32.load
                local.set 20
                local.get 3
                local.get 20
                i32.store offset=136
                i32.const 0
                local.set 21
                local.get 5
                local.set 22
                i32.const 1
                local.set 23
                local.get 21
                local.get 23
                i32.and
                local.set 24
                local.get 24
                br_if 2 (;@3;)
                br 1 (;@4;)
              end
              i32.const 1048608
              local.set 25
              i32.const 28
              local.set 26
              i32.const 1048592
              local.set 27
              local.get 25
              local.get 26
              local.get 27
              call $_ZN4core9panicking5panic17h72f0442034a99972E
              unreachable
            end
            local.get 22
            i32.load
            local.set 28
            i32.const 56
            local.set 29
            local.get 3
            local.get 29
            i32.add
            local.set 30
            local.get 30
            local.set 31
            local.get 31
            local.get 28
            local.get 11
            local.get 11
            call $_ZN5alloc3vec12Vec$LT$T$GT$14from_raw_parts17h5a0942210df77500E
            i32.const 32
            local.set 32
            local.get 3
            local.get 32
            i32.add
            local.set 33
            local.get 33
            local.set 34
            i32.const 56
            local.set 35
            local.get 3
            local.get 35
            i32.add
            local.set 36
            local.get 36
            local.set 37
            local.get 34
            local.get 37
            call $_ZN5alloc6string6String9from_utf817h5a7815c5bccf9738E
            i32.const 16
            local.set 38
            local.get 3
            local.get 38
            i32.add
            local.set 39
            local.get 39
            local.set 40
            i32.const 32
            local.set 41
            local.get 3
            local.get 41
            i32.add
            local.set 42
            local.get 42
            local.set 43
            i32.const 1048592
            local.set 44
            local.get 40
            local.get 43
            local.get 44
            call $_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h570e78b07ccc88f4E
            i32.const 8
            local.set 45
            local.get 5
            local.get 45
            i32.add
            local.set 46
            local.get 46
            local.get 5
            i32.lt_s
            local.set 47
            i32.const 1
            local.set 48
            local.get 47
            local.get 48
            i32.and
            local.set 49
            local.get 49
            br_if 2 (;@1;)
            br 1 (;@2;)
          end
          i32.const 1048608
          local.set 50
          i32.const 28
          local.set 51
          i32.const 1048592
          local.set 52
          local.get 50
          local.get 51
          local.get 52
          call $_ZN4core9panicking5panic17h72f0442034a99972E
          unreachable
        end
        local.get 46
        i32.load
        local.set 53
        i32.const 112
        local.set 54
        local.get 3
        local.get 54
        i32.add
        local.set 55
        local.get 55
        local.set 56
        local.get 56
        local.get 53
        local.get 20
        local.get 20
        call $_ZN5alloc3vec12Vec$LT$T$GT$14from_raw_parts17h5a0942210df77500E
        i32.const 88
        local.set 57
        local.get 3
        local.get 57
        i32.add
        local.set 58
        local.get 58
        local.set 59
        i32.const 112
        local.set 60
        local.get 3
        local.get 60
        i32.add
        local.set 61
        local.get 61
        local.set 62
        local.get 59
        local.get 62
        call $_ZN5alloc6string6String9from_utf817h5a7815c5bccf9738E
        i32.const 72
        local.set 63
        local.get 3
        local.get 63
        i32.add
        local.set 64
        local.get 64
        local.set 65
        i32.const 88
        local.set 66
        local.get 3
        local.get 66
        i32.add
        local.set 67
        local.get 67
        local.set 68
        i32.const 1048592
        local.set 69
        local.get 65
        local.get 68
        local.get 69
        call $_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h570e78b07ccc88f4E
        local.get 3
        i64.load offset=16
        local.set 70
        local.get 0
        local.get 70
        i64.store align=4
        i32.const 8
        local.set 71
        local.get 0
        local.get 71
        i32.add
        local.set 72
        i32.const 16
        local.set 73
        local.get 3
        local.get 73
        i32.add
        local.set 74
        local.get 74
        local.get 71
        i32.add
        local.set 75
        local.get 75
        i32.load
        local.set 76
        local.get 72
        local.get 76
        i32.store
        i32.const 12
        local.set 77
        local.get 0
        local.get 77
        i32.add
        local.set 78
        local.get 3
        i64.load offset=72
        local.set 79
        local.get 78
        local.get 79
        i64.store align=4
        i32.const 8
        local.set 80
        local.get 78
        local.get 80
        i32.add
        local.set 81
        i32.const 72
        local.set 82
        local.get 3
        local.get 82
        i32.add
        local.set 83
        local.get 83
        local.get 80
        i32.add
        local.set 84
        local.get 84
        i32.load
        local.set 85
        local.get 81
        local.get 85
        i32.store
        i32.const 144
        local.set 86
        local.get 3
        local.get 86
        i32.add
        local.set 87
        local.get 87
        global.set $__stack_pointer
        return
      end
      i32.const 1048608
      local.set 88
      i32.const 28
      local.set 89
      i32.const 1048592
      local.set 90
      local.get 88
      local.get 89
      local.get 90
      call $_ZN4core9panicking5panic17h72f0442034a99972E
      unreachable
    )
    (func $gen-response (;18;) (type 5) (param i32 i32) (result i32)
      (local i32 i32 i32 i32 i32 i32)
      global.get $__stack_pointer
      local.set 2
      i32.const 16
      local.set 3
      local.get 2
      local.get 3
      i32.sub
      local.set 4
      local.get 4
      global.set $__stack_pointer
      local.get 4
      local.get 0
      i32.store offset=8
      local.get 4
      local.get 1
      i32.store offset=12
      local.get 0
      local.get 1
      call $_ZN16wit_sample_guest17call_gen_response17h103b6b6e28f3fe74E
      local.set 5
      i32.const 16
      local.set 6
      local.get 4
      local.get 6
      i32.add
      local.set 7
      local.get 7
      global.set $__stack_pointer
      local.get 5
      return
    )
    (func $cabi_post_gen-response (;19;) (type $.rodata) (param i32)
      (local i32 i32 i32 i32 i32)
      global.get $__stack_pointer
      local.set 1
      i32.const 16
      local.set 2
      local.get 1
      local.get 2
      i32.sub
      local.set 3
      local.get 3
      global.set $__stack_pointer
      local.get 3
      local.get 0
      i32.store offset=12
      local.get 0
      call $_ZN16wit_sample_guest24post_return_gen_response17ha7d95e8b42ef0d26E
      i32.const 16
      local.set 4
      local.get 3
      local.get 4
      i32.add
      local.set 5
      local.get 5
      global.set $__stack_pointer
      return
    )
    (func $_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h570e78b07ccc88f4E (;20;) (type 2) (param i32 i32 i32)
      (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i32 i32 i32 i64 i32 i32 i32 i32 i32 i32)
      global.get $__stack_pointer
      local.set 3
      i32.const 32
      local.set 4
      local.get 3
      local.get 4
      i32.sub
      local.set 5
      local.get 5
      global.set $__stack_pointer
      local.get 1
      i32.load8_u offset=4
      local.set 6
      i32.const 2
      local.set 7
      i32.const 255
      local.set 8
      local.get 6
      local.get 8
      i32.and
      local.set 9
      i32.const 255
      local.set 10
      local.get 7
      local.get 10
      i32.and
      local.set 11
      local.get 9
      local.get 11
      i32.eq
      local.set 12
      i32.const 0
      local.set 13
      i32.const 1
      local.set 14
      i32.const 1
      local.set 15
      local.get 12
      local.get 15
      i32.and
      local.set 16
      local.get 13
      local.get 14
      local.get 16
      select
      local.set 17
      block ;; label = @1
        local.get 17
        br_if 0 (;@1;)
        i32.const 8
        local.set 18
        local.get 1
        local.get 18
        i32.add
        local.set 19
        local.get 19
        i64.load align=4
        local.set 20
        local.get 0
        local.get 20
        i64.store align=4
        i32.const 8
        local.set 21
        local.get 0
        local.get 21
        i32.add
        local.set 22
        local.get 19
        local.get 21
        i32.add
        local.set 23
        local.get 23
        i32.load
        local.set 24
        local.get 22
        local.get 24
        i32.store
        i32.const 32
        local.set 25
        local.get 5
        local.get 25
        i32.add
        local.set 26
        local.get 26
        global.set $__stack_pointer
        return
      end
      i32.const 16
      local.set 27
      local.get 1
      local.get 27
      i32.add
      local.set 28
      local.get 28
      i32.load
      local.set 29
      i32.const 8
      local.set 30
      local.get 5
      local.get 30
      i32.add
      local.set 31
      local.get 31
      local.get 27
      i32.add
      local.set 32
      local.get 32
      local.get 29
      i32.store
      i32.const 8
      local.set 33
      local.get 1
      local.get 33
      i32.add
      local.set 34
      local.get 34
      i64.load align=4
      local.set 35
      i32.const 8
      local.set 36
      local.get 5
      local.get 36
      i32.add
      local.set 37
      local.get 37
      local.get 33
      i32.add
      local.set 38
      local.get 38
      local.get 35
      i64.store
      local.get 1
      i64.load align=4
      local.set 39
      local.get 5
      local.get 39
      i64.store offset=8
      i32.const 1048636
      local.set 40
      i32.const 43
      local.set 41
      i32.const 8
      local.set 42
      local.get 5
      local.get 42
      i32.add
      local.set 43
      local.get 43
      local.set 44
      i32.const 1048680
      local.set 45
      local.get 40
      local.get 41
      local.get 44
      local.get 45
      local.get 2
      call $_ZN4core6result13unwrap_failed17h97c1c0aa7b263f08E
      unreachable
    )
    (func $_ZN4core6result19Result$LT$T$C$E$GT$7map_err17h978a4060f67730caE (;21;) (type 2) (param i32 i32 i32)
      (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
      global.get $__stack_pointer
      local.set 3
      i32.const 48
      local.set 4
      local.get 3
      local.get 4
      i32.sub
      local.set 5
      local.get 5
      global.set $__stack_pointer
      local.get 5
      local.get 1
      i32.store offset=8
      local.get 5
      local.get 2
      i32.store offset=12
      i32.const 1
      local.set 6
      local.get 5
      local.get 6
      i32.store8 offset=23
      local.get 5
      i32.load offset=12
      local.set 7
      i32.const 1
      local.set 8
      i32.const 0
      local.set 9
      local.get 9
      local.get 8
      local.get 7
      select
      local.set 10
      block ;; label = @1
        block ;; label = @2
          local.get 10
          br_if 0 (;@2;)
          local.get 5
          i32.load offset=8
          local.set 11
          local.get 5
          i32.load offset=12
          local.set 12
          local.get 5
          local.get 11
          i32.store offset=40
          local.get 5
          local.get 12
          i32.store offset=44
          local.get 0
          local.get 11
          i32.store offset=4
          local.get 0
          local.get 12
          i32.store offset=8
          i32.const 0
          local.set 13
          local.get 0
          local.get 13
          i32.store
          br 1 (;@1;)
        end
        i32.const 0
        local.set 14
        local.get 5
        local.get 14
        i32.store8 offset=23
        local.get 5
        call $_ZN5alloc7raw_vec11finish_grow28_$u7b$$u7b$closure$u7d$$u7d$17hdbf5e8aa7e782aeaE
        local.get 5
        i32.load offset=4
        local.set 15
        local.get 5
        i32.load
        local.set 16
        local.get 0
        local.get 16
        i32.store offset=4
        local.get 0
        local.get 15
        i32.store offset=8
        i32.const 1
        local.set 17
        local.get 0
        local.get 17
        i32.store
      end
      local.get 5
      i32.load8_u offset=23
      local.set 18
      i32.const 1
      local.set 19
      local.get 18
      local.get 19
      i32.and
      local.set 20
      block ;; label = @1
        local.get 20
        i32.eqz
        br_if 0 (;@1;)
      end
      i32.const 48
      local.set 21
      local.get 5
      local.get 21
      i32.add
      local.set 22
      local.get 22
      global.set $__stack_pointer
      return
    )
    (func $_ZN4core6result19Result$LT$T$C$E$GT$7map_err17hd9126242b24cd8acE (;22;) (type 8) (param i32 i32 i32 i32)
      (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
      global.get $__stack_pointer
      local.set 4
      i32.const 48
      local.set 5
      local.get 4
      local.get 5
      i32.sub
      local.set 6
      local.get 6
      global.set $__stack_pointer
      local.get 6
      local.get 1
      i32.store offset=16
      local.get 6
      local.get 2
      i32.store offset=20
      local.get 6
      local.get 3
      i32.store offset=28
      i32.const 1
      local.set 7
      local.get 6
      local.get 7
      i32.store8 offset=27
      local.get 6
      i32.load offset=16
      local.set 8
      i32.const 1
      local.set 9
      i32.const 0
      local.set 10
      local.get 10
      local.get 9
      local.get 8
      select
      local.set 11
      block ;; label = @1
        block ;; label = @2
          local.get 11
          br_if 0 (;@2;)
          local.get 6
          i32.load offset=16
          local.set 12
          local.get 6
          i32.load offset=20
          local.set 13
          local.get 6
          local.get 12
          i32.store offset=40
          local.get 6
          local.get 13
          i32.store offset=44
          local.get 0
          local.get 12
          i32.store offset=4
          local.get 0
          local.get 13
          i32.store offset=8
          i32.const 0
          local.set 14
          local.get 0
          local.get 14
          i32.store
          br 1 (;@1;)
        end
        i32.const 0
        local.set 15
        local.get 6
        local.get 15
        i32.store8 offset=27
        i32.const 8
        local.set 16
        local.get 6
        local.get 16
        i32.add
        local.set 17
        local.get 17
        local.get 3
        call $_ZN5alloc7raw_vec11finish_grow28_$u7b$$u7b$closure$u7d$$u7d$17hda00bd9afbf0cf62E
        local.get 6
        i32.load offset=12
        local.set 18
        local.get 6
        i32.load offset=8
        local.set 19
        local.get 0
        local.get 19
        i32.store offset=4
        local.get 0
        local.get 18
        i32.store offset=8
        i32.const 1
        local.set 20
        local.get 0
        local.get 20
        i32.store
      end
      local.get 6
      i32.load8_u offset=27
      local.set 21
      i32.const 1
      local.set 22
      local.get 21
      local.get 22
      i32.and
      local.set 23
      block ;; label = @1
        local.get 23
        i32.eqz
        br_if 0 (;@1;)
      end
      i32.const 48
      local.set 24
      local.get 6
      local.get 24
      i32.add
      local.set 25
      local.get 25
      global.set $__stack_pointer
      return
    )
    (func $_ZN4core6result19Result$LT$T$C$E$GT$7map_err17hdd728a8a0a25a46cE (;23;) (type 2) (param i32 i32 i32)
      (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
      global.get $__stack_pointer
      local.set 3
      i32.const 64
      local.set 4
      local.get 3
      local.get 4
      i32.sub
      local.set 5
      local.get 5
      global.set $__stack_pointer
      local.get 5
      local.get 1
      i32.store offset=8
      local.get 5
      local.get 2
      i32.store offset=12
      i32.const 1
      local.set 6
      local.get 5
      local.get 6
      i32.store8 offset=39
      local.get 5
      i32.load offset=12
      local.set 7
      i32.const -2147483647
      local.set 8
      local.get 7
      local.set 9
      local.get 8
      local.set 10
      local.get 9
      local.get 10
      i32.eq
      local.set 11
      i32.const 0
      local.set 12
      i32.const 1
      local.set 13
      i32.const 1
      local.set 14
      local.get 11
      local.get 14
      i32.and
      local.set 15
      local.get 12
      local.get 13
      local.get 15
      select
      local.set 16
      block ;; label = @1
        block ;; label = @2
          local.get 16
          br_if 0 (;@2;)
          i32.const -2147483647
          local.set 17
          local.get 5
          local.get 17
          i32.store offset=20
          br 1 (;@1;)
        end
        local.get 5
        i32.load offset=8
        local.set 18
        local.get 5
        i32.load offset=12
        local.set 19
        local.get 5
        local.get 18
        i32.store offset=56
        local.get 5
        local.get 19
        i32.store offset=60
        i32.const 0
        local.set 20
        local.get 5
        local.get 20
        i32.store8 offset=39
        local.get 5
        local.get 18
        i32.store offset=24
        local.get 5
        local.get 19
        i32.store offset=28
        local.get 5
        i32.load offset=24
        local.set 21
        local.get 5
        i32.load offset=28
        local.set 22
        local.get 5
        local.get 21
        local.get 22
        call $_ZN5alloc7raw_vec14handle_reserve28_$u7b$$u7b$closure$u7d$$u7d$17h03e1a3a987526117E
        local.get 5
        i32.load offset=4
        local.set 23
        local.get 5
        i32.load
        local.set 24
        local.get 5
        local.get 24
        i32.store offset=16
        local.get 5
        local.get 23
        i32.store offset=20
      end
      local.get 5
      i32.load8_u offset=39
      local.set 25
      i32.const 1
      local.set 26
      local.get 25
      local.get 26
      i32.and
      local.set 27
      block ;; label = @1
        local.get 27
        i32.eqz
        br_if 0 (;@1;)
      end
      local.get 5
      i32.load offset=16
      local.set 28
      local.get 5
      i32.load offset=20
      local.set 29
      local.get 0
      local.get 29
      i32.store offset=4
      local.get 0
      local.get 28
      i32.store
      i32.const 64
      local.set 30
      local.get 5
      local.get 30
      i32.add
      local.set 31
      local.get 31
      global.set $__stack_pointer
      return
    )
    (func $_ZN4core6result19Result$LT$T$C$E$GT$7map_err17heb5adf6dad7bba06E (;24;) (type 8) (param i32 i32 i32 i32)
      (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
      global.get $__stack_pointer
      local.set 4
      i32.const 48
      local.set 5
      local.get 4
      local.get 5
      i32.sub
      local.set 6
      local.get 6
      global.set $__stack_pointer
      local.get 6
      local.get 1
      i32.store offset=16
      local.get 6
      local.get 2
      i32.store offset=20
      local.get 6
      local.get 3
      i32.store offset=28
      i32.const 1
      local.set 7
      local.get 6
      local.get 7
      i32.store8 offset=27
      local.get 6
      i32.load offset=16
      local.set 8
      i32.const 1
      local.set 9
      i32.const 0
      local.set 10
      local.get 10
      local.get 9
      local.get 8
      select
      local.set 11
      block ;; label = @1
        block ;; label = @2
          local.get 11
          br_if 0 (;@2;)
          local.get 6
          i32.load offset=16
          local.set 12
          local.get 6
          i32.load offset=20
          local.set 13
          local.get 6
          local.get 12
          i32.store offset=40
          local.get 6
          local.get 13
          i32.store offset=44
          local.get 0
          local.get 12
          i32.store offset=4
          local.get 0
          local.get 13
          i32.store offset=8
          i32.const 0
          local.set 14
          local.get 0
          local.get 14
          i32.store
          br 1 (;@1;)
        end
        i32.const 0
        local.set 15
        local.get 6
        local.get 15
        i32.store8 offset=27
        i32.const 8
        local.set 16
        local.get 6
        local.get 16
        i32.add
        local.set 17
        local.get 17
        local.get 3
        call $_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$6shrink28_$u7b$$u7b$closure$u7d$$u7d$17hbbfe55093c8493a0E
        local.get 6
        i32.load offset=12
        local.set 18
        local.get 6
        i32.load offset=8
        local.set 19
        local.get 0
        local.get 19
        i32.store offset=4
        local.get 0
        local.get 18
        i32.store offset=8
        i32.const 1
        local.set 20
        local.get 0
        local.get 20
        i32.store
      end
      local.get 6
      i32.load8_u offset=27
      local.set 21
      i32.const 1
      local.set 22
      local.get 21
      local.get 22
      i32.and
      local.set 23
      block ;; label = @1
        local.get 23
        i32.eqz
        br_if 0 (;@1;)
      end
      i32.const 48
      local.set 24
      local.get 6
      local.get 24
      i32.add
      local.set 25
      local.get 25
      global.set $__stack_pointer
      return
    )
    (func $_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17h833df256fe555119E (;25;) (type 9) (param i32) (result i32)
      (local i32 i32 i32 i32 i32 i32)
      global.get $__stack_pointer
      local.set 1
      i32.const 16
      local.set 2
      local.get 1
      local.get 2
      i32.sub
      local.set 3
      local.get 3
      global.set $__stack_pointer
      local.get 3
      local.get 0
      i32.store offset=12
      local.get 0
      call $_ZN119_$LT$core..ptr..non_null..NonNull$LT$T$GT$$u20$as$u20$core..convert..From$LT$core..ptr..unique..Unique$LT$T$GT$$GT$$GT$4from17hb3247c31787fae19E
      local.set 4
      i32.const 16
      local.set 5
      local.get 3
      local.get 5
      i32.add
      local.set 6
      local.get 6
      global.set $__stack_pointer
      local.get 4
      return
    )
    (func $_ZN4core3cmp6max_by17h55543c97d078de3cE (;26;) (type 5) (param i32 i32) (result i32)
      (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
      global.get $__stack_pointer
      local.set 2
      i32.const 48
      local.set 3
      local.get 2
      local.get 3
      i32.sub
      local.set 4
      local.get 4
      global.set $__stack_pointer
      local.get 4
      local.get 0
      i32.store offset=8
      local.get 4
      local.get 1
      i32.store offset=12
      i32.const 1
      local.set 5
      local.get 4
      local.get 5
      i32.store8 offset=39
      local.get 4
      local.get 5
      i32.store8 offset=38
      i32.const 8
      local.set 6
      local.get 4
      local.get 6
      i32.add
      local.set 7
      local.get 4
      local.get 7
      i32.store offset=24
      i32.const 12
      local.set 8
      local.get 4
      local.get 8
      i32.add
      local.set 9
      local.get 4
      local.get 9
      i32.store offset=28
      local.get 4
      i32.load offset=24
      local.set 10
      local.get 4
      i32.load offset=28
      local.set 11
      local.get 10
      local.get 11
      call $_ZN4core3ops8function6FnOnce9call_once17h68fee6bc8b30a4c6E
      local.set 12
      local.get 4
      local.get 12
      i32.store8 offset=23
      local.get 4
      i32.load8_u offset=23
      local.set 13
      local.get 13
      local.get 5
      i32.add
      local.set 14
      i32.const 255
      local.set 15
      local.get 14
      local.get 15
      i32.and
      local.set 16
      block ;; label = @1
        block ;; label = @2
          block ;; label = @3
            local.get 16
            br_table 0 (;@3;) 0 (;@3;) 1 (;@2;) 0 (;@3;)
          end
          i32.const 0
          local.set 17
          local.get 4
          local.get 17
          i32.store8 offset=38
          local.get 4
          i32.load offset=12
          local.set 18
          local.get 4
          local.get 18
          i32.store offset=16
          br 1 (;@1;)
        end
        i32.const 0
        local.set 19
        local.get 4
        local.get 19
        i32.store8 offset=39
        local.get 4
        i32.load offset=8
        local.set 20
        local.get 4
        local.get 20
        i32.store offset=16
      end
      local.get 4
      i32.load8_u offset=38
      local.set 21
      i32.const 1
      local.set 22
      local.get 21
      local.get 22
      i32.and
      local.set 23
      block ;; label = @1
        local.get 23
        i32.eqz
        br_if 0 (;@1;)
      end
      local.get 4
      i32.load8_u offset=39
      local.set 24
      i32.const 1
      local.set 25
      local.get 24
      local.get 25
      i32.and
      local.set 26
      block ;; label = @1
        local.get 26
        i32.eqz
        br_if 0 (;@1;)
      end
      local.get 4
      i32.load offset=16
      local.set 27
      i32.const 48
      local.set 28
      local.get 4
      local.get 28
      i32.add
      local.set 29
      local.get 29
      global.set $__stack_pointer
      local.get 27
      return
      unreachable
    )
    (func $_ZN5alloc5boxed16Box$LT$T$C$A$GT$11into_unique17heb1e4ae7ec5875acE (;27;) (type 2) (param i32 i32 i32)
      (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
      global.get $__stack_pointer
      local.set 3
      i32.const 96
      local.set 4
      local.get 3
      local.get 4
      i32.sub
      local.set 5
      local.get 5
      global.set $__stack_pointer
      local.get 5
      local.get 1
      i32.store offset=8
      local.get 5
      local.get 2
      i32.store offset=12
      i32.const 8
      local.set 6
      local.get 5
      local.get 6
      i32.add
      local.set 7
      local.get 5
      local.get 7
      i32.store offset=72
      i32.const 32
      local.set 8
      local.get 5
      local.get 8
      i32.add
      local.set 9
      local.get 5
      local.get 9
      i32.store offset=76
      local.get 5
      i32.load offset=8
      local.set 10
      local.get 5
      i32.load offset=12
      local.set 11
      local.get 5
      local.get 10
      local.get 11
      call $_ZN5alloc5boxed16Box$LT$T$C$A$GT$4leak17hd13825894db52a13E
      local.get 5
      i32.load offset=4
      local.set 12
      local.get 5
      i32.load
      local.set 13
      local.get 5
      local.get 13
      i32.store offset=80
      local.get 5
      local.get 12
      i32.store offset=84
      local.get 5
      local.get 13
      i32.store offset=88
      local.get 5
      local.get 12
      i32.store offset=92
      local.get 5
      local.get 13
      i32.store offset=40
      local.get 5
      local.get 12
      i32.store offset=44
      local.get 5
      i32.load offset=40
      local.set 14
      local.get 5
      i32.load offset=44
      local.set 15
      local.get 5
      local.get 14
      i32.store offset=24
      local.get 5
      local.get 15
      i32.store offset=28
      local.get 5
      i32.load offset=24
      local.set 16
      local.get 5
      i32.load offset=28
      local.set 17
      local.get 5
      local.get 16
      i32.store offset=16
      local.get 5
      local.get 17
      i32.store offset=20
      local.get 5
      i32.load offset=16
      local.set 18
      local.get 5
      i32.load offset=20
      local.set 19
      local.get 0
      local.get 19
      i32.store offset=4
      local.get 0
      local.get 18
      i32.store
      i32.const 96
      local.set 20
      local.get 5
      local.get 20
      i32.add
      local.set 21
      local.get 21
      global.set $__stack_pointer
      return
    )
    (func $_ZN5alloc5boxed16Box$LT$T$C$A$GT$4leak17hd13825894db52a13E (;28;) (type 2) (param i32 i32 i32)
      (local i32 i32 i32 i32 i32)
      global.get $__stack_pointer
      local.set 3
      i32.const 48
      local.set 4
      local.get 3
      local.get 4
      i32.sub
      local.set 5
      local.get 5
      local.get 1
      i32.store offset=8
      local.get 5
      local.get 2
      i32.store offset=12
      local.get 5
      local.get 1
      i32.store offset=16
      local.get 5
      local.get 2
      i32.store offset=20
      local.get 5
      local.get 1
      i32.store
      local.get 5
      local.get 2
      i32.store offset=4
      local.get 5
      local.get 5
      i32.store offset=28
      local.get 5
      i32.load
      local.set 6
      local.get 5
      i32.load offset=4
      local.set 7
      local.get 5
      local.get 6
      i32.store offset=32
      local.get 5
      local.get 7
      i32.store offset=36
      local.get 5
      local.get 6
      i32.store offset=40
      local.get 5
      local.get 7
      i32.store offset=44
      local.get 0
      local.get 7
      i32.store offset=4
      local.get 0
      local.get 6
      i32.store
      return
    )
    (func $_ZN5alloc5boxed16Box$LT$T$C$A$GT$23into_raw_with_allocator17h23fb665c37202658E (;29;) (type 2) (param i32 i32 i32)
      (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
      global.get $__stack_pointer
      local.set 3
      i32.const 64
      local.set 4
      local.get 3
      local.get 4
      i32.sub
      local.set 5
      local.get 5
      global.set $__stack_pointer
      local.get 5
      local.get 1
      i32.store offset=24
      local.get 5
      local.get 2
      i32.store offset=28
      i32.const 8
      local.set 6
      local.get 5
      local.get 6
      i32.add
      local.set 7
      local.get 7
      local.get 1
      local.get 2
      call $_ZN5alloc5boxed16Box$LT$T$C$A$GT$11into_unique17heb1e4ae7ec5875acE
      local.get 5
      i32.load offset=12
      local.set 8
      local.get 5
      i32.load offset=8
      local.set 9
      local.get 5
      local.get 9
      i32.store offset=40
      local.get 5
      local.get 8
      i32.store offset=44
      local.get 5
      local.get 9
      i32.store offset=48
      local.get 5
      local.get 8
      i32.store offset=52
      local.get 5
      local.get 9
      i32.store offset=56
      local.get 5
      local.get 8
      i32.store offset=60
      local.get 5
      local.get 9
      i32.store offset=16
      local.get 5
      local.get 8
      i32.store offset=20
      local.get 5
      i32.load offset=16
      local.set 10
      local.get 5
      i32.load offset=20
      local.set 11
      local.get 0
      local.get 11
      i32.store offset=4
      local.get 0
      local.get 10
      i32.store
      i32.const 64
      local.set 12
      local.get 5
      local.get 12
      i32.add
      local.set 13
      local.get 13
      global.set $__stack_pointer
      return
    )
    (func $_ZN5alloc5boxed70Box$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$C$A$GT$11assume_init17he546865cf0bf7e44E (;30;) (type 2) (param i32 i32 i32)
      (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
      global.get $__stack_pointer
      local.set 3
      i32.const 96
      local.set 4
      local.get 3
      local.get 4
      i32.sub
      local.set 5
      local.get 5
      global.set $__stack_pointer
      local.get 5
      local.get 1
      i32.store offset=40
      local.get 5
      local.get 2
      i32.store offset=44
      i32.const 8
      local.set 6
      local.get 5
      local.get 6
      i32.add
      local.set 7
      local.get 7
      local.get 1
      local.get 2
      call $_ZN5alloc5boxed16Box$LT$T$C$A$GT$23into_raw_with_allocator17h23fb665c37202658E
      local.get 5
      i32.load offset=12
      local.set 8
      local.get 5
      i32.load offset=8
      local.set 9
      local.get 5
      local.get 9
      i32.store offset=64
      local.get 5
      local.get 8
      i32.store offset=68
      local.get 5
      local.get 9
      i32.store offset=72
      local.get 5
      local.get 8
      i32.store offset=76
      local.get 5
      local.get 9
      i32.store offset=80
      local.get 5
      local.get 8
      i32.store offset=84
      local.get 5
      local.get 9
      i32.store offset=88
      local.get 5
      local.get 8
      i32.store offset=92
      local.get 5
      local.get 9
      i32.store offset=32
      local.get 5
      local.get 8
      i32.store offset=36
      local.get 5
      i32.load offset=32
      local.set 10
      local.get 5
      i32.load offset=36
      local.set 11
      local.get 5
      local.get 10
      i32.store offset=24
      local.get 5
      local.get 11
      i32.store offset=28
      local.get 5
      i32.load offset=24
      local.set 12
      local.get 5
      i32.load offset=28
      local.set 13
      local.get 5
      local.get 12
      i32.store offset=16
      local.get 5
      local.get 13
      i32.store offset=20
      local.get 5
      i32.load offset=16
      local.set 14
      local.get 5
      i32.load offset=20
      local.set 15
      local.get 0
      local.get 15
      i32.store offset=4
      local.get 0
      local.get 14
      i32.store
      i32.const 96
      local.set 16
      local.get 5
      local.get 16
      i32.add
      local.set 17
      local.get 17
      global.set $__stack_pointer
      return
    )
    (func $_ZN4core5alloc6layout6Layout5array5inner17h013575e3269d527eE (;31;) (type 8) (param i32 i32 i32 i32)
      (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
      global.get $__stack_pointer
      local.set 4
      i32.const 80
      local.set 5
      local.get 4
      local.get 5
      i32.sub
      local.set 6
      local.get 6
      global.set $__stack_pointer
      local.get 6
      local.get 1
      i32.store offset=36
      local.get 6
      local.get 2
      i32.store offset=40
      local.get 6
      local.get 3
      i32.store offset=44
      block ;; label = @1
        block ;; label = @2
          local.get 1
          br_if 0 (;@2;)
          i32.const 0
          local.set 7
          local.get 6
          local.get 7
          i32.store8 offset=15
          br 1 (;@1;)
        end
        local.get 6
        local.get 2
        i32.store offset=48
        local.get 6
        local.get 2
        i32.store offset=52
        local.get 6
        local.get 2
        i32.store offset=28
        local.get 6
        i32.load offset=28
        local.set 8
        i32.const 1
        local.set 9
        local.get 8
        local.get 9
        i32.sub
        local.set 10
        i32.const 2147483647
        local.set 11
        local.get 11
        local.get 10
        i32.sub
        local.set 12
        i32.const 0
        local.set 13
        local.get 1
        local.set 14
        local.get 13
        local.set 15
        local.get 14
        local.get 15
        i32.eq
        local.set 16
        i32.const 1
        local.set 17
        local.get 16
        local.get 17
        i32.and
        local.set 18
        block ;; label = @2
          local.get 18
          br_if 0 (;@2;)
          local.get 12
          local.get 1
          i32.div_u
          local.set 19
          local.get 3
          local.set 20
          local.get 19
          local.set 21
          local.get 20
          local.get 21
          i32.gt_u
          local.set 22
          i32.const 1
          local.set 23
          local.get 22
          local.get 23
          i32.and
          local.set 24
          local.get 6
          local.get 24
          i32.store8 offset=15
          br 1 (;@1;)
        end
        i32.const 1048800
        local.set 25
        i32.const 25
        local.set 26
        i32.const 1048776
        local.set 27
        local.get 25
        local.get 26
        local.get 27
        call $_ZN4core9panicking5panic17h72f0442034a99972E
        unreachable
      end
      local.get 6
      i32.load8_u offset=15
      local.set 28
      i32.const 1
      local.set 29
      local.get 28
      local.get 29
      i32.and
      local.set 30
      block ;; label = @1
        block ;; label = @2
          local.get 30
          br_if 0 (;@2;)
          local.get 1
          local.get 3
          i32.mul
          local.set 31
          local.get 6
          local.get 31
          i32.store offset=56
          local.get 6
          local.get 31
          i32.store offset=60
          local.get 6
          local.get 2
          i32.store offset=64
          local.get 6
          local.get 2
          i32.store offset=32
          local.get 6
          i32.load offset=32
          local.set 32
          local.get 6
          local.get 32
          i32.store offset=68
          local.get 6
          local.get 32
          i32.store offset=72
          local.get 6
          local.get 32
          i32.store offset=76
          local.get 6
          i32.load offset=76
          local.set 33
          local.get 6
          local.get 31
          i32.store offset=16
          local.get 6
          local.get 33
          i32.store offset=20
          local.get 6
          i32.load offset=16
          local.set 34
          local.get 6
          i32.load offset=20
          local.set 35
          local.get 6
          local.get 34
          i32.store
          local.get 6
          local.get 35
          i32.store offset=4
          br 1 (;@1;)
        end
        i32.const 0
        local.set 36
        local.get 6
        local.get 36
        i32.store offset=4
      end
      local.get 6
      i32.load
      local.set 37
      local.get 6
      i32.load offset=4
      local.set 38
      local.get 0
      local.get 38
      i32.store offset=4
      local.get 0
      local.get 37
      i32.store
      i32.const 80
      local.set 39
      local.get 6
      local.get 39
      i32.add
      local.set 40
      local.get 40
      global.set $__stack_pointer
      return
    )
    (func $_ZN4core4hint21unreachable_unchecked17ha6f8d4f305e3eef6E (;32;) (type 7)
      unreachable
    )
    (func $_ZN5alloc7raw_vec14handle_reserve17h2aa8f05a831506dcE (;33;) (type 3) (param i32 i32)
      (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
      global.get $__stack_pointer
      local.set 2
      i32.const 32
      local.set 3
      local.get 2
      local.get 3
      i32.sub
      local.set 4
      local.get 4
      global.set $__stack_pointer
      local.get 4
      local.get 0
      i32.store offset=16
      local.get 4
      local.get 1
      i32.store offset=20
      local.get 4
      local.get 0
      local.get 1
      call $_ZN4core6result19Result$LT$T$C$E$GT$7map_err17hdd728a8a0a25a46cE
      local.get 4
      i32.load
      local.set 5
      local.get 4
      i32.load offset=4
      local.set 6
      local.get 4
      local.get 6
      i32.store offset=12
      local.get 4
      local.get 5
      i32.store offset=8
      local.get 4
      i32.load offset=12
      local.set 7
      i32.const -2147483647
      local.set 8
      local.get 7
      local.set 9
      local.get 8
      local.set 10
      local.get 9
      local.get 10
      i32.eq
      local.set 11
      i32.const 0
      local.set 12
      i32.const 1
      local.set 13
      i32.const 1
      local.set 14
      local.get 11
      local.get 14
      i32.and
      local.set 15
      local.get 12
      local.get 13
      local.get 15
      select
      local.set 16
      block ;; label = @1
        local.get 16
        br_if 0 (;@1;)
        i32.const 32
        local.set 17
        local.get 4
        local.get 17
        i32.add
        local.set 18
        local.get 18
        global.set $__stack_pointer
        return
      end
      local.get 4
      i32.load offset=12
      local.set 19
      i32.const 0
      local.set 20
      i32.const 1
      local.set 21
      local.get 21
      local.get 20
      local.get 19
      select
      local.set 22
      block ;; label = @1
        local.get 22
        br_if 0 (;@1;)
        call $_ZN5alloc7raw_vec17capacity_overflow17ha0bfce3c627a68c1E
        unreachable
      end
      local.get 4
      i32.load offset=8
      local.set 23
      local.get 4
      i32.load offset=12
      local.set 24
      local.get 4
      local.get 23
      i32.store offset=24
      local.get 4
      local.get 24
      i32.store offset=28
      local.get 23
      local.get 24
      call $_ZN5alloc5alloc18handle_alloc_error17h3a7121d6b22d4137E
      unreachable
    )
    (func $_ZN119_$LT$core..ptr..non_null..NonNull$LT$T$GT$$u20$as$u20$core..convert..From$LT$core..ptr..unique..Unique$LT$T$GT$$GT$$GT$4from17hb3247c31787fae19E (;34;) (type 9) (param i32) (result i32)
      (local i32 i32 i32 i32)
      global.get $__stack_pointer
      local.set 1
      i32.const 32
      local.set 2
      local.get 1
      local.get 2
      i32.sub
      local.set 3
      local.get 3
      local.get 0
      i32.store offset=16
      local.get 3
      local.get 0
      i32.store offset=20
      local.get 3
      local.get 0
      i32.store offset=24
      local.get 3
      local.get 0
      i32.store offset=28
      local.get 3
      local.get 0
      i32.store offset=12
      local.get 3
      i32.load offset=12
      local.set 4
      local.get 4
      return
    )
    (func $_ZN4core3ptr8non_null16NonNull$LT$T$GT$3new17he182f8572bbba778E (;35;) (type 9) (param i32) (result i32)
      (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
      global.get $__stack_pointer
      local.set 1
      i32.const 48
      local.set 2
      local.get 1
      local.get 2
      i32.sub
      local.set 3
      local.get 3
      local.get 0
      i32.store offset=20
      local.get 3
      local.get 0
      i32.store offset=24
      local.get 3
      local.get 0
      i32.store offset=16
      local.get 3
      i32.load offset=16
      local.set 4
      local.get 3
      local.get 4
      i32.store offset=28
      local.get 3
      local.get 4
      i32.store offset=32
      local.get 3
      local.get 4
      i32.store offset=36
      local.get 3
      local.get 4
      i32.store offset=40
      local.get 3
      i32.load offset=40
      local.set 5
      i32.const 0
      local.set 6
      local.get 5
      local.set 7
      local.get 6
      local.set 8
      local.get 7
      local.get 8
      i32.eq
      local.set 9
      i32.const -1
      local.set 10
      local.get 9
      local.get 10
      i32.xor
      local.set 11
      i32.const 1
      local.set 12
      local.get 11
      local.get 12
      i32.and
      local.set 13
      block ;; label = @1
        block ;; label = @2
          local.get 13
          br_if 0 (;@2;)
          i32.const 0
          local.set 14
          local.get 3
          local.get 14
          i32.store offset=8
          br 1 (;@1;)
        end
        local.get 3
        local.get 0
        i32.store offset=44
        local.get 3
        local.get 0
        i32.store offset=12
        local.get 3
        i32.load offset=12
        local.set 15
        local.get 3
        local.get 15
        i32.store offset=8
      end
      local.get 3
      i32.load offset=8
      local.set 16
      local.get 16
      return
    )
    (func $_ZN4core3ptr8non_null26NonNull$LT$$u5b$T$u5d$$GT$20slice_from_raw_parts17h276654dd5b1e06c0E (;36;) (type 2) (param i32 i32 i32)
      (local i32 i32 i32 i32 i32 i32 i32 i32 i32)
      global.get $__stack_pointer
      local.set 3
      i32.const 64
      local.set 4
      local.get 3
      local.get 4
      i32.sub
      local.set 5
      local.get 5
      local.get 1
      i32.store offset=24
      local.get 5
      local.get 2
      i32.store offset=28
      local.get 5
      local.get 1
      i32.store offset=32
      local.get 5
      local.get 1
      i32.store offset=36
      local.get 5
      local.get 2
      i32.store offset=40
      local.get 5
      local.get 1
      i32.store offset=44
      local.get 5
      local.get 1
      i32.store offset=48
      local.get 5
      local.get 2
      i32.store offset=52
      local.get 5
      local.get 1
      i32.store offset=16
      local.get 5
      local.get 2
      i32.store offset=20
      local.get 5
      i32.load offset=16
      local.set 6
      local.get 5
      i32.load offset=20
      local.set 7
      local.get 5
      local.get 6
      i32.store offset=8
      local.get 5
      local.get 7
      i32.store offset=12
      local.get 5
      i32.load offset=8
      local.set 8
      local.get 5
      i32.load offset=12
      local.set 9
      local.get 5
      local.get 8
      i32.store offset=56
      local.get 5
      local.get 9
      i32.store offset=60
      local.get 5
      local.get 8
      i32.store
      local.get 5
      local.get 9
      i32.store offset=4
      local.get 5
      i32.load
      local.set 10
      local.get 5
      i32.load offset=4
      local.set 11
      local.get 0
      local.get 11
      i32.store offset=4
      local.get 0
      local.get 10
      i32.store
      return
    )
    (func $_ZN5alloc7raw_vec11finish_grow17hcb62a66f602166b5E (;37;) (type 10) (param i32 i32 i32 i32 i32)
      (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
      global.get $__stack_pointer
      local.set 5
      i32.const 304
      local.set 6
      local.get 5
      local.get 6
      i32.sub
      local.set 7
      local.get 7
      global.set $__stack_pointer
      local.get 7
      local.get 1
      i32.store offset=160
      local.get 7
      local.get 2
      i32.store offset=164
      local.get 7
      local.get 4
      i32.store offset=172
      i32.const 48
      local.set 8
      local.get 7
      local.get 8
      i32.add
      local.set 9
      local.get 9
      local.set 10
      local.get 10
      local.get 1
      local.get 2
      call $_ZN4core6result19Result$LT$T$C$E$GT$7map_err17h978a4060f67730caE
      local.get 7
      i32.load offset=48
      local.set 11
      block ;; label = @1
        block ;; label = @2
          local.get 11
          br_if 0 (;@2;)
          local.get 7
          i32.load offset=52
          local.set 12
          local.get 7
          i32.load offset=56
          local.set 13
          local.get 7
          local.get 12
          i32.store offset=200
          local.get 7
          local.get 13
          i32.store offset=204
          local.get 7
          local.get 12
          i32.store offset=36
          local.get 7
          local.get 13
          i32.store offset=40
          i32.const 0
          local.set 14
          local.get 7
          local.get 14
          i32.store offset=32
          br 1 (;@1;)
        end
        local.get 7
        i32.load offset=52
        local.set 15
        local.get 7
        i32.load offset=56
        local.set 16
        local.get 7
        local.get 15
        i32.store offset=192
        local.get 7
        local.get 16
        i32.store offset=196
        local.get 7
        local.get 15
        i32.store offset=120
        local.get 7
        local.get 16
        i32.store offset=124
        local.get 7
        i32.load offset=120
        local.set 17
        local.get 7
        i32.load offset=124
        local.set 18
        local.get 7
        local.get 17
        i32.store offset=36
        local.get 7
        local.get 18
        i32.store offset=40
        i32.const 1
        local.set 19
        local.get 7
        local.get 19
        i32.store offset=32
      end
      local.get 7
      i32.load offset=32
      local.set 20
      block ;; label = @1
        block ;; label = @2
          block ;; label = @3
            block ;; label = @4
              block ;; label = @5
                block ;; label = @6
                  local.get 20
                  br_if 0 (;@6;)
                  local.get 7
                  i32.load offset=36
                  local.set 21
                  local.get 7
                  i32.load offset=40
                  local.set 22
                  local.get 7
                  local.get 21
                  i32.store offset=232
                  local.get 7
                  local.get 22
                  i32.store offset=236
                  local.get 7
                  local.get 21
                  i32.store offset=24
                  local.get 7
                  local.get 22
                  i32.store offset=28
                  i32.const 24
                  local.set 23
                  local.get 7
                  local.get 23
                  i32.add
                  local.set 24
                  local.get 24
                  local.set 25
                  local.get 7
                  local.get 25
                  i32.store offset=240
                  local.get 7
                  i32.load offset=24
                  local.set 26
                  local.get 7
                  local.get 26
                  i32.store offset=244
                  i32.const 2147483647
                  local.set 27
                  local.get 26
                  local.set 28
                  local.get 27
                  local.set 29
                  local.get 28
                  local.get 29
                  i32.gt_u
                  local.set 30
                  i32.const 1
                  local.set 31
                  local.get 30
                  local.get 31
                  i32.and
                  local.set 32
                  local.get 32
                  br_if 2 (;@4;)
                  br 1 (;@5;)
                end
                local.get 7
                i32.load offset=36
                local.set 33
                local.get 7
                i32.load offset=40
                local.set 34
                local.get 7
                local.get 33
                i32.store offset=208
                local.get 7
                local.get 34
                i32.store offset=212
                local.get 7
                local.get 33
                i32.store offset=64
                local.get 7
                local.get 34
                i32.store offset=68
                local.get 7
                i32.load offset=64
                local.set 35
                local.get 7
                i32.load offset=68
                local.set 36
                local.get 7
                local.get 35
                i32.store offset=216
                local.get 7
                local.get 36
                i32.store offset=220
                local.get 7
                local.get 35
                i32.store offset=224
                local.get 7
                local.get 36
                i32.store offset=228
                local.get 7
                local.get 35
                i32.store offset=128
                local.get 7
                local.get 36
                i32.store offset=132
                local.get 7
                i32.load offset=128
                local.set 37
                local.get 7
                i32.load offset=132
                local.set 38
                local.get 0
                local.get 37
                i32.store offset=4
                local.get 0
                local.get 38
                i32.store offset=8
                i32.const 1
                local.set 39
                local.get 0
                local.get 39
                i32.store
                br 3 (;@2;)
              end
              i32.const -2147483647
              local.set 40
              local.get 7
              local.get 40
              i32.store offset=84
              br 1 (;@3;)
            end
            i32.const 0
            local.set 41
            local.get 7
            local.get 41
            i32.store offset=140
            local.get 7
            i32.load offset=136
            local.set 42
            local.get 7
            i32.load offset=140
            local.set 43
            i32.const 16
            local.set 44
            local.get 7
            local.get 44
            i32.add
            local.set 45
            local.get 45
            local.get 42
            local.get 43
            call $_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17h2d991e84ff035cadE
            local.get 7
            i32.load offset=20
            local.set 46
            local.get 7
            i32.load offset=16
            local.set 47
            local.get 7
            local.get 47
            i32.store offset=80
            local.get 7
            local.get 46
            i32.store offset=84
          end
          local.get 7
          i32.load offset=84
          local.set 48
          i32.const -2147483647
          local.set 49
          local.get 48
          local.set 50
          local.get 49
          local.set 51
          local.get 50
          local.get 51
          i32.eq
          local.set 52
          i32.const 0
          local.set 53
          i32.const 1
          local.set 54
          i32.const 1
          local.set 55
          local.get 52
          local.get 55
          i32.and
          local.set 56
          local.get 53
          local.get 54
          local.get 56
          select
          local.set 57
          block ;; label = @3
            block ;; label = @4
              local.get 57
              br_if 0 (;@4;)
              i32.const -2147483647
              local.set 58
              local.get 7
              local.get 58
              i32.store offset=76
              br 1 (;@3;)
            end
            local.get 7
            i32.load offset=80
            local.set 59
            local.get 7
            i32.load offset=84
            local.set 60
            local.get 7
            local.get 59
            i32.store offset=248
            local.get 7
            local.get 60
            i32.store offset=252
            local.get 7
            local.get 59
            i32.store offset=144
            local.get 7
            local.get 60
            i32.store offset=148
            local.get 7
            i32.load offset=144
            local.set 61
            local.get 7
            i32.load offset=148
            local.set 62
            local.get 7
            local.get 61
            i32.store offset=72
            local.get 7
            local.get 62
            i32.store offset=76
          end
          local.get 7
          i32.load offset=76
          local.set 63
          i32.const -2147483647
          local.set 64
          local.get 63
          local.set 65
          local.get 64
          local.set 66
          local.get 65
          local.get 66
          i32.eq
          local.set 67
          i32.const 0
          local.set 68
          i32.const 1
          local.set 69
          i32.const 1
          local.set 70
          local.get 67
          local.get 70
          i32.and
          local.set 71
          local.get 68
          local.get 69
          local.get 71
          select
          local.set 72
          block ;; label = @3
            block ;; label = @4
              block ;; label = @5
                block ;; label = @6
                  local.get 72
                  br_if 0 (;@6;)
                  local.get 3
                  i32.load offset=8
                  local.set 73
                  i32.const 0
                  local.set 74
                  i32.const 1
                  local.set 75
                  local.get 75
                  local.get 74
                  local.get 73
                  select
                  local.set 76
                  i32.const 1
                  local.set 77
                  local.get 76
                  local.set 78
                  local.get 77
                  local.set 79
                  local.get 78
                  local.get 79
                  i32.eq
                  local.set 80
                  i32.const 1
                  local.set 81
                  local.get 80
                  local.get 81
                  i32.and
                  local.set 82
                  local.get 82
                  br_if 1 (;@5;)
                  br 2 (;@4;)
                end
                local.get 7
                i32.load offset=72
                local.set 83
                local.get 7
                i32.load offset=76
                local.set 84
                local.get 7
                local.get 83
                i32.store offset=256
                local.get 7
                local.get 84
                i32.store offset=260
                local.get 7
                local.get 83
                i32.store offset=88
                local.get 7
                local.get 84
                i32.store offset=92
                local.get 7
                i32.load offset=88
                local.set 85
                local.get 7
                i32.load offset=92
                local.set 86
                local.get 7
                local.get 85
                i32.store offset=264
                local.get 7
                local.get 86
                i32.store offset=268
                local.get 7
                local.get 85
                i32.store offset=272
                local.get 7
                local.get 86
                i32.store offset=276
                local.get 0
                local.get 85
                i32.store offset=4
                local.get 0
                local.get 86
                i32.store offset=8
                i32.const 1
                local.set 87
                local.get 0
                local.get 87
                i32.store
                br 3 (;@2;)
              end
              local.get 3
              i32.load
              local.set 88
              local.get 7
              local.get 88
              i32.store offset=284
              local.get 3
              i32.load offset=4
              local.set 89
              i32.const 8
              local.set 90
              local.get 3
              local.get 90
              i32.add
              local.set 91
              local.get 91
              i32.load
              local.set 92
              local.get 7
              local.get 89
              i32.store offset=104
              local.get 7
              local.get 92
              i32.store offset=108
              i32.const 104
              local.set 93
              local.get 7
              local.get 93
              i32.add
              local.set 94
              local.get 7
              local.get 94
              i32.store offset=288
              local.get 7
              i32.load offset=108
              local.set 95
              local.get 7
              local.get 95
              i32.store offset=292
              local.get 7
              local.get 95
              i32.store offset=152
              i32.const 24
              local.set 96
              local.get 7
              local.get 96
              i32.add
              local.set 97
              local.get 7
              local.get 97
              i32.store offset=296
              local.get 7
              i32.load offset=28
              local.set 98
              local.get 7
              local.get 98
              i32.store offset=300
              local.get 7
              local.get 98
              i32.store offset=156
              local.get 7
              i32.load offset=104
              local.set 99
              local.get 7
              i32.load offset=108
              local.set 100
              local.get 7
              i32.load offset=24
              local.set 101
              local.get 7
              i32.load offset=28
              local.set 102
              local.get 7
              local.get 4
              local.get 88
              local.get 99
              local.get 100
              local.get 101
              local.get 102
              call $_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$4grow17h207fd6293b58cb93E
              local.get 7
              i32.load
              local.set 103
              local.get 7
              i32.load offset=4
              local.set 104
              local.get 7
              local.get 104
              i32.store offset=100
              local.get 7
              local.get 103
              i32.store offset=96
              br 1 (;@3;)
            end
            local.get 7
            i32.load offset=24
            local.set 105
            local.get 7
            i32.load offset=28
            local.set 106
            i32.const 8
            local.set 107
            local.get 7
            local.get 107
            i32.add
            local.set 108
            local.get 108
            local.get 4
            local.get 105
            local.get 106
            call $_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17hde425df125e61a59E
            local.get 7
            i32.load offset=8
            local.set 109
            local.get 7
            i32.load offset=12
            local.set 110
            local.get 7
            local.get 110
            i32.store offset=100
            local.get 7
            local.get 109
            i32.store offset=96
          end
          local.get 7
          i32.load offset=96
          local.set 111
          local.get 7
          i32.load offset=100
          local.set 112
          i32.const 24
          local.set 113
          local.get 7
          local.get 113
          i32.add
          local.set 114
          local.get 114
          local.set 115
          local.get 7
          local.get 115
          i32.store offset=116
          local.get 7
          i32.load offset=116
          local.set 116
          local.get 0
          local.get 111
          local.get 112
          local.get 116
          call $_ZN4core6result19Result$LT$T$C$E$GT$7map_err17hd9126242b24cd8acE
          br 1 (;@1;)
        end
      end
      i32.const 304
      local.set 117
      local.get 7
      local.get 117
      i32.add
      local.set 118
      local.get 118
      global.set $__stack_pointer
      return
    )
    (func $_ZN5alloc7raw_vec11finish_grow28_$u7b$$u7b$closure$u7d$$u7d$17hda00bd9afbf0cf62E (;38;) (type 3) (param i32 i32)
      (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
      global.get $__stack_pointer
      local.set 2
      i32.const 32
      local.set 3
      local.get 2
      local.get 3
      i32.sub
      local.set 4
      local.get 4
      global.set $__stack_pointer
      local.get 4
      local.get 1
      i32.store offset=12
      local.get 4
      i32.load offset=12
      local.set 5
      local.get 5
      i32.load
      local.set 6
      local.get 5
      i32.load offset=4
      local.set 7
      local.get 4
      local.get 6
      i32.store offset=16
      local.get 4
      local.get 7
      i32.store offset=20
      local.get 4
      i32.load offset=16
      local.set 8
      local.get 4
      i32.load offset=20
      local.set 9
      local.get 4
      local.get 8
      local.get 9
      call $_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17h2d991e84ff035cadE
      local.get 4
      i32.load
      local.set 10
      local.get 4
      i32.load offset=4
      local.set 11
      local.get 0
      local.get 11
      i32.store offset=4
      local.get 0
      local.get 10
      i32.store
      i32.const 32
      local.set 12
      local.get 4
      local.get 12
      i32.add
      local.set 13
      local.get 13
      global.set $__stack_pointer
      return
    )
    (func $_ZN5alloc7raw_vec11finish_grow28_$u7b$$u7b$closure$u7d$$u7d$17hdbf5e8aa7e782aeaE (;39;) (type $.rodata) (param i32)
      (local i32 i32 i32 i32 i32 i32)
      global.get $__stack_pointer
      local.set 1
      i32.const 32
      local.set 2
      local.get 1
      local.get 2
      i32.sub
      local.set 3
      i32.const 0
      local.set 4
      local.get 3
      local.get 4
      i32.store offset=12
      local.get 3
      i32.load offset=8
      local.set 5
      local.get 3
      i32.load offset=12
      local.set 6
      local.get 0
      local.get 6
      i32.store offset=4
      local.get 0
      local.get 5
      i32.store
      return
    )
    (func $_ZN5alloc7raw_vec14handle_reserve28_$u7b$$u7b$closure$u7d$$u7d$17h03e1a3a987526117E (;40;) (type 2) (param i32 i32 i32)
      (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
      global.get $__stack_pointer
      local.set 3
      i32.const 48
      local.set 4
      local.get 3
      local.get 4
      i32.sub
      local.set 5
      local.get 5
      local.get 1
      i32.store offset=8
      local.get 5
      local.get 2
      i32.store offset=12
      i32.const 8
      local.set 6
      local.get 5
      local.get 6
      i32.add
      local.set 7
      local.get 7
      local.set 8
      local.get 5
      local.get 8
      i32.store offset=32
      i32.const 8
      local.set 9
      local.get 5
      local.get 9
      i32.add
      local.set 10
      local.get 10
      local.set 11
      local.get 5
      local.get 11
      i32.store offset=36
      local.get 5
      i32.load offset=12
      local.set 12
      i32.const 0
      local.set 13
      i32.const 1
      local.set 14
      local.get 14
      local.get 13
      local.get 12
      select
      local.set 15
      block ;; label = @1
        block ;; label = @2
          local.get 15
          br_if 0 (;@2;)
          i32.const 0
          local.set 16
          local.get 5
          local.get 16
          i32.store offset=20
          br 1 (;@1;)
        end
        i32.const 8
        local.set 17
        local.get 5
        local.get 17
        i32.add
        local.set 18
        local.get 18
        local.set 19
        local.get 5
        local.get 19
        i32.store offset=40
        i32.const 8
        local.set 20
        local.get 5
        local.get 20
        i32.add
        local.set 21
        local.get 21
        local.set 22
        local.get 5
        local.get 22
        i32.store offset=44
        local.get 5
        i32.load offset=8
        local.set 23
        local.get 5
        i32.load offset=12
        local.set 24
        local.get 5
        local.get 23
        i32.store offset=16
        local.get 5
        local.get 24
        i32.store offset=20
      end
      local.get 5
      i32.load offset=16
      local.set 25
      local.get 5
      i32.load offset=20
      local.set 26
      local.get 0
      local.get 26
      i32.store offset=4
      local.get 0
      local.get 25
      i32.store
      return
    )
    (func $_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$13needs_to_grow17h2a8d01fb7aef8b7dE (;41;) (type 4) (param i32 i32 i32) (result i32)
      (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
      global.get $__stack_pointer
      local.set 3
      i32.const 32
      local.set 4
      local.get 3
      local.get 4
      i32.sub
      local.set 5
      local.get 5
      local.get 0
      i32.store offset=12
      local.get 5
      local.get 1
      i32.store offset=16
      local.get 5
      local.get 2
      i32.store offset=20
      local.get 5
      local.get 0
      i32.store offset=24
      i32.const 0
      local.set 6
      i32.const 1
      local.set 7
      local.get 6
      local.get 7
      i32.and
      local.set 8
      block ;; label = @1
        block ;; label = @2
          local.get 8
          br_if 0 (;@2;)
          local.get 0
          i32.load
          local.set 9
          local.get 5
          local.get 9
          i32.store offset=8
          br 1 (;@1;)
        end
        i32.const -1
        local.set 10
        local.get 5
        local.get 10
        i32.store offset=8
      end
      local.get 5
      local.get 1
      i32.store offset=28
      local.get 5
      i32.load offset=8
      local.set 11
      local.get 11
      local.get 1
      i32.sub
      local.set 12
      local.get 2
      local.set 13
      local.get 12
      local.set 14
      local.get 13
      local.get 14
      i32.gt_u
      local.set 15
      i32.const 1
      local.set 16
      local.get 15
      local.get 16
      i32.and
      local.set 17
      local.get 17
      return
    )
    (func $_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$13shrink_to_fit17h08ba79cbdc1a9876E (;42;) (type 3) (param i32 i32)
      (local i32 i32 i32 i32 i32 i32 i32)
      global.get $__stack_pointer
      local.set 2
      i32.const 16
      local.set 3
      local.get 2
      local.get 3
      i32.sub
      local.set 4
      local.get 4
      global.set $__stack_pointer
      local.get 4
      local.get 0
      i32.store offset=8
      local.get 4
      local.get 1
      i32.store offset=12
      local.get 4
      local.get 0
      local.get 1
      call $_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$6shrink17h2c3774240ca72659E
      local.get 4
      i32.load offset=4
      local.set 5
      local.get 4
      i32.load
      local.set 6
      local.get 6
      local.get 5
      call $_ZN5alloc7raw_vec14handle_reserve17h2aa8f05a831506dcE
      i32.const 16
      local.set 7
      local.get 4
      local.get 7
      i32.add
      local.set 8
      local.get 8
      global.set $__stack_pointer
      return
    )
    (func $_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$6shrink17h2c3774240ca72659E (;43;) (type 2) (param i32 i32 i32)
      (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i32 i32 i32 i32 i64 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
      global.get $__stack_pointer
      local.set 3
      i32.const 288
      local.set 4
      local.get 3
      local.get 4
      i32.sub
      local.set 5
      local.get 5
      global.set $__stack_pointer
      local.get 5
      local.get 1
      i32.store offset=184
      local.get 5
      local.get 2
      i32.store offset=188
      local.get 5
      local.get 1
      i32.store offset=192
      i32.const 0
      local.set 6
      i32.const 1
      local.set 7
      local.get 6
      local.get 7
      i32.and
      local.set 8
      block ;; label = @1
        block ;; label = @2
          local.get 8
          br_if 0 (;@2;)
          local.get 1
          i32.load
          local.set 9
          local.get 5
          local.get 9
          i32.store offset=36
          br 1 (;@1;)
        end
        i32.const -1
        local.set 10
        local.get 5
        local.get 10
        i32.store offset=36
      end
      local.get 5
      i32.load offset=36
      local.set 11
      local.get 2
      local.set 12
      local.get 11
      local.set 13
      local.get 12
      local.get 13
      i32.le_u
      local.set 14
      i32.const -1
      local.set 15
      local.get 14
      local.get 15
      i32.xor
      local.set 16
      i32.const 1
      local.set 17
      local.get 16
      local.get 17
      i32.and
      local.set 18
      block ;; label = @1
        block ;; label = @2
          block ;; label = @3
            block ;; label = @4
              block ;; label = @5
                block ;; label = @6
                  block ;; label = @7
                    block ;; label = @8
                      block ;; label = @9
                        local.get 18
                        br_if 0 (;@9;)
                        i32.const 80
                        local.set 19
                        local.get 5
                        local.get 19
                        i32.add
                        local.set 20
                        local.get 20
                        local.set 21
                        local.get 21
                        local.get 1
                        call $_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14current_memory17hbe2934111be788d6E
                        local.get 5
                        i32.load offset=88
                        local.set 22
                        i32.const 0
                        local.set 23
                        i32.const 1
                        local.set 24
                        local.get 24
                        local.get 23
                        local.get 22
                        select
                        local.set 25
                        i32.const 1
                        local.set 26
                        local.get 25
                        local.set 27
                        local.get 26
                        local.set 28
                        local.get 27
                        local.get 28
                        i32.eq
                        local.set 29
                        i32.const 1
                        local.set 30
                        local.get 29
                        local.get 30
                        i32.and
                        local.set 31
                        local.get 31
                        br_if 1 (;@8;)
                        br 2 (;@7;)
                      end
                      i32.const 40
                      local.set 32
                      local.get 5
                      local.get 32
                      i32.add
                      local.set 33
                      local.get 33
                      local.set 34
                      i32.const 1048864
                      local.set 35
                      i32.const 1
                      local.set 36
                      i32.const 1048872
                      local.set 37
                      i32.const 0
                      local.set 38
                      local.get 34
                      local.get 35
                      local.get 36
                      local.get 37
                      local.get 38
                      call $_ZN4core3fmt9Arguments6new_v117hc0a036fd2ef1c778E
                      i32.const 40
                      local.set 39
                      local.get 5
                      local.get 39
                      i32.add
                      local.set 40
                      local.get 40
                      local.set 41
                      i32.const 1048948
                      local.set 42
                      local.get 41
                      local.get 42
                      call $_ZN4core9panicking9panic_fmt17h86214d64a55c1d57E
                      unreachable
                    end
                    i32.const 8
                    local.set 43
                    i32.const 96
                    local.set 44
                    local.get 5
                    local.get 44
                    i32.add
                    local.set 45
                    local.get 45
                    local.get 43
                    i32.add
                    local.set 46
                    i32.const 80
                    local.set 47
                    local.get 5
                    local.get 47
                    i32.add
                    local.set 48
                    local.get 48
                    local.get 43
                    i32.add
                    local.set 49
                    local.get 49
                    i32.load
                    local.set 50
                    local.get 46
                    local.get 50
                    i32.store
                    local.get 5
                    i64.load offset=80
                    local.set 51
                    local.get 5
                    local.get 51
                    i64.store offset=96
                    i32.const 64
                    local.set 52
                    local.get 5
                    local.get 52
                    i32.add
                    local.set 53
                    local.get 53
                    local.get 43
                    i32.add
                    local.set 54
                    local.get 46
                    i32.load
                    local.set 55
                    local.get 54
                    local.get 55
                    i32.store
                    local.get 5
                    i64.load offset=96
                    local.set 56
                    local.get 5
                    local.get 56
                    i64.store offset=64
                    local.get 5
                    i32.load offset=64
                    local.set 57
                    local.get 5
                    local.get 57
                    i32.store offset=196
                    local.get 5
                    i32.load offset=68
                    local.set 58
                    local.get 54
                    i32.load
                    local.set 59
                    local.get 5
                    local.get 58
                    i32.store offset=200
                    local.get 5
                    local.get 59
                    i32.store offset=204
                    local.get 5
                    local.get 2
                    i32.store offset=212
                    i32.const 1
                    local.set 60
                    local.get 5
                    local.get 60
                    i32.store offset=216
                    local.get 5
                    local.get 60
                    i32.store offset=220
                    local.get 5
                    i32.load offset=220
                    local.set 61
                    i32.const 16
                    local.set 62
                    local.get 5
                    local.get 62
                    i32.add
                    local.set 63
                    local.get 63
                    local.get 60
                    local.get 61
                    local.get 2
                    call $_ZN4core5alloc6layout6Layout5array5inner17h013575e3269d527eE
                    local.get 5
                    i32.load offset=16
                    local.set 64
                    local.get 5
                    i32.load offset=20
                    local.set 65
                    local.get 5
                    local.get 65
                    i32.store offset=124
                    local.get 5
                    local.get 64
                    i32.store offset=120
                    local.get 5
                    i32.load offset=124
                    local.set 66
                    i32.const 1
                    local.set 67
                    i32.const 0
                    local.set 68
                    local.get 68
                    local.get 67
                    local.get 66
                    select
                    local.set 69
                    local.get 69
                    i32.eqz
                    br_if 1 (;@6;)
                    br 2 (;@5;)
                  end
                  i32.const -2147483647
                  local.set 70
                  local.get 5
                  local.get 70
                  i32.store offset=28
                  br 5 (;@1;)
                end
                local.get 5
                i32.load offset=120
                local.set 71
                local.get 5
                i32.load offset=124
                local.set 72
                local.get 5
                local.get 71
                i32.store offset=224
                local.get 5
                local.get 72
                i32.store offset=228
                local.get 5
                local.get 71
                i32.store offset=112
                local.get 5
                local.get 72
                i32.store offset=116
                local.get 5
                i32.load offset=112
                local.set 73
                local.get 5
                i32.load offset=116
                local.set 74
                i32.const 8
                local.set 75
                local.get 5
                local.get 75
                i32.add
                local.set 76
                local.get 76
                local.get 1
                local.get 57
                local.get 58
                local.get 59
                local.get 73
                local.get 74
                call $_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$6shrink17hfc84431e0fec6f68E
                local.get 5
                i32.load offset=12
                local.set 77
                local.get 5
                i32.load offset=8
                local.set 78
                i32.const 112
                local.set 79
                local.get 5
                local.get 79
                i32.add
                local.set 80
                local.get 80
                local.set 81
                local.get 5
                local.get 81
                i32.store offset=156
                local.get 5
                i32.load offset=156
                local.set 82
                i32.const 144
                local.set 83
                local.get 5
                local.get 83
                i32.add
                local.set 84
                local.get 84
                local.set 85
                local.get 85
                local.get 78
                local.get 77
                local.get 82
                call $_ZN4core6result19Result$LT$T$C$E$GT$7map_err17heb5adf6dad7bba06E
                local.get 5
                i32.load offset=144
                local.set 86
                local.get 86
                i32.eqz
                br_if 1 (;@4;)
                br 2 (;@3;)
              end
              call $_ZN4core4hint21unreachable_unchecked17ha6f8d4f305e3eef6E
              unreachable
            end
            local.get 5
            i32.load offset=148
            local.set 87
            local.get 5
            i32.load offset=152
            local.set 88
            local.get 5
            local.get 87
            i32.store offset=240
            local.get 5
            local.get 88
            i32.store offset=244
            local.get 5
            local.get 87
            i32.store offset=132
            local.get 5
            local.get 88
            i32.store offset=136
            i32.const 0
            local.set 89
            local.get 5
            local.get 89
            i32.store offset=128
            br 1 (;@2;)
          end
          local.get 5
          i32.load offset=148
          local.set 90
          local.get 5
          i32.load offset=152
          local.set 91
          local.get 5
          local.get 90
          i32.store offset=232
          local.get 5
          local.get 91
          i32.store offset=236
          local.get 5
          local.get 90
          i32.store offset=168
          local.get 5
          local.get 91
          i32.store offset=172
          local.get 5
          i32.load offset=168
          local.set 92
          local.get 5
          i32.load offset=172
          local.set 93
          local.get 5
          local.get 92
          i32.store offset=132
          local.get 5
          local.get 93
          i32.store offset=136
          i32.const 1
          local.set 94
          local.get 5
          local.get 94
          i32.store offset=128
        end
        local.get 5
        i32.load offset=128
        local.set 95
        block ;; label = @2
          local.get 95
          br_if 0 (;@2;)
          local.get 5
          i32.load offset=132
          local.set 96
          local.get 5
          i32.load offset=136
          local.set 97
          local.get 5
          local.get 96
          i32.store offset=272
          local.get 5
          local.get 97
          i32.store offset=276
          local.get 5
          local.get 96
          i32.store offset=280
          local.get 5
          local.get 97
          i32.store offset=284
          local.get 1
          local.get 96
          local.get 97
          local.get 2
          call $_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$15set_ptr_and_cap17hd89aefbb655ac570E
          i32.const -2147483647
          local.set 98
          local.get 5
          local.get 98
          i32.store offset=28
          br 1 (;@1;)
        end
        local.get 5
        i32.load offset=132
        local.set 99
        local.get 5
        i32.load offset=136
        local.set 100
        local.get 5
        local.get 99
        i32.store offset=248
        local.get 5
        local.get 100
        i32.store offset=252
        local.get 5
        local.get 99
        i32.store offset=160
        local.get 5
        local.get 100
        i32.store offset=164
        local.get 5
        i32.load offset=160
        local.set 101
        local.get 5
        i32.load offset=164
        local.set 102
        local.get 5
        local.get 101
        i32.store offset=256
        local.get 5
        local.get 102
        i32.store offset=260
        local.get 5
        local.get 101
        i32.store offset=264
        local.get 5
        local.get 102
        i32.store offset=268
        local.get 5
        local.get 101
        i32.store offset=176
        local.get 5
        local.get 102
        i32.store offset=180
        local.get 5
        i32.load offset=176
        local.set 103
        local.get 5
        i32.load offset=180
        local.set 104
        local.get 5
        local.get 103
        i32.store offset=24
        local.get 5
        local.get 104
        i32.store offset=28
      end
      local.get 5
      i32.load offset=24
      local.set 105
      local.get 5
      i32.load offset=28
      local.set 106
      local.get 0
      local.get 106
      i32.store offset=4
      local.get 0
      local.get 105
      i32.store
      i32.const 288
      local.set 107
      local.get 5
      local.get 107
      i32.add
      local.set 108
      local.get 108
      global.set $__stack_pointer
      return
    )
    (func $_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14current_memory17hbe2934111be788d6E (;44;) (type 3) (param i32 i32)
      (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i32 i32 i32 i32 i32 i32 i32 i32)
      global.get $__stack_pointer
      local.set 2
      i32.const 96
      local.set 3
      local.get 2
      local.get 3
      i32.sub
      local.set 4
      local.get 4
      global.set $__stack_pointer
      local.get 4
      local.get 1
      i32.store offset=48
      i32.const 0
      local.set 5
      i32.const 1
      local.set 6
      local.get 5
      local.get 6
      i32.and
      local.set 7
      block ;; label = @1
        block ;; label = @2
          local.get 7
          br_if 0 (;@2;)
          local.get 1
          i32.load
          local.set 8
          i32.const 0
          local.set 9
          local.get 8
          local.set 10
          local.get 9
          local.set 11
          local.get 10
          local.get 11
          i32.eq
          local.set 12
          i32.const 1
          local.set 13
          local.get 12
          local.get 13
          i32.and
          local.set 14
          local.get 4
          local.get 14
          i32.store8 offset=15
          br 1 (;@1;)
        end
        i32.const 1
        local.set 15
        local.get 4
        local.get 15
        i32.store8 offset=15
      end
      local.get 4
      i32.load8_u offset=15
      local.set 16
      i32.const 1
      local.set 17
      local.get 16
      local.get 17
      i32.and
      local.set 18
      block ;; label = @1
        block ;; label = @2
          block ;; label = @3
            block ;; label = @4
              local.get 18
              br_if 0 (;@4;)
              local.get 1
              i32.load
              local.set 19
              local.get 4
              local.get 19
              i32.store offset=52
              i32.const 1
              local.set 20
              local.get 4
              local.get 20
              i32.store offset=56
              local.get 4
              local.get 20
              i32.store offset=60
              local.get 4
              i32.load offset=60
              local.set 21
              local.get 4
              local.get 20
              local.get 21
              local.get 19
              call $_ZN4core5alloc6layout6Layout5array5inner17h013575e3269d527eE
              local.get 4
              i32.load
              local.set 22
              local.get 4
              i32.load offset=4
              local.set 23
              local.get 4
              local.get 23
              i32.store offset=20
              local.get 4
              local.get 22
              i32.store offset=16
              local.get 4
              i32.load offset=20
              local.set 24
              i32.const 1
              local.set 25
              i32.const 0
              local.set 26
              local.get 26
              local.get 25
              local.get 24
              select
              local.set 27
              local.get 27
              i32.eqz
              br_if 1 (;@3;)
              br 2 (;@2;)
            end
            i32.const 0
            local.set 28
            local.get 0
            local.get 28
            i32.store offset=8
            br 2 (;@1;)
          end
          local.get 4
          i32.load offset=16
          local.set 29
          local.get 4
          i32.load offset=20
          local.set 30
          local.get 4
          local.get 29
          i32.store offset=64
          local.get 4
          local.get 30
          i32.store offset=68
          local.get 4
          local.get 29
          i32.store offset=72
          local.get 4
          local.get 30
          i32.store offset=76
          local.get 1
          i32.load offset=4
          local.set 31
          local.get 4
          local.get 31
          i32.store offset=80
          local.get 4
          local.get 31
          i32.store offset=84
          local.get 4
          local.get 31
          i32.store offset=88
          local.get 4
          local.get 31
          i32.store offset=92
          local.get 4
          local.get 31
          i32.store offset=44
          local.get 4
          i32.load offset=44
          local.set 32
          local.get 4
          local.get 32
          i32.store offset=40
          local.get 4
          i32.load offset=40
          local.set 33
          local.get 33
          call $_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17h833df256fe555119E
          local.set 34
          local.get 4
          local.get 34
          i32.store offset=24
          local.get 4
          local.get 29
          i32.store offset=28
          local.get 4
          local.get 30
          i32.store offset=32
          local.get 4
          i64.load offset=24
          local.set 35
          local.get 0
          local.get 35
          i64.store align=4
          i32.const 8
          local.set 36
          local.get 0
          local.get 36
          i32.add
          local.set 37
          i32.const 24
          local.set 38
          local.get 4
          local.get 38
          i32.add
          local.set 39
          local.get 39
          local.get 36
          i32.add
          local.set 40
          local.get 40
          i32.load
          local.set 41
          local.get 37
          local.get 41
          i32.store
          br 1 (;@1;)
        end
        call $_ZN4core4hint21unreachable_unchecked17ha6f8d4f305e3eef6E
        unreachable
      end
      i32.const 96
      local.set 42
      local.get 4
      local.get 42
      i32.add
      local.set 43
      local.get 43
      global.set $__stack_pointer
      return
    )
    (func $_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14grow_amortized17h920592542e30b6abE (;45;) (type 8) (param i32 i32 i32 i32)
      (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
      global.get $__stack_pointer
      local.set 4
      i32.const 352
      local.set 5
      local.get 4
      local.get 5
      i32.sub
      local.set 6
      local.get 6
      global.set $__stack_pointer
      local.get 6
      local.get 1
      i32.store offset=168
      local.get 6
      local.get 2
      i32.store offset=172
      local.get 6
      local.get 3
      i32.store offset=176
      i32.const 0
      local.set 7
      i32.const 1
      local.set 8
      local.get 7
      local.get 8
      i32.and
      local.set 9
      block ;; label = @1
        block ;; label = @2
          block ;; label = @3
            block ;; label = @4
              block ;; label = @5
                local.get 9
                br_if 0 (;@5;)
                i32.const 24
                local.set 10
                local.get 6
                local.get 10
                i32.add
                local.set 11
                local.get 11
                local.get 2
                local.get 3
                call $_ZN4core3num23_$LT$impl$u20$usize$GT$11checked_add17ha3cd27721a337066E
                local.get 6
                i32.load offset=24
                local.set 12
                local.get 6
                i32.load offset=28
                local.set 13
                local.get 6
                local.get 13
                i32.store offset=68
                local.get 6
                local.get 12
                i32.store offset=64
                i32.const 0
                local.set 14
                local.get 6
                local.get 14
                i32.store offset=76
                local.get 6
                i32.load offset=64
                local.set 15
                local.get 15
                i32.eqz
                br_if 1 (;@4;)
                br 2 (;@3;)
              end
              i32.const 0
              local.set 16
              local.get 6
              local.get 16
              i32.store offset=44
              local.get 6
              i32.load offset=40
              local.set 17
              local.get 6
              i32.load offset=44
              local.set 18
              i32.const 8
              local.set 19
              local.get 6
              local.get 19
              i32.add
              local.set 20
              local.get 20
              local.get 17
              local.get 18
              call $_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17h2d991e84ff035cadE
              local.get 6
              i32.load offset=12
              local.set 21
              local.get 6
              i32.load offset=8
              local.set 22
              local.get 6
              local.get 22
              i32.store offset=32
              local.get 6
              local.get 21
              i32.store offset=36
              br 3 (;@1;)
            end
            local.get 6
            i32.load offset=72
            local.set 23
            local.get 6
            i32.load offset=76
            local.set 24
            local.get 6
            local.get 23
            i32.store offset=56
            local.get 6
            local.get 24
            i32.store offset=60
            br 1 (;@2;)
          end
          local.get 6
          i32.load offset=68
          local.set 25
          local.get 6
          local.get 25
          i32.store offset=180
          local.get 6
          local.get 25
          i32.store offset=56
          i32.const -2147483647
          local.set 26
          local.get 6
          local.get 26
          i32.store offset=60
        end
        local.get 6
        i32.load offset=60
        local.set 27
        i32.const -2147483647
        local.set 28
        local.get 27
        local.set 29
        local.get 28
        local.set 30
        local.get 29
        local.get 30
        i32.eq
        local.set 31
        i32.const 0
        local.set 32
        i32.const 1
        local.set 33
        i32.const 1
        local.set 34
        local.get 31
        local.get 34
        i32.and
        local.set 35
        local.get 32
        local.get 33
        local.get 35
        select
        local.set 36
        block ;; label = @2
          block ;; label = @3
            local.get 36
            br_if 0 (;@3;)
            local.get 6
            i32.load offset=56
            local.set 37
            local.get 6
            local.get 37
            i32.store offset=196
            local.get 6
            local.get 37
            i32.store offset=48
            i32.const -2147483647
            local.set 38
            local.get 6
            local.get 38
            i32.store offset=52
            br 1 (;@2;)
          end
          local.get 6
          i32.load offset=56
          local.set 39
          local.get 6
          i32.load offset=60
          local.set 40
          local.get 6
          local.get 39
          i32.store offset=184
          local.get 6
          local.get 40
          i32.store offset=188
          local.get 6
          local.get 39
          i32.store offset=144
          local.get 6
          local.get 40
          i32.store offset=148
          local.get 6
          i32.load offset=144
          local.set 41
          local.get 6
          i32.load offset=148
          local.set 42
          local.get 6
          local.get 41
          i32.store offset=48
          local.get 6
          local.get 42
          i32.store offset=52
        end
        local.get 6
        i32.load offset=52
        local.set 43
        i32.const -2147483647
        local.set 44
        local.get 43
        local.set 45
        local.get 44
        local.set 46
        local.get 45
        local.get 46
        i32.eq
        local.set 47
        i32.const 0
        local.set 48
        i32.const 1
        local.set 49
        i32.const 1
        local.set 50
        local.get 47
        local.get 50
        i32.and
        local.set 51
        local.get 48
        local.get 49
        local.get 51
        select
        local.set 52
        block ;; label = @2
          block ;; label = @3
            block ;; label = @4
              block ;; label = @5
                block ;; label = @6
                  local.get 52
                  br_if 0 (;@6;)
                  local.get 6
                  i32.load offset=48
                  local.set 53
                  local.get 6
                  local.get 53
                  i32.store offset=228
                  local.get 6
                  local.get 53
                  i32.store offset=232
                  local.get 1
                  i32.load
                  local.set 54
                  i32.const 1
                  local.set 55
                  local.get 54
                  local.get 55
                  i32.shl
                  local.set 56
                  local.get 6
                  local.get 56
                  i32.store offset=236
                  local.get 6
                  local.get 53
                  i32.store offset=240
                  local.get 6
                  local.get 56
                  i32.store offset=244
                  local.get 6
                  local.get 53
                  i32.store offset=248
                  local.get 56
                  local.get 53
                  call $_ZN4core3cmp6max_by17h55543c97d078de3cE
                  local.set 57
                  local.get 6
                  local.get 57
                  i32.store offset=252
                  local.get 6
                  local.get 57
                  i32.store offset=256
                  i32.const 8
                  local.set 58
                  local.get 6
                  local.get 58
                  i32.store offset=260
                  i32.const 8
                  local.set 59
                  local.get 6
                  local.get 59
                  i32.store offset=264
                  local.get 6
                  local.get 57
                  i32.store offset=268
                  i32.const 8
                  local.set 60
                  local.get 60
                  local.get 57
                  call $_ZN4core3cmp6max_by17h55543c97d078de3cE
                  local.set 61
                  local.get 6
                  local.get 61
                  i32.store offset=272
                  local.get 6
                  local.get 61
                  i32.store offset=276
                  i32.const 1
                  local.set 62
                  local.get 6
                  local.get 62
                  i32.store offset=280
                  i32.const 1
                  local.set 63
                  local.get 6
                  local.get 63
                  i32.store offset=284
                  local.get 6
                  i32.load offset=284
                  local.set 64
                  i32.const 1
                  local.set 65
                  i32.const 16
                  local.set 66
                  local.get 6
                  local.get 66
                  i32.add
                  local.set 67
                  local.get 67
                  local.get 65
                  local.get 64
                  local.get 61
                  call $_ZN4core5alloc6layout6Layout5array5inner17h013575e3269d527eE
                  local.get 6
                  i32.load offset=20
                  local.set 68
                  local.get 6
                  i32.load offset=16
                  local.set 69
                  local.get 6
                  local.get 69
                  i32.store offset=288
                  local.get 6
                  local.get 68
                  i32.store offset=292
                  i32.const 120
                  local.set 70
                  local.get 6
                  local.get 70
                  i32.add
                  local.set 71
                  local.get 71
                  local.set 72
                  local.get 72
                  local.get 1
                  call $_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14current_memory17hbe2934111be788d6E
                  i32.const 104
                  local.set 73
                  local.get 6
                  local.get 73
                  i32.add
                  local.set 74
                  local.get 74
                  local.set 75
                  i32.const 120
                  local.set 76
                  local.get 6
                  local.get 76
                  i32.add
                  local.set 77
                  local.get 77
                  local.set 78
                  local.get 75
                  local.get 69
                  local.get 68
                  local.get 78
                  local.get 1
                  call $_ZN5alloc7raw_vec11finish_grow17hcb62a66f602166b5E
                  local.get 6
                  i32.load offset=104
                  local.set 79
                  local.get 79
                  i32.eqz
                  br_if 1 (;@5;)
                  br 2 (;@4;)
                end
                local.get 6
                i32.load offset=48
                local.set 80
                local.get 6
                i32.load offset=52
                local.set 81
                local.get 6
                local.get 80
                i32.store offset=200
                local.get 6
                local.get 81
                i32.store offset=204
                local.get 6
                local.get 80
                i32.store offset=80
                local.get 6
                local.get 81
                i32.store offset=84
                local.get 6
                i32.load offset=80
                local.set 82
                local.get 6
                i32.load offset=84
                local.set 83
                local.get 6
                local.get 82
                i32.store offset=208
                local.get 6
                local.get 83
                i32.store offset=212
                local.get 6
                local.get 82
                i32.store offset=216
                local.get 6
                local.get 83
                i32.store offset=220
                local.get 6
                local.get 82
                i32.store offset=152
                local.get 6
                local.get 83
                i32.store offset=156
                local.get 6
                i32.load offset=152
                local.set 84
                local.get 6
                i32.load offset=156
                local.set 85
                local.get 6
                local.get 84
                i32.store offset=32
                local.get 6
                local.get 85
                i32.store offset=36
                br 3 (;@2;)
              end
              local.get 6
              i32.load offset=108
              local.set 86
              local.get 6
              i32.load offset=112
              local.set 87
              local.get 6
              local.get 86
              i32.store offset=304
              local.get 6
              local.get 87
              i32.store offset=308
              local.get 6
              local.get 86
              i32.store offset=92
              local.get 6
              local.get 87
              i32.store offset=96
              i32.const 0
              local.set 88
              local.get 6
              local.get 88
              i32.store offset=88
              br 1 (;@3;)
            end
            local.get 6
            i32.load offset=108
            local.set 89
            local.get 6
            i32.load offset=112
            local.set 90
            local.get 6
            local.get 89
            i32.store offset=296
            local.get 6
            local.get 90
            i32.store offset=300
            local.get 6
            local.get 89
            i32.store offset=160
            local.get 6
            local.get 90
            i32.store offset=164
            local.get 6
            i32.load offset=160
            local.set 91
            local.get 6
            i32.load offset=164
            local.set 92
            local.get 6
            local.get 91
            i32.store offset=92
            local.get 6
            local.get 92
            i32.store offset=96
            i32.const 1
            local.set 93
            local.get 6
            local.get 93
            i32.store offset=88
          end
          local.get 6
          i32.load offset=88
          local.set 94
          block ;; label = @3
            local.get 94
            br_if 0 (;@3;)
            local.get 6
            i32.load offset=92
            local.set 95
            local.get 6
            i32.load offset=96
            local.set 96
            local.get 6
            local.get 95
            i32.store offset=336
            local.get 6
            local.get 96
            i32.store offset=340
            local.get 6
            local.get 95
            i32.store offset=344
            local.get 6
            local.get 96
            i32.store offset=348
            local.get 1
            local.get 95
            local.get 96
            local.get 61
            call $_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$15set_ptr_and_cap17hd89aefbb655ac570E
            i32.const -2147483647
            local.set 97
            local.get 6
            local.get 97
            i32.store offset=36
            br 2 (;@1;)
          end
          local.get 6
          i32.load offset=92
          local.set 98
          local.get 6
          i32.load offset=96
          local.set 99
          local.get 6
          local.get 98
          i32.store offset=312
          local.get 6
          local.get 99
          i32.store offset=316
          local.get 6
          local.get 98
          i32.store offset=136
          local.get 6
          local.get 99
          i32.store offset=140
          local.get 6
          i32.load offset=136
          local.set 100
          local.get 6
          i32.load offset=140
          local.set 101
          local.get 6
          local.get 100
          i32.store offset=320
          local.get 6
          local.get 101
          i32.store offset=324
          local.get 6
          local.get 100
          i32.store offset=328
          local.get 6
          local.get 101
          i32.store offset=332
          local.get 6
          local.get 100
          i32.store offset=32
          local.get 6
          local.get 101
          i32.store offset=36
        end
      end
      local.get 6
      i32.load offset=32
      local.set 102
      local.get 6
      i32.load offset=36
      local.set 103
      local.get 0
      local.get 103
      i32.store offset=4
      local.get 0
      local.get 102
      i32.store
      i32.const 352
      local.set 104
      local.get 6
      local.get 104
      i32.add
      local.set 105
      local.get 105
      global.set $__stack_pointer
      return
    )
    (func $_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$15set_ptr_and_cap17hd89aefbb655ac570E (;46;) (type 8) (param i32 i32 i32 i32)
      (local i32 i32 i32 i32 i32 i32)
      global.get $__stack_pointer
      local.set 4
      i32.const 64
      local.set 5
      local.get 4
      local.get 5
      i32.sub
      local.set 6
      local.get 6
      local.get 0
      i32.store offset=12
      local.get 6
      local.get 1
      i32.store offset=16
      local.get 6
      local.get 2
      i32.store offset=20
      local.get 6
      local.get 3
      i32.store offset=28
      local.get 6
      local.get 1
      i32.store offset=32
      local.get 6
      local.get 2
      i32.store offset=36
      local.get 6
      local.get 1
      i32.store offset=40
      local.get 6
      local.get 2
      i32.store offset=44
      local.get 6
      local.get 1
      i32.store offset=52
      local.get 6
      local.get 1
      i32.store offset=4
      local.get 6
      i32.load offset=4
      local.set 7
      local.get 6
      local.get 7
      i32.store offset=56
      local.get 6
      local.get 7
      i32.store offset=60
      local.get 6
      local.get 7
      i32.store offset=8
      local.get 6
      i32.load offset=8
      local.set 8
      local.get 6
      local.get 8
      i32.store
      local.get 6
      i32.load
      local.set 9
      local.get 0
      local.get 9
      i32.store offset=4
      local.get 0
      local.get 3
      i32.store
      return
    )
    (func $_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$6shrink28_$u7b$$u7b$closure$u7d$$u7d$17hbbfe55093c8493a0E (;47;) (type 3) (param i32 i32)
      (local i32 i32 i32 i32 i32 i32 i32 i32)
      global.get $__stack_pointer
      local.set 2
      i32.const 32
      local.set 3
      local.get 2
      local.get 3
      i32.sub
      local.set 4
      local.get 4
      local.get 1
      i32.store offset=12
      local.get 4
      i32.load offset=12
      local.set 5
      local.get 5
      i32.load
      local.set 6
      local.get 5
      i32.load offset=4
      local.set 7
      local.get 4
      local.get 6
      i32.store offset=16
      local.get 4
      local.get 7
      i32.store offset=20
      local.get 4
      i32.load offset=16
      local.set 8
      local.get 4
      i32.load offset=20
      local.set 9
      local.get 0
      local.get 9
      i32.store offset=4
      local.get 0
      local.get 8
      i32.store
      return
    )
    (func $_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve17h8ad9baad29ba5473E (;48;) (type 2) (param i32 i32 i32)
      (local i32 i32 i32 i32 i32 i32 i32 i32)
      global.get $__stack_pointer
      local.set 3
      i32.const 16
      local.set 4
      local.get 3
      local.get 4
      i32.sub
      local.set 5
      local.get 5
      global.set $__stack_pointer
      local.get 5
      local.get 0
      i32.store offset=4
      local.get 5
      local.get 1
      i32.store offset=8
      local.get 5
      local.get 2
      i32.store offset=12
      local.get 0
      local.get 1
      local.get 2
      call $_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$13needs_to_grow17h2a8d01fb7aef8b7dE
      local.set 6
      i32.const 1
      local.set 7
      local.get 6
      local.get 7
      i32.and
      local.set 8
      block ;; label = @1
        local.get 8
        i32.eqz
        br_if 0 (;@1;)
        local.get 0
        local.get 1
        local.get 2
        call $_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve21do_reserve_and_handle17he730261fc694caa1E
      end
      i32.const 16
      local.set 9
      local.get 5
      local.get 9
      i32.add
      local.set 10
      local.get 10
      global.set $__stack_pointer
      return
    )
    (func $_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve21do_reserve_and_handle17he730261fc694caa1E (;49;) (type 2) (param i32 i32 i32)
      (local i32 i32 i32 i32 i32 i32 i32 i32 i32)
      global.get $__stack_pointer
      local.set 3
      i32.const 32
      local.set 4
      local.get 3
      local.get 4
      i32.sub
      local.set 5
      local.get 5
      global.set $__stack_pointer
      local.get 5
      local.get 0
      i32.store offset=20
      local.get 5
      local.get 1
      i32.store offset=24
      local.get 5
      local.get 2
      i32.store offset=28
      i32.const 8
      local.set 6
      local.get 5
      local.get 6
      i32.add
      local.set 7
      local.get 7
      local.get 0
      local.get 1
      local.get 2
      call $_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14grow_amortized17h920592542e30b6abE
      local.get 5
      i32.load offset=12
      local.set 8
      local.get 5
      i32.load offset=8
      local.set 9
      local.get 9
      local.get 8
      call $_ZN5alloc7raw_vec14handle_reserve17h2aa8f05a831506dcE
      i32.const 32
      local.set 10
      local.get 5
      local.get 10
      i32.add
      local.set 11
      local.get 11
      global.set $__stack_pointer
      return
    )
    (func $_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8into_box17hf1fedbc162dc27e8E (;50;) (type 8) (param i32 i32 i32 i32)
      (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
      global.get $__stack_pointer
      local.set 4
      i32.const 208
      local.set 5
      local.get 4
      local.get 5
      i32.sub
      local.set 6
      local.get 6
      global.set $__stack_pointer
      local.get 6
      local.get 1
      i32.store offset=64
      local.get 6
      local.get 2
      i32.store offset=68
      local.get 6
      local.get 3
      i32.store offset=76
      local.get 6
      local.get 1
      i32.store offset=104
      local.get 6
      local.get 2
      i32.store offset=108
      local.get 6
      local.get 1
      i32.store offset=16
      local.get 6
      local.get 2
      i32.store offset=20
      i32.const 16
      local.set 7
      local.get 6
      local.get 7
      i32.add
      local.set 8
      local.get 6
      local.get 8
      i32.store offset=116
      i32.const 16
      local.set 9
      local.get 6
      local.get 9
      i32.add
      local.set 10
      local.get 6
      local.get 10
      i32.store offset=120
      local.get 6
      i32.load offset=20
      local.set 11
      local.get 6
      local.get 11
      i32.store offset=124
      local.get 6
      local.get 11
      i32.store offset=128
      local.get 6
      local.get 11
      i32.store offset=132
      local.get 6
      local.get 3
      i32.store offset=136
      local.get 6
      local.get 11
      i32.store offset=140
      local.get 6
      local.get 3
      i32.store offset=144
      local.get 6
      local.get 11
      i32.store offset=148
      local.get 6
      local.get 11
      i32.store offset=152
      local.get 6
      local.get 3
      i32.store offset=156
      local.get 6
      local.get 11
      i32.store offset=32
      local.get 6
      local.get 3
      i32.store offset=36
      local.get 6
      i32.load offset=32
      local.set 12
      local.get 6
      i32.load offset=36
      local.set 13
      local.get 6
      local.get 12
      i32.store offset=24
      local.get 6
      local.get 13
      i32.store offset=28
      local.get 6
      i32.load offset=24
      local.set 14
      local.get 6
      i32.load offset=28
      local.set 15
      local.get 6
      local.get 14
      i32.store offset=160
      local.get 6
      local.get 15
      i32.store offset=164
      local.get 6
      local.get 14
      i32.store offset=168
      local.get 6
      local.get 15
      i32.store offset=172
      i32.const 16
      local.set 16
      local.get 6
      local.get 16
      i32.add
      local.set 17
      local.get 6
      local.get 17
      i32.store offset=180
      i32.const 16
      local.set 18
      local.get 6
      local.get 18
      i32.add
      local.set 19
      local.get 6
      local.get 19
      i32.store offset=184
      i32.const 40
      local.set 20
      local.get 6
      local.get 20
      i32.add
      local.set 21
      local.get 6
      local.get 21
      i32.store offset=188
      local.get 6
      local.get 14
      i32.store offset=192
      local.get 6
      local.get 15
      i32.store offset=196
      local.get 6
      local.get 14
      i32.store offset=200
      local.get 6
      local.get 15
      i32.store offset=204
      local.get 6
      local.get 14
      i32.store offset=56
      local.get 6
      local.get 15
      i32.store offset=60
      local.get 6
      i32.load offset=56
      local.set 22
      local.get 6
      i32.load offset=60
      local.set 23
      local.get 6
      local.get 22
      i32.store offset=48
      local.get 6
      local.get 23
      i32.store offset=52
      local.get 6
      i32.load offset=48
      local.set 24
      local.get 6
      i32.load offset=52
      local.set 25
      local.get 6
      local.get 24
      i32.store offset=8
      local.get 6
      local.get 25
      i32.store offset=12
      local.get 6
      i32.load offset=8
      local.set 26
      local.get 6
      i32.load offset=12
      local.set 27
      local.get 0
      local.get 27
      i32.store offset=4
      local.get 0
      local.get 26
      i32.store
      i32.const 208
      local.set 28
      local.get 6
      local.get 28
      i32.add
      local.set 29
      local.get 29
      global.set $__stack_pointer
      return
    )
    (func $_ZN4core3cmp5impls50_$LT$impl$u20$core..cmp..Ord$u20$for$u20$usize$GT$3cmp17h09f8bbdb9b9aea10E (;51;) (type 5) (param i32 i32) (result i32)
      (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
      global.get $__stack_pointer
      local.set 2
      i32.const 16
      local.set 3
      local.get 2
      local.get 3
      i32.sub
      local.set 4
      local.get 4
      local.get 0
      i32.store offset=8
      local.get 4
      local.get 1
      i32.store offset=12
      local.get 0
      i32.load
      local.set 5
      local.get 1
      i32.load
      local.set 6
      local.get 5
      local.set 7
      local.get 6
      local.set 8
      local.get 7
      local.get 8
      i32.lt_u
      local.set 9
      i32.const 1
      local.set 10
      local.get 9
      local.get 10
      i32.and
      local.set 11
      block ;; label = @1
        block ;; label = @2
          block ;; label = @3
            block ;; label = @4
              block ;; label = @5
                local.get 11
                br_if 0 (;@5;)
                local.get 0
                i32.load
                local.set 12
                local.get 1
                i32.load
                local.set 13
                local.get 12
                local.set 14
                local.get 13
                local.set 15
                local.get 14
                local.get 15
                i32.eq
                local.set 16
                i32.const 1
                local.set 17
                local.get 16
                local.get 17
                i32.and
                local.set 18
                local.get 18
                br_if 2 (;@3;)
                br 1 (;@4;)
              end
              i32.const 255
              local.set 19
              local.get 4
              local.get 19
              i32.store8 offset=7
              br 3 (;@1;)
            end
            i32.const 1
            local.set 20
            local.get 4
            local.get 20
            i32.store8 offset=7
            br 1 (;@2;)
          end
          i32.const 0
          local.set 21
          local.get 4
          local.get 21
          i32.store8 offset=7
        end
      end
      local.get 4
      i32.load8_u offset=7
      local.set 22
      local.get 22
      return
    )
    (func $_ZN4core3ops8function6FnOnce9call_once17h68fee6bc8b30a4c6E (;52;) (type 5) (param i32 i32) (result i32)
      (local i32 i32 i32 i32 i32 i32 i32 i32)
      global.get $__stack_pointer
      local.set 2
      i32.const 16
      local.set 3
      local.get 2
      local.get 3
      i32.sub
      local.set 4
      local.get 4
      global.set $__stack_pointer
      local.get 4
      local.get 0
      i32.store
      local.get 4
      local.get 1
      i32.store offset=4
      local.get 4
      i32.load
      local.set 5
      local.get 4
      i32.load offset=4
      local.set 6
      local.get 5
      local.get 6
      call $_ZN4core3cmp5impls50_$LT$impl$u20$core..cmp..Ord$u20$for$u20$usize$GT$3cmp17h09f8bbdb9b9aea10E
      local.set 7
      i32.const 16
      local.set 8
      local.get 4
      local.get 8
      i32.add
      local.set 9
      local.get 9
      global.set $__stack_pointer
      local.get 7
      return
    )
    (func $_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h35e17815eaca2727E (;53;) (type $.rodata) (param i32)
      (local i32 i32 i32 i32 i32)
      global.get $__stack_pointer
      local.set 1
      i32.const 16
      local.set 2
      local.get 1
      local.get 2
      i32.sub
      local.set 3
      local.get 3
      global.set $__stack_pointer
      local.get 3
      local.get 0
      i32.store offset=12
      local.get 0
      call $_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h12667835dabdaaa8E
      i32.const 16
      local.set 4
      local.get 3
      local.get 4
      i32.add
      local.set 5
      local.get 5
      global.set $__stack_pointer
      return
    )
    (func $_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h12667835dabdaaa8E (;54;) (type $.rodata) (param i32)
      (local i32 i32 i32 i32 i32)
      global.get $__stack_pointer
      local.set 1
      i32.const 16
      local.set 2
      local.get 1
      local.get 2
      i32.sub
      local.set 3
      local.get 3
      global.set $__stack_pointer
      local.get 3
      local.get 0
      i32.store offset=12
      local.get 0
      call $_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h48e6654c3406a3bcE
      local.get 0
      call $_ZN4core3ptr53drop_in_place$LT$alloc..raw_vec..RawVec$LT$u8$GT$$GT$17h85806da3636f2937E
      i32.const 16
      local.set 4
      local.get 3
      local.get 4
      i32.add
      local.set 5
      local.get 5
      global.set $__stack_pointer
      return
    )
    (func $_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h48e6654c3406a3bcE (;55;) (type $.rodata) (param i32)
      (local i32 i32 i32 i32 i32 i32 i32 i32)
      global.get $__stack_pointer
      local.set 1
      i32.const 96
      local.set 2
      local.get 1
      local.get 2
      i32.sub
      local.set 3
      local.get 3
      local.get 0
      i32.store offset=36
      local.get 3
      local.get 0
      i32.store offset=40
      local.get 3
      local.get 0
      i32.store offset=44
      local.get 0
      i32.load offset=4
      local.set 4
      local.get 3
      local.get 4
      i32.store offset=48
      local.get 3
      local.get 4
      i32.store offset=52
      local.get 3
      local.get 4
      i32.store offset=56
      local.get 3
      local.get 4
      i32.store offset=60
      local.get 3
      local.get 4
      i32.store offset=12
      local.get 3
      i32.load offset=12
      local.set 5
      local.get 3
      local.get 5
      i32.store offset=64
      local.get 3
      local.get 5
      i32.store offset=68
      local.get 3
      local.get 5
      i32.store offset=72
      local.get 3
      local.get 5
      i32.store offset=76
      local.get 0
      i32.load offset=8
      local.set 6
      local.get 3
      local.get 6
      i32.store offset=80
      local.get 3
      local.get 4
      i32.store offset=84
      local.get 3
      local.get 4
      i32.store offset=88
      local.get 3
      local.get 6
      i32.store offset=92
      local.get 3
      local.get 4
      i32.store offset=24
      local.get 3
      local.get 6
      i32.store offset=28
      local.get 3
      i32.load offset=24
      local.set 7
      local.get 3
      i32.load offset=28
      local.set 8
      local.get 3
      local.get 7
      i32.store offset=16
      local.get 3
      local.get 8
      i32.store offset=20
      return
    )
    (func $_ZN4core3ptr53drop_in_place$LT$alloc..raw_vec..RawVec$LT$u8$GT$$GT$17h85806da3636f2937E (;56;) (type $.rodata) (param i32)
      (local i32 i32 i32 i32 i32)
      global.get $__stack_pointer
      local.set 1
      i32.const 16
      local.set 2
      local.get 1
      local.get 2
      i32.sub
      local.set 3
      local.get 3
      global.set $__stack_pointer
      local.get 3
      local.get 0
      i32.store offset=12
      local.get 0
      call $_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17habf1d715e801761cE
      i32.const 16
      local.set 4
      local.get 3
      local.get 4
      i32.add
      local.set 5
      local.get 5
      global.set $__stack_pointer
      return
    )
    (func $_ZN4core3ptr49drop_in_place$LT$alloc..string..FromUtf8Error$GT$17hf64261d96c034e41E (;57;) (type $.rodata) (param i32)
      (local i32 i32 i32 i32 i32 i32 i32)
      global.get $__stack_pointer
      local.set 1
      i32.const 16
      local.set 2
      local.get 1
      local.get 2
      i32.sub
      local.set 3
      local.get 3
      global.set $__stack_pointer
      local.get 3
      local.get 0
      i32.store offset=12
      i32.const 8
      local.set 4
      local.get 0
      local.get 4
      i32.add
      local.set 5
      local.get 5
      call $_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h12667835dabdaaa8E
      i32.const 16
      local.set 6
      local.get 3
      local.get 6
      i32.add
      local.set 7
      local.get 7
      global.set $__stack_pointer
      return
    )
    (func $_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17habf1d715e801761cE (;58;) (type $.rodata) (param i32)
      (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
      global.get $__stack_pointer
      local.set 1
      i32.const 32
      local.set 2
      local.get 1
      local.get 2
      i32.sub
      local.set 3
      local.get 3
      global.set $__stack_pointer
      local.get 3
      local.get 0
      i32.store offset=16
      local.get 3
      local.set 4
      local.get 4
      local.get 0
      call $_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14current_memory17hbe2934111be788d6E
      local.get 3
      i32.load offset=8
      local.set 5
      i32.const 0
      local.set 6
      i32.const 1
      local.set 7
      local.get 7
      local.get 6
      local.get 5
      select
      local.set 8
      i32.const 1
      local.set 9
      local.get 8
      local.set 10
      local.get 9
      local.set 11
      local.get 10
      local.get 11
      i32.eq
      local.set 12
      i32.const 1
      local.set 13
      local.get 12
      local.get 13
      i32.and
      local.set 14
      block ;; label = @1
        local.get 14
        i32.eqz
        br_if 0 (;@1;)
        local.get 3
        i32.load
        local.set 15
        local.get 3
        local.get 15
        i32.store offset=20
        local.get 3
        i32.load offset=4
        local.set 16
        local.get 3
        i32.load offset=8
        local.set 17
        local.get 3
        local.get 16
        i32.store offset=24
        local.get 3
        local.get 17
        i32.store offset=28
        local.get 0
        local.get 15
        local.get 16
        local.get 17
        call $_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17hc674ecc25cb7096bE
      end
      i32.const 32
      local.set 18
      local.get 3
      local.get 18
      i32.add
      local.set 19
      local.get 19
      global.set $__stack_pointer
      return
    )
    (func $_ZN5alloc5alloc6Global10alloc_impl17h4350428857aff7f4E (;59;) (type 10) (param i32 i32 i32 i32 i32)
      (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
      global.get $__stack_pointer
      local.set 5
      i32.const 208
      local.set 6
      local.get 5
      local.get 6
      i32.sub
      local.set 7
      local.get 7
      global.set $__stack_pointer
      local.get 7
      local.get 2
      i32.store offset=16
      local.get 7
      local.get 3
      i32.store offset=20
      local.get 7
      local.get 1
      i32.store offset=80
      local.get 4
      local.set 8
      local.get 7
      local.get 8
      i32.store8 offset=87
      i32.const 16
      local.set 9
      local.get 7
      local.get 9
      i32.add
      local.set 10
      local.get 10
      local.set 11
      local.get 7
      local.get 11
      i32.store offset=136
      local.get 7
      i32.load offset=16
      local.set 12
      block ;; label = @1
        block ;; label = @2
          block ;; label = @3
            local.get 12
            br_if 0 (;@3;)
            i32.const 16
            local.set 13
            local.get 7
            local.get 13
            i32.add
            local.set 14
            local.get 14
            local.set 15
            local.get 7
            local.get 15
            i32.store offset=184
            i32.const 16
            local.set 16
            local.get 7
            local.get 16
            i32.add
            local.set 17
            local.get 17
            local.set 18
            local.get 7
            local.get 18
            i32.store offset=188
            local.get 7
            i32.load offset=20
            local.set 19
            local.get 7
            local.get 19
            i32.store offset=192
            local.get 7
            local.get 19
            i32.store offset=68
            local.get 7
            i32.load offset=68
            local.set 20
            local.get 7
            local.get 20
            i32.store offset=196
            local.get 7
            local.get 20
            i32.store offset=200
            local.get 7
            i32.load offset=200
            local.set 21
            local.get 7
            local.get 21
            i32.store offset=204
            local.get 7
            local.get 21
            i32.store offset=32
            local.get 7
            i32.load offset=32
            local.set 22
            i32.const 0
            local.set 23
            local.get 7
            local.get 22
            local.get 23
            call $_ZN4core3ptr8non_null26NonNull$LT$$u5b$T$u5d$$GT$20slice_from_raw_parts17h276654dd5b1e06c0E
            local.get 7
            i32.load offset=4
            local.set 24
            local.get 7
            i32.load
            local.set 25
            local.get 7
            local.get 25
            i32.store offset=24
            local.get 7
            local.get 24
            i32.store offset=28
            br 1 (;@2;)
          end
          local.get 7
          local.get 12
          i32.store offset=140
          local.get 4
          local.set 26
          block ;; label = @3
            block ;; label = @4
              local.get 26
              br_if 0 (;@4;)
              local.get 7
              i32.load offset=16
              local.set 27
              local.get 7
              i32.load offset=20
              local.set 28
              local.get 7
              local.get 27
              i32.store offset=48
              local.get 7
              local.get 28
              i32.store offset=52
              i32.const 48
              local.set 29
              local.get 7
              local.get 29
              i32.add
              local.set 30
              local.get 30
              local.set 31
              local.get 7
              local.get 31
              i32.store offset=156
              local.get 7
              i32.load offset=48
              local.set 32
              i32.const 48
              local.set 33
              local.get 7
              local.get 33
              i32.add
              local.set 34
              local.get 34
              local.set 35
              local.get 7
              local.get 35
              i32.store offset=160
              local.get 7
              i32.load offset=52
              local.set 36
              local.get 7
              local.get 36
              i32.store offset=164
              local.get 7
              local.get 36
              i32.store offset=76
              local.get 7
              i32.load offset=76
              local.set 37
              local.get 32
              local.get 37
              call $__rust_alloc
              local.set 38
              local.get 7
              local.get 38
              i32.store offset=36
              br 1 (;@3;)
            end
            local.get 7
            i32.load offset=16
            local.set 39
            local.get 7
            i32.load offset=20
            local.set 40
            local.get 7
            local.get 39
            i32.store offset=40
            local.get 7
            local.get 40
            i32.store offset=44
            i32.const 40
            local.set 41
            local.get 7
            local.get 41
            i32.add
            local.set 42
            local.get 42
            local.set 43
            local.get 7
            local.get 43
            i32.store offset=144
            local.get 7
            i32.load offset=40
            local.set 44
            i32.const 40
            local.set 45
            local.get 7
            local.get 45
            i32.add
            local.set 46
            local.get 46
            local.set 47
            local.get 7
            local.get 47
            i32.store offset=148
            local.get 7
            i32.load offset=44
            local.set 48
            local.get 7
            local.get 48
            i32.store offset=152
            local.get 7
            local.get 48
            i32.store offset=72
            local.get 7
            i32.load offset=72
            local.set 49
            local.get 44
            local.get 49
            call $__rust_alloc_zeroed
            local.set 50
            local.get 7
            local.get 50
            i32.store offset=36
          end
          local.get 7
          i32.load offset=36
          local.set 51
          local.get 51
          call $_ZN4core3ptr8non_null16NonNull$LT$T$GT$3new17he182f8572bbba778E
          local.set 52
          local.get 7
          local.get 52
          i32.store offset=64
          local.get 7
          i32.load offset=64
          local.set 53
          i32.const 0
          local.set 54
          i32.const 1
          local.set 55
          local.get 55
          local.get 54
          local.get 53
          select
          local.set 56
          block ;; label = @3
            block ;; label = @4
              local.get 56
              br_if 0 (;@4;)
              i32.const 0
              local.set 57
              local.get 7
              local.get 57
              i32.store offset=60
              br 1 (;@3;)
            end
            local.get 7
            i32.load offset=64
            local.set 58
            local.get 7
            local.get 58
            i32.store offset=168
            local.get 7
            local.get 58
            i32.store offset=60
          end
          local.get 7
          i32.load offset=60
          local.set 59
          i32.const 1
          local.set 60
          i32.const 0
          local.set 61
          local.get 61
          local.get 60
          local.get 59
          select
          local.set 62
          block ;; label = @3
            block ;; label = @4
              local.get 62
              br_if 0 (;@4;)
              local.get 7
              i32.load offset=60
              local.set 63
              local.get 7
              local.get 63
              i32.store offset=172
              local.get 7
              local.get 63
              i32.store offset=56
              br 1 (;@3;)
            end
            i32.const 0
            local.set 64
            local.get 7
            local.get 64
            i32.store offset=56
          end
          local.get 7
          i32.load offset=56
          local.set 65
          i32.const 1
          local.set 66
          i32.const 0
          local.set 67
          local.get 67
          local.get 66
          local.get 65
          select
          local.set 68
          block ;; label = @3
            local.get 68
            br_if 0 (;@3;)
            local.get 7
            i32.load offset=56
            local.set 69
            local.get 7
            local.get 69
            i32.store offset=176
            local.get 7
            local.get 69
            i32.store offset=180
            i32.const 8
            local.set 70
            local.get 7
            local.get 70
            i32.add
            local.set 71
            local.get 71
            local.get 69
            local.get 12
            call $_ZN4core3ptr8non_null26NonNull$LT$$u5b$T$u5d$$GT$20slice_from_raw_parts17h276654dd5b1e06c0E
            local.get 7
            i32.load offset=12
            local.set 72
            local.get 7
            i32.load offset=8
            local.set 73
            local.get 7
            local.get 73
            i32.store offset=24
            local.get 7
            local.get 72
            i32.store offset=28
            br 1 (;@2;)
          end
          i32.const 0
          local.set 74
          local.get 7
          local.get 74
          i32.store offset=24
          br 1 (;@1;)
        end
      end
      local.get 7
      i32.load offset=24
      local.set 75
      local.get 7
      i32.load offset=28
      local.set 76
      local.get 0
      local.get 76
      i32.store offset=4
      local.get 0
      local.get 75
      i32.store
      i32.const 208
      local.set 77
      local.get 7
      local.get 77
      i32.add
      local.set 78
      local.get 78
      global.set $__stack_pointer
      return
    )
    (func $_ZN5alloc5alloc6Global9grow_impl17ha6fd31cd0224c424E (;60;) (type 11) (param i32 i32 i32 i32 i32 i32 i32 i32)
      (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
      global.get $__stack_pointer
      local.set 8
      i32.const 416
      local.set 9
      local.get 8
      local.get 9
      i32.sub
      local.set 10
      local.get 10
      global.set $__stack_pointer
      local.get 10
      local.get 3
      i32.store offset=32
      local.get 10
      local.get 4
      i32.store offset=36
      local.get 10
      local.get 5
      i32.store offset=40
      local.get 10
      local.get 6
      i32.store offset=44
      local.get 10
      local.get 1
      i32.store offset=116
      local.get 10
      local.get 2
      i32.store offset=120
      local.get 7
      local.set 11
      local.get 10
      local.get 11
      i32.store8 offset=127
      i32.const 32
      local.set 12
      local.get 10
      local.get 12
      i32.add
      local.set 13
      local.get 13
      local.set 14
      local.get 10
      local.get 14
      i32.store offset=216
      local.get 10
      i32.load offset=32
      local.set 15
      block ;; label = @1
        block ;; label = @2
          block ;; label = @3
            block ;; label = @4
              local.get 15
              br_if 0 (;@4;)
              local.get 10
              i32.load offset=40
              local.set 16
              local.get 10
              i32.load offset=44
              local.set 17
              i32.const 1
              local.set 18
              local.get 7
              local.get 18
              i32.and
              local.set 19
              i32.const 8
              local.set 20
              local.get 10
              local.get 20
              i32.add
              local.set 21
              local.get 21
              local.get 1
              local.get 16
              local.get 17
              local.get 19
              call $_ZN5alloc5alloc6Global10alloc_impl17h4350428857aff7f4E
              local.get 10
              i32.load offset=8
              local.set 22
              local.get 10
              i32.load offset=12
              local.set 23
              local.get 10
              local.get 23
              i32.store offset=52
              local.get 10
              local.get 22
              i32.store offset=48
              br 1 (;@3;)
            end
            i32.const 32
            local.set 24
            local.get 10
            local.get 24
            i32.add
            local.set 25
            local.get 25
            local.set 26
            local.get 10
            local.get 26
            i32.store offset=220
            local.get 10
            i32.load offset=36
            local.set 27
            local.get 10
            local.get 27
            i32.store offset=224
            local.get 10
            local.get 27
            i32.store offset=100
            local.get 10
            i32.load offset=100
            local.set 28
            i32.const 40
            local.set 29
            local.get 10
            local.get 29
            i32.add
            local.set 30
            local.get 30
            local.set 31
            local.get 10
            local.get 31
            i32.store offset=228
            local.get 10
            i32.load offset=44
            local.set 32
            local.get 10
            local.get 32
            i32.store offset=232
            local.get 10
            local.get 32
            i32.store offset=104
            local.get 10
            i32.load offset=104
            local.set 33
            local.get 28
            local.set 34
            local.get 33
            local.set 35
            local.get 34
            local.get 35
            i32.eq
            local.set 36
            i32.const 1
            local.set 37
            local.get 36
            local.get 37
            i32.and
            local.set 38
            block ;; label = @4
              block ;; label = @5
                block ;; label = @6
                  block ;; label = @7
                    block ;; label = @8
                      local.get 38
                      br_if 0 (;@8;)
                      local.get 10
                      local.get 15
                      i32.store offset=332
                      local.get 10
                      i32.load offset=40
                      local.set 39
                      local.get 10
                      i32.load offset=44
                      local.set 40
                      i32.const 1
                      local.set 41
                      local.get 7
                      local.get 41
                      i32.and
                      local.set 42
                      i32.const 24
                      local.set 43
                      local.get 10
                      local.get 43
                      i32.add
                      local.set 44
                      local.get 44
                      local.get 1
                      local.get 39
                      local.get 40
                      local.get 42
                      call $_ZN5alloc5alloc6Global10alloc_impl17h4350428857aff7f4E
                      local.get 10
                      i32.load offset=24
                      local.set 45
                      local.get 10
                      i32.load offset=28
                      local.set 46
                      local.get 10
                      local.get 46
                      i32.store offset=92
                      local.get 10
                      local.get 45
                      i32.store offset=88
                      local.get 10
                      i32.load offset=88
                      local.set 47
                      i32.const 1
                      local.set 48
                      i32.const 0
                      local.set 49
                      local.get 49
                      local.get 48
                      local.get 47
                      select
                      local.set 50
                      local.get 50
                      i32.eqz
                      br_if 1 (;@7;)
                      br 2 (;@6;)
                    end
                    local.get 10
                    local.get 15
                    i32.store offset=236
                    i32.const 40
                    local.set 51
                    local.get 10
                    local.get 51
                    i32.add
                    local.set 52
                    local.get 52
                    local.set 53
                    local.get 10
                    local.get 53
                    i32.store offset=240
                    local.get 10
                    i32.load offset=40
                    local.set 54
                    local.get 10
                    local.get 54
                    i32.store offset=244
                    i32.const 32
                    local.set 55
                    local.get 10
                    local.get 55
                    i32.add
                    local.set 56
                    local.get 56
                    local.set 57
                    local.get 10
                    local.get 57
                    i32.store offset=248
                    local.get 10
                    local.get 2
                    i32.store offset=252
                    local.get 10
                    local.get 2
                    i32.store offset=256
                    local.get 10
                    i32.load offset=32
                    local.set 58
                    local.get 10
                    i32.load offset=36
                    local.set 59
                    local.get 10
                    local.get 58
                    i32.store offset=56
                    local.get 10
                    local.get 59
                    i32.store offset=60
                    local.get 10
                    local.get 54
                    i32.store offset=260
                    i32.const 56
                    local.set 60
                    local.get 10
                    local.get 60
                    i32.add
                    local.set 61
                    local.get 61
                    local.set 62
                    local.get 10
                    local.get 62
                    i32.store offset=264
                    local.get 10
                    i32.load offset=56
                    local.set 63
                    i32.const 56
                    local.set 64
                    local.get 10
                    local.get 64
                    i32.add
                    local.set 65
                    local.get 65
                    local.set 66
                    local.get 10
                    local.get 66
                    i32.store offset=268
                    local.get 10
                    i32.load offset=60
                    local.set 67
                    local.get 10
                    local.get 67
                    i32.store offset=272
                    local.get 10
                    local.get 67
                    i32.store offset=108
                    local.get 10
                    i32.load offset=108
                    local.set 68
                    local.get 2
                    local.get 63
                    local.get 68
                    local.get 54
                    call $__rust_realloc
                    local.set 69
                    local.get 10
                    local.get 69
                    i32.store offset=276
                    local.get 69
                    call $_ZN4core3ptr8non_null16NonNull$LT$T$GT$3new17he182f8572bbba778E
                    local.set 70
                    local.get 10
                    local.get 70
                    i32.store offset=76
                    local.get 10
                    i32.load offset=76
                    local.set 71
                    i32.const 0
                    local.set 72
                    i32.const 1
                    local.set 73
                    local.get 73
                    local.get 72
                    local.get 71
                    select
                    local.set 74
                    block ;; label = @8
                      block ;; label = @9
                        local.get 74
                        br_if 0 (;@9;)
                        i32.const 0
                        local.set 75
                        local.get 10
                        local.get 75
                        i32.store offset=72
                        br 1 (;@8;)
                      end
                      local.get 10
                      i32.load offset=76
                      local.set 76
                      local.get 10
                      local.get 76
                      i32.store offset=280
                      local.get 10
                      local.get 76
                      i32.store offset=72
                    end
                    local.get 10
                    i32.load offset=72
                    local.set 77
                    i32.const 1
                    local.set 78
                    i32.const 0
                    local.set 79
                    local.get 79
                    local.get 78
                    local.get 77
                    select
                    local.set 80
                    block ;; label = @8
                      block ;; label = @9
                        local.get 80
                        br_if 0 (;@9;)
                        local.get 10
                        i32.load offset=72
                        local.set 81
                        local.get 10
                        local.get 81
                        i32.store offset=284
                        local.get 10
                        local.get 81
                        i32.store offset=68
                        br 1 (;@8;)
                      end
                      i32.const 0
                      local.set 82
                      local.get 10
                      local.get 82
                      i32.store offset=68
                    end
                    local.get 10
                    i32.load offset=68
                    local.set 83
                    i32.const 1
                    local.set 84
                    i32.const 0
                    local.set 85
                    local.get 85
                    local.get 84
                    local.get 83
                    select
                    local.set 86
                    block ;; label = @8
                      block ;; label = @9
                        local.get 86
                        br_if 0 (;@9;)
                        local.get 10
                        i32.load offset=68
                        local.set 87
                        local.get 10
                        local.get 87
                        i32.store offset=288
                        local.get 10
                        local.get 87
                        i32.store offset=292
                        local.get 7
                        local.set 88
                        local.get 88
                        br_if 1 (;@8;)
                        br 5 (;@4;)
                      end
                      i32.const 0
                      local.set 89
                      local.get 10
                      local.get 89
                      i32.store offset=48
                      br 6 (;@2;)
                    end
                    local.get 10
                    local.get 69
                    i32.store offset=296
                    local.get 10
                    local.get 15
                    i32.store offset=300
                    local.get 10
                    local.get 69
                    i32.store offset=304
                    local.get 10
                    local.get 15
                    i32.store offset=308
                    local.get 69
                    local.get 15
                    i32.add
                    local.set 90
                    local.get 10
                    local.get 90
                    i32.store offset=312
                    local.get 10
                    i32.load offset=312
                    local.set 91
                    local.get 10
                    local.get 91
                    i32.store offset=316
                    local.get 54
                    local.get 15
                    i32.sub
                    local.set 92
                    local.get 10
                    local.get 92
                    i32.store offset=320
                    local.get 10
                    local.get 91
                    i32.store offset=324
                    local.get 10
                    local.get 92
                    i32.store offset=328
                    i32.const 0
                    local.set 93
                    local.get 92
                    local.get 93
                    i32.shl
                    local.set 94
                    i32.const 0
                    local.set 95
                    local.get 91
                    local.get 95
                    local.get 94
                    call $memset
                    drop
                    br 3 (;@4;)
                  end
                  local.get 10
                  i32.load offset=88
                  local.set 96
                  local.get 10
                  i32.load offset=92
                  local.set 97
                  local.get 10
                  local.get 96
                  i32.store offset=336
                  local.get 10
                  local.get 97
                  i32.store offset=340
                  local.get 10
                  local.get 96
                  i32.store offset=80
                  local.get 10
                  local.get 97
                  i32.store offset=84
                  br 1 (;@5;)
                end
                i32.const 0
                local.set 98
                local.get 10
                local.get 98
                i32.store offset=80
              end
              local.get 10
              i32.load offset=80
              local.set 99
              i32.const 1
              local.set 100
              i32.const 0
              local.set 101
              local.get 101
              local.get 100
              local.get 99
              select
              local.set 102
              block ;; label = @5
                local.get 102
                br_if 0 (;@5;)
                local.get 10
                i32.load offset=80
                local.set 103
                local.get 10
                i32.load offset=84
                local.set 104
                local.get 10
                local.get 103
                i32.store offset=344
                local.get 10
                local.get 104
                i32.store offset=348
                local.get 10
                local.get 103
                i32.store offset=352
                local.get 10
                local.get 104
                i32.store offset=356
                local.get 10
                local.get 2
                i32.store offset=360
                local.get 10
                local.get 2
                i32.store offset=364
                local.get 10
                local.get 103
                i32.store offset=368
                local.get 10
                local.get 104
                i32.store offset=372
                local.get 10
                local.get 103
                i32.store offset=376
                local.get 10
                local.get 104
                i32.store offset=380
                local.get 10
                local.get 103
                i32.store offset=384
                local.get 10
                local.get 104
                i32.store offset=388
                local.get 10
                local.get 103
                i32.store offset=392
                local.get 10
                local.get 104
                i32.store offset=396
                local.get 10
                local.get 103
                i32.store offset=404
                local.get 10
                local.get 103
                i32.store offset=112
                local.get 10
                i32.load offset=112
                local.set 105
                local.get 10
                local.get 105
                i32.store offset=408
                local.get 10
                local.get 15
                i32.store offset=412
                i32.const 0
                local.set 106
                local.get 15
                local.get 106
                i32.shl
                local.set 107
                local.get 105
                local.get 2
                local.get 107
                call $memcpy
                drop
                local.get 10
                i32.load offset=32
                local.set 108
                local.get 10
                i32.load offset=36
                local.set 109
                local.get 1
                local.get 2
                local.get 108
                local.get 109
                call $_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17hc674ecc25cb7096bE
                local.get 10
                local.get 103
                i32.store offset=48
                local.get 10
                local.get 104
                i32.store offset=52
                br 2 (;@3;)
              end
              i32.const 0
              local.set 110
              local.get 10
              local.get 110
              i32.store offset=48
              br 2 (;@2;)
            end
            i32.const 16
            local.set 111
            local.get 10
            local.get 111
            i32.add
            local.set 112
            local.get 112
            local.get 87
            local.get 54
            call $_ZN4core3ptr8non_null26NonNull$LT$$u5b$T$u5d$$GT$20slice_from_raw_parts17h276654dd5b1e06c0E
            local.get 10
            i32.load offset=20
            local.set 113
            local.get 10
            i32.load offset=16
            local.set 114
            local.get 10
            local.get 114
            i32.store offset=48
            local.get 10
            local.get 113
            i32.store offset=52
          end
          br 1 (;@1;)
        end
      end
      local.get 10
      i32.load offset=48
      local.set 115
      local.get 10
      i32.load offset=52
      local.set 116
      local.get 0
      local.get 116
      i32.store offset=4
      local.get 0
      local.get 115
      i32.store
      i32.const 416
      local.set 117
      local.get 10
      local.get 117
      i32.add
      local.set 118
      local.get 118
      global.set $__stack_pointer
      return
    )
    (func $_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17hc674ecc25cb7096bE (;61;) (type 8) (param i32 i32 i32 i32)
      (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
      global.get $__stack_pointer
      local.set 4
      i32.const 64
      local.set 5
      local.get 4
      local.get 5
      i32.sub
      local.set 6
      local.get 6
      global.set $__stack_pointer
      local.get 6
      local.get 2
      i32.store offset=8
      local.get 6
      local.get 3
      i32.store offset=12
      local.get 6
      local.get 0
      i32.store offset=32
      local.get 6
      local.get 1
      i32.store offset=36
      i32.const 8
      local.set 7
      local.get 6
      local.get 7
      i32.add
      local.set 8
      local.get 8
      local.set 9
      local.get 6
      local.get 9
      i32.store offset=40
      local.get 6
      i32.load offset=8
      local.set 10
      block ;; label = @1
        block ;; label = @2
          local.get 10
          br_if 0 (;@2;)
          br 1 (;@1;)
        end
        local.get 6
        local.get 1
        i32.store offset=44
        local.get 6
        local.get 1
        i32.store offset=48
        local.get 6
        i32.load offset=8
        local.set 11
        local.get 6
        i32.load offset=12
        local.set 12
        local.get 6
        local.get 11
        i32.store offset=16
        local.get 6
        local.get 12
        i32.store offset=20
        i32.const 16
        local.set 13
        local.get 6
        local.get 13
        i32.add
        local.set 14
        local.get 14
        local.set 15
        local.get 6
        local.get 15
        i32.store offset=52
        local.get 6
        i32.load offset=16
        local.set 16
        i32.const 16
        local.set 17
        local.get 6
        local.get 17
        i32.add
        local.set 18
        local.get 18
        local.set 19
        local.get 6
        local.get 19
        i32.store offset=56
        local.get 6
        i32.load offset=20
        local.set 20
        local.get 6
        local.get 20
        i32.store offset=60
        local.get 6
        local.get 20
        i32.store offset=28
        local.get 6
        i32.load offset=28
        local.set 21
        local.get 1
        local.get 16
        local.get 21
        call $__rust_dealloc
      end
      i32.const 64
      local.set 22
      local.get 6
      local.get 22
      i32.add
      local.set 23
      local.get 23
      global.set $__stack_pointer
      return
    )
    (func $_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$4grow17h207fd6293b58cb93E (;62;) (type 12) (param i32 i32 i32 i32 i32 i32 i32)
      (local i32 i32 i32 i32 i32 i32 i32 i32)
      global.get $__stack_pointer
      local.set 7
      i32.const 32
      local.set 8
      local.get 7
      local.get 8
      i32.sub
      local.set 9
      local.get 9
      global.set $__stack_pointer
      local.get 9
      local.get 1
      i32.store offset=8
      local.get 9
      local.get 2
      i32.store offset=12
      local.get 9
      local.get 3
      i32.store offset=16
      local.get 9
      local.get 4
      i32.store offset=20
      local.get 9
      local.get 5
      i32.store offset=24
      local.get 9
      local.get 6
      i32.store offset=28
      i32.const 0
      local.set 10
      local.get 9
      local.get 1
      local.get 2
      local.get 3
      local.get 4
      local.get 5
      local.get 6
      local.get 10
      call $_ZN5alloc5alloc6Global9grow_impl17ha6fd31cd0224c424E
      local.get 9
      i32.load
      local.set 11
      local.get 9
      i32.load offset=4
      local.set 12
      local.get 0
      local.get 12
      i32.store offset=4
      local.get 0
      local.get 11
      i32.store
      i32.const 32
      local.set 13
      local.get 9
      local.get 13
      i32.add
      local.set 14
      local.get 14
      global.set $__stack_pointer
      return
    )
    (func $_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$6shrink17hfc84431e0fec6f68E (;63;) (type 12) (param i32 i32 i32 i32 i32 i32 i32)
      (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
      global.get $__stack_pointer
      local.set 7
      i32.const 416
      local.set 8
      local.get 7
      local.get 8
      i32.sub
      local.set 9
      local.get 9
      global.set $__stack_pointer
      local.get 9
      local.get 3
      i32.store offset=32
      local.get 9
      local.get 4
      i32.store offset=36
      local.get 9
      local.get 5
      i32.store offset=40
      local.get 9
      local.get 6
      i32.store offset=44
      local.get 9
      local.get 1
      i32.store offset=128
      local.get 9
      local.get 2
      i32.store offset=132
      i32.const 40
      local.set 10
      local.get 9
      local.get 10
      i32.add
      local.set 11
      local.get 11
      local.set 12
      local.get 9
      local.get 12
      i32.store offset=224
      local.get 9
      i32.load offset=40
      local.set 13
      block ;; label = @1
        block ;; label = @2
          block ;; label = @3
            block ;; label = @4
              local.get 13
              br_if 0 (;@4;)
              local.get 9
              i32.load offset=32
              local.set 14
              local.get 9
              i32.load offset=36
              local.set 15
              local.get 1
              local.get 2
              local.get 14
              local.get 15
              call $_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17hc674ecc25cb7096bE
              i32.const 40
              local.set 16
              local.get 9
              local.get 16
              i32.add
              local.set 17
              local.get 17
              local.set 18
              local.get 9
              local.get 18
              i32.store offset=392
              i32.const 40
              local.set 19
              local.get 9
              local.get 19
              i32.add
              local.set 20
              local.get 20
              local.set 21
              local.get 9
              local.get 21
              i32.store offset=396
              local.get 9
              i32.load offset=44
              local.set 22
              local.get 9
              local.get 22
              i32.store offset=400
              local.get 9
              local.get 22
              i32.store offset=108
              local.get 9
              i32.load offset=108
              local.set 23
              local.get 9
              local.get 23
              i32.store offset=404
              local.get 9
              local.get 23
              i32.store offset=408
              local.get 9
              i32.load offset=408
              local.set 24
              local.get 9
              local.get 24
              i32.store offset=412
              local.get 9
              local.get 24
              i32.store offset=60
              local.get 9
              i32.load offset=60
              local.set 25
              i32.const 0
              local.set 26
              i32.const 8
              local.set 27
              local.get 9
              local.get 27
              i32.add
              local.set 28
              local.get 28
              local.get 25
              local.get 26
              call $_ZN4core3ptr8non_null26NonNull$LT$$u5b$T$u5d$$GT$20slice_from_raw_parts17h276654dd5b1e06c0E
              local.get 9
              i32.load offset=12
              local.set 29
              local.get 9
              i32.load offset=8
              local.set 30
              local.get 9
              local.get 30
              i32.store offset=48
              local.get 9
              local.get 29
              i32.store offset=52
              br 1 (;@3;)
            end
            i32.const 32
            local.set 31
            local.get 9
            local.get 31
            i32.add
            local.set 32
            local.get 32
            local.set 33
            local.get 9
            local.get 33
            i32.store offset=228
            local.get 9
            i32.load offset=36
            local.set 34
            local.get 9
            local.get 34
            i32.store offset=232
            local.get 9
            local.get 34
            i32.store offset=112
            local.get 9
            i32.load offset=112
            local.set 35
            i32.const 40
            local.set 36
            local.get 9
            local.get 36
            i32.add
            local.set 37
            local.get 37
            local.set 38
            local.get 9
            local.get 38
            i32.store offset=236
            local.get 9
            i32.load offset=44
            local.set 39
            local.get 9
            local.get 39
            i32.store offset=240
            local.get 9
            local.get 39
            i32.store offset=116
            local.get 9
            i32.load offset=116
            local.set 40
            local.get 35
            local.set 41
            local.get 40
            local.set 42
            local.get 41
            local.get 42
            i32.eq
            local.set 43
            i32.const 1
            local.set 44
            local.get 43
            local.get 44
            i32.and
            local.set 45
            block ;; label = @4
              block ;; label = @5
                block ;; label = @6
                  block ;; label = @7
                    local.get 45
                    br_if 0 (;@7;)
                    local.get 9
                    local.get 13
                    i32.store offset=296
                    local.get 9
                    local.get 1
                    i32.store offset=300
                    local.get 9
                    i32.load offset=40
                    local.set 46
                    local.get 9
                    i32.load offset=44
                    local.set 47
                    local.get 9
                    local.get 46
                    i32.store offset=304
                    local.get 9
                    local.get 47
                    i32.store offset=308
                    i32.const 0
                    local.set 48
                    i32.const 24
                    local.set 49
                    local.get 9
                    local.get 49
                    i32.add
                    local.set 50
                    local.get 50
                    local.get 1
                    local.get 46
                    local.get 47
                    local.get 48
                    call $_ZN5alloc5alloc6Global10alloc_impl17h4350428857aff7f4E
                    local.get 9
                    i32.load offset=24
                    local.set 51
                    local.get 9
                    i32.load offset=28
                    local.set 52
                    local.get 9
                    local.get 52
                    i32.store offset=100
                    local.get 9
                    local.get 51
                    i32.store offset=96
                    local.get 9
                    i32.load offset=96
                    local.set 53
                    i32.const 1
                    local.set 54
                    i32.const 0
                    local.set 55
                    local.get 55
                    local.get 54
                    local.get 53
                    select
                    local.set 56
                    local.get 56
                    i32.eqz
                    br_if 1 (;@6;)
                    br 2 (;@5;)
                  end
                  local.get 9
                  local.get 13
                  i32.store offset=244
                  i32.const 32
                  local.set 57
                  local.get 9
                  local.get 57
                  i32.add
                  local.set 58
                  local.get 58
                  local.set 59
                  local.get 9
                  local.get 59
                  i32.store offset=248
                  local.get 9
                  local.get 2
                  i32.store offset=252
                  local.get 9
                  local.get 2
                  i32.store offset=256
                  local.get 9
                  i32.load offset=32
                  local.set 60
                  local.get 9
                  i32.load offset=36
                  local.set 61
                  local.get 9
                  local.get 60
                  i32.store offset=64
                  local.get 9
                  local.get 61
                  i32.store offset=68
                  local.get 9
                  local.get 13
                  i32.store offset=260
                  i32.const 64
                  local.set 62
                  local.get 9
                  local.get 62
                  i32.add
                  local.set 63
                  local.get 63
                  local.set 64
                  local.get 9
                  local.get 64
                  i32.store offset=264
                  local.get 9
                  i32.load offset=64
                  local.set 65
                  i32.const 64
                  local.set 66
                  local.get 9
                  local.get 66
                  i32.add
                  local.set 67
                  local.get 67
                  local.set 68
                  local.get 9
                  local.get 68
                  i32.store offset=268
                  local.get 9
                  i32.load offset=68
                  local.set 69
                  local.get 9
                  local.get 69
                  i32.store offset=272
                  local.get 9
                  local.get 69
                  i32.store offset=120
                  local.get 9
                  i32.load offset=120
                  local.set 70
                  local.get 2
                  local.get 65
                  local.get 70
                  local.get 13
                  call $__rust_realloc
                  local.set 71
                  local.get 9
                  local.get 71
                  i32.store offset=276
                  local.get 71
                  call $_ZN4core3ptr8non_null16NonNull$LT$T$GT$3new17he182f8572bbba778E
                  local.set 72
                  local.get 9
                  local.get 72
                  i32.store offset=84
                  local.get 9
                  i32.load offset=84
                  local.set 73
                  i32.const 0
                  local.set 74
                  i32.const 1
                  local.set 75
                  local.get 75
                  local.get 74
                  local.get 73
                  select
                  local.set 76
                  block ;; label = @7
                    block ;; label = @8
                      local.get 76
                      br_if 0 (;@8;)
                      i32.const 0
                      local.set 77
                      local.get 9
                      local.get 77
                      i32.store offset=80
                      br 1 (;@7;)
                    end
                    local.get 9
                    i32.load offset=84
                    local.set 78
                    local.get 9
                    local.get 78
                    i32.store offset=280
                    local.get 9
                    local.get 78
                    i32.store offset=80
                  end
                  local.get 9
                  i32.load offset=80
                  local.set 79
                  i32.const 1
                  local.set 80
                  i32.const 0
                  local.set 81
                  local.get 81
                  local.get 80
                  local.get 79
                  select
                  local.set 82
                  block ;; label = @7
                    block ;; label = @8
                      local.get 82
                      br_if 0 (;@8;)
                      local.get 9
                      i32.load offset=80
                      local.set 83
                      local.get 9
                      local.get 83
                      i32.store offset=284
                      local.get 9
                      local.get 83
                      i32.store offset=76
                      br 1 (;@7;)
                    end
                    i32.const 0
                    local.set 84
                    local.get 9
                    local.get 84
                    i32.store offset=76
                  end
                  local.get 9
                  i32.load offset=76
                  local.set 85
                  i32.const 1
                  local.set 86
                  i32.const 0
                  local.set 87
                  local.get 87
                  local.get 86
                  local.get 85
                  select
                  local.set 88
                  block ;; label = @7
                    local.get 88
                    br_if 0 (;@7;)
                    local.get 9
                    i32.load offset=76
                    local.set 89
                    local.get 9
                    local.get 89
                    i32.store offset=288
                    local.get 9
                    local.get 89
                    i32.store offset=292
                    i32.const 16
                    local.set 90
                    local.get 9
                    local.get 90
                    i32.add
                    local.set 91
                    local.get 91
                    local.get 89
                    local.get 13
                    call $_ZN4core3ptr8non_null26NonNull$LT$$u5b$T$u5d$$GT$20slice_from_raw_parts17h276654dd5b1e06c0E
                    local.get 9
                    i32.load offset=20
                    local.set 92
                    local.get 9
                    i32.load offset=16
                    local.set 93
                    local.get 9
                    local.get 93
                    i32.store offset=48
                    local.get 9
                    local.get 92
                    i32.store offset=52
                    br 4 (;@3;)
                  end
                  i32.const 0
                  local.set 94
                  local.get 9
                  local.get 94
                  i32.store offset=48
                  br 4 (;@2;)
                end
                local.get 9
                i32.load offset=96
                local.set 95
                local.get 9
                i32.load offset=100
                local.set 96
                local.get 9
                local.get 95
                i32.store offset=312
                local.get 9
                local.get 96
                i32.store offset=316
                local.get 9
                local.get 95
                i32.store offset=88
                local.get 9
                local.get 96
                i32.store offset=92
                br 1 (;@4;)
              end
              i32.const 0
              local.set 97
              local.get 9
              local.get 97
              i32.store offset=88
            end
            local.get 9
            i32.load offset=88
            local.set 98
            i32.const 1
            local.set 99
            i32.const 0
            local.set 100
            local.get 100
            local.get 99
            local.get 98
            select
            local.set 101
            block ;; label = @4
              local.get 101
              br_if 0 (;@4;)
              local.get 9
              i32.load offset=88
              local.set 102
              local.get 9
              i32.load offset=92
              local.set 103
              local.get 9
              local.get 102
              i32.store offset=320
              local.get 9
              local.get 103
              i32.store offset=324
              local.get 9
              local.get 102
              i32.store offset=328
              local.get 9
              local.get 103
              i32.store offset=332
              local.get 9
              local.get 2
              i32.store offset=336
              local.get 9
              local.get 2
              i32.store offset=340
              local.get 9
              local.get 102
              i32.store offset=344
              local.get 9
              local.get 103
              i32.store offset=348
              local.get 9
              local.get 102
              i32.store offset=352
              local.get 9
              local.get 103
              i32.store offset=356
              local.get 9
              local.get 102
              i32.store offset=360
              local.get 9
              local.get 103
              i32.store offset=364
              local.get 9
              local.get 102
              i32.store offset=368
              local.get 9
              local.get 103
              i32.store offset=372
              local.get 9
              local.get 102
              i32.store offset=380
              local.get 9
              local.get 102
              i32.store offset=124
              local.get 9
              i32.load offset=124
              local.set 104
              local.get 9
              local.get 104
              i32.store offset=384
              local.get 9
              local.get 13
              i32.store offset=388
              i32.const 0
              local.set 105
              local.get 13
              local.get 105
              i32.shl
              local.set 106
              local.get 104
              local.get 2
              local.get 106
              call $memcpy
              drop
              local.get 9
              i32.load offset=32
              local.set 107
              local.get 9
              i32.load offset=36
              local.set 108
              local.get 1
              local.get 2
              local.get 107
              local.get 108
              call $_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17hc674ecc25cb7096bE
              local.get 9
              local.get 102
              i32.store offset=48
              local.get 9
              local.get 103
              i32.store offset=52
              br 1 (;@3;)
            end
            i32.const 0
            local.set 109
            local.get 9
            local.get 109
            i32.store offset=48
            br 1 (;@2;)
          end
          br 1 (;@1;)
        end
      end
      local.get 9
      i32.load offset=48
      local.set 110
      local.get 9
      i32.load offset=52
      local.set 111
      local.get 0
      local.get 111
      i32.store offset=4
      local.get 0
      local.get 110
      i32.store
      i32.const 416
      local.set 112
      local.get 9
      local.get 112
      i32.add
      local.set 113
      local.get 113
      global.set $__stack_pointer
      return
    )
    (func $_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17hde425df125e61a59E (;64;) (type 8) (param i32 i32 i32 i32)
      (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
      global.get $__stack_pointer
      local.set 4
      i32.const 32
      local.set 5
      local.get 4
      local.get 5
      i32.sub
      local.set 6
      local.get 6
      global.set $__stack_pointer
      local.get 6
      local.get 1
      i32.store offset=20
      local.get 6
      local.get 2
      i32.store offset=24
      local.get 6
      local.get 3
      i32.store offset=28
      i32.const 0
      local.set 7
      i32.const 8
      local.set 8
      local.get 6
      local.get 8
      i32.add
      local.set 9
      local.get 9
      local.get 1
      local.get 2
      local.get 3
      local.get 7
      call $_ZN5alloc5alloc6Global10alloc_impl17h4350428857aff7f4E
      local.get 6
      i32.load offset=8
      local.set 10
      local.get 6
      i32.load offset=12
      local.set 11
      local.get 0
      local.get 11
      i32.store offset=4
      local.get 0
      local.get 10
      i32.store
      i32.const 32
      local.set 12
      local.get 6
      local.get 12
      i32.add
      local.set 13
      local.get 13
      global.set $__stack_pointer
      return
    )
    (func $_ZN16wit_sample_guest17call_gen_response17h103b6b6e28f3fe74E (;65;) (type 5) (param i32 i32) (result i32)
      (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i32 i32 i32 i32 i32 i32 i32 i32 i64 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
      global.get $__stack_pointer
      local.set 2
      i32.const 176
      local.set 3
      local.get 2
      local.get 3
      i32.sub
      local.set 4
      local.get 4
      global.set $__stack_pointer
      local.get 4
      local.get 0
      i32.store offset=128
      local.get 4
      local.get 1
      i32.store offset=132
      call $_ZN11wit_bindgen2rt14run_ctors_once17hae39d9dbe5432f72E
      local.get 4
      local.get 1
      i32.store offset=136
      i32.const 64
      local.set 5
      local.get 4
      local.get 5
      i32.add
      local.set 6
      local.get 6
      local.set 7
      local.get 7
      local.get 0
      local.get 1
      local.get 1
      call $_ZN5alloc3vec12Vec$LT$T$GT$14from_raw_parts17h5a0942210df77500E
      i32.const 40
      local.set 8
      local.get 4
      local.get 8
      i32.add
      local.set 9
      local.get 9
      local.set 10
      i32.const 64
      local.set 11
      local.get 4
      local.get 11
      i32.add
      local.set 12
      local.get 12
      local.set 13
      local.get 10
      local.get 13
      call $_ZN5alloc6string6String9from_utf817h5a7815c5bccf9738E
      i32.const 24
      local.set 14
      local.get 4
      local.get 14
      i32.add
      local.set 15
      local.get 15
      local.set 16
      i32.const 40
      local.set 17
      local.get 4
      local.get 17
      i32.add
      local.set 18
      local.get 18
      local.set 19
      i32.const 1048980
      local.set 20
      local.get 16
      local.get 19
      local.get 20
      call $_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h570e78b07ccc88f4E
      i32.const 8
      local.set 21
      local.get 4
      local.get 21
      i32.add
      local.set 22
      local.get 22
      local.set 23
      i32.const 24
      local.set 24
      local.get 4
      local.get 24
      i32.add
      local.set 25
      local.get 25
      local.set 26
      local.get 23
      local.get 26
      call $_ZN78_$LT$wit_sample_guest..Responder$u20$as$u20$wit_sample_guest..SamplePlugin$GT$12gen_response17h74b3f8a895d40981E
      i32.const 1053024
      local.set 27
      local.get 4
      local.get 27
      i32.store offset=160
      i32.const 8
      local.set 28
      local.get 4
      local.get 28
      i32.store offset=164
      i32.const 1053024
      local.set 29
      local.get 4
      local.get 29
      i32.store offset=140
      i32.const 8
      local.set 30
      i32.const 80
      local.set 31
      local.get 4
      local.get 31
      i32.add
      local.set 32
      local.get 32
      local.get 30
      i32.add
      local.set 33
      i32.const 8
      local.set 34
      local.get 4
      local.get 34
      i32.add
      local.set 35
      local.get 35
      local.get 30
      i32.add
      local.set 36
      local.get 36
      i32.load
      local.set 37
      local.get 33
      local.get 37
      i32.store
      local.get 4
      i64.load offset=8
      local.set 38
      local.get 4
      local.get 38
      i64.store offset=80
      i32.const 8
      local.set 39
      i32.const 112
      local.set 40
      local.get 4
      local.get 40
      i32.add
      local.set 41
      local.get 41
      local.get 39
      i32.add
      local.set 42
      i32.const 80
      local.set 43
      local.get 4
      local.get 43
      i32.add
      local.set 44
      local.get 44
      local.get 39
      i32.add
      local.set 45
      local.get 45
      i32.load
      local.set 46
      local.get 42
      local.get 46
      i32.store
      local.get 4
      i64.load offset=80
      local.set 47
      local.get 4
      local.get 47
      i64.store offset=112
      i32.const 96
      local.set 48
      local.get 4
      local.get 48
      i32.add
      local.set 49
      local.get 49
      local.set 50
      i32.const 112
      local.set 51
      local.get 4
      local.get 51
      i32.add
      local.set 52
      local.get 52
      local.set 53
      local.get 50
      local.get 53
      call $_ZN5alloc6string6String10into_bytes17he9f738b40b96eee7E
      i32.const 96
      local.set 54
      local.get 4
      local.get 54
      i32.add
      local.set 55
      local.get 4
      local.get 55
      call $_ZN5alloc3vec16Vec$LT$T$C$A$GT$16into_boxed_slice17h84ffb49497777477E
      local.get 4
      i32.load offset=4
      local.set 56
      local.get 4
      i32.load
      local.set 57
      local.get 4
      local.get 57
      i32.store offset=144
      local.get 4
      local.get 56
      i32.store offset=148
      local.get 4
      local.get 57
      i32.store offset=168
      local.get 4
      local.get 56
      i32.store offset=172
      local.get 4
      local.get 57
      i32.store offset=152
      local.get 4
      local.get 56
      i32.store offset=156
      local.get 57
      local.get 56
      call $_ZN4core3mem6forget17hafe82d79173be480E
      i32.const 4
      local.set 58
      local.get 29
      local.get 58
      i32.add
      local.set 59
      local.get 59
      local.get 29
      i32.lt_s
      local.set 60
      i32.const 1
      local.set 61
      local.get 60
      local.get 61
      i32.and
      local.set 62
      block ;; label = @1
        block ;; label = @2
          block ;; label = @3
            local.get 62
            br_if 0 (;@3;)
            local.get 59
            local.get 56
            i32.store
            i32.const 0
            local.set 63
            local.get 29
            local.set 64
            i32.const 1
            local.set 65
            local.get 63
            local.get 65
            i32.and
            local.set 66
            local.get 66
            br_if 2 (;@1;)
            br 1 (;@2;)
          end
          i32.const 1049008
          local.set 67
          i32.const 28
          local.set 68
          i32.const 1048980
          local.set 69
          local.get 67
          local.get 68
          local.get 69
          call $_ZN4core9panicking5panic17h72f0442034a99972E
          unreachable
        end
        local.get 64
        local.get 57
        i32.store
        i32.const 176
        local.set 70
        local.get 4
        local.get 70
        i32.add
        local.set 71
        local.get 71
        global.set $__stack_pointer
        local.get 29
        return
      end
      i32.const 1049008
      local.set 72
      i32.const 28
      local.set 73
      i32.const 1048980
      local.set 74
      local.get 72
      local.get 73
      local.get 74
      call $_ZN4core9panicking5panic17h72f0442034a99972E
      unreachable
    )
    (func $_ZN16wit_sample_guest24post_return_gen_response17ha7d95e8b42ef0d26E (;66;) (type $.rodata) (param i32)
      (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
      global.get $__stack_pointer
      local.set 1
      i32.const 16
      local.set 2
      local.get 1
      local.get 2
      i32.sub
      local.set 3
      local.get 3
      global.set $__stack_pointer
      local.get 3
      local.get 0
      i32.store offset=12
      i32.const 0
      local.set 4
      local.get 0
      local.set 5
      i32.const 1
      local.set 6
      local.get 4
      local.get 6
      i32.and
      local.set 7
      block ;; label = @1
        block ;; label = @2
          block ;; label = @3
            local.get 7
            br_if 0 (;@3;)
            local.get 5
            i32.load
            local.set 8
            i32.const 4
            local.set 9
            local.get 0
            local.get 9
            i32.add
            local.set 10
            local.get 10
            local.get 0
            i32.lt_s
            local.set 11
            i32.const 1
            local.set 12
            local.get 11
            local.get 12
            i32.and
            local.set 13
            local.get 13
            br_if 2 (;@1;)
            br 1 (;@2;)
          end
          i32.const 1049008
          local.set 14
          i32.const 28
          local.set 15
          i32.const 1048980
          local.set 16
          local.get 14
          local.get 15
          local.get 16
          call $_ZN4core9panicking5panic17h72f0442034a99972E
          unreachable
        end
        local.get 10
        i32.load
        local.set 17
        i32.const 1
        local.set 18
        local.get 8
        local.get 17
        local.get 18
        call $_ZN11wit_bindgen2rt7dealloc17hd98c96c1a80212e9E
        i32.const 16
        local.set 19
        local.get 3
        local.get 19
        i32.add
        local.set 20
        local.get 20
        global.set $__stack_pointer
        return
      end
      i32.const 1049008
      local.set 21
      i32.const 28
      local.set 22
      i32.const 1048980
      local.set 23
      local.get 21
      local.get 22
      local.get 23
      call $_ZN4core9panicking5panic17h72f0442034a99972E
      unreachable
    )
    (func $_ZN4core3mem6forget17hafe82d79173be480E (;67;) (type 3) (param i32 i32)
      (local i32 i32 i32)
      global.get $__stack_pointer
      local.set 2
      i32.const 16
      local.set 3
      local.get 2
      local.get 3
      i32.sub
      local.set 4
      local.get 4
      local.get 0
      i32.store offset=8
      local.get 4
      local.get 1
      i32.store offset=12
      return
    )
    (func $_ZN4core3fmt9Arguments6new_v117hc0a036fd2ef1c778E (;68;) (type 10) (param i32 i32 i32 i32 i32)
      (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
      global.get $__stack_pointer
      local.set 5
      i32.const 64
      local.set 6
      local.get 5
      local.get 6
      i32.sub
      local.set 7
      local.get 7
      global.set $__stack_pointer
      local.get 7
      local.get 1
      i32.store offset=48
      local.get 7
      local.get 2
      i32.store offset=52
      local.get 7
      local.get 3
      i32.store offset=56
      local.get 7
      local.get 4
      i32.store offset=60
      local.get 2
      local.set 8
      local.get 4
      local.set 9
      local.get 8
      local.get 9
      i32.lt_u
      local.set 10
      i32.const 1
      local.set 11
      local.get 10
      local.get 11
      i32.and
      local.set 12
      block ;; label = @1
        block ;; label = @2
          local.get 12
          br_if 0 (;@2;)
          i32.const 1
          local.set 13
          local.get 4
          local.get 13
          i32.add
          local.set 14
          local.get 2
          local.set 15
          local.get 14
          local.set 16
          local.get 15
          local.get 16
          i32.gt_u
          local.set 17
          i32.const 1
          local.set 18
          local.get 17
          local.get 18
          i32.and
          local.set 19
          local.get 7
          local.get 19
          i32.store8 offset=15
          br 1 (;@1;)
        end
        i32.const 1
        local.set 20
        local.get 7
        local.get 20
        i32.store8 offset=15
      end
      local.get 7
      i32.load8_u offset=15
      local.set 21
      i32.const 1
      local.set 22
      local.get 21
      local.get 22
      i32.and
      local.set 23
      block ;; label = @1
        local.get 23
        br_if 0 (;@1;)
        i32.const 0
        local.set 24
        local.get 7
        local.get 24
        i32.store offset=40
        local.get 0
        local.get 1
        i32.store offset=8
        local.get 0
        local.get 2
        i32.store offset=12
        local.get 7
        i32.load offset=40
        local.set 25
        local.get 7
        i32.load offset=44
        local.set 26
        local.get 0
        local.get 25
        i32.store
        local.get 0
        local.get 26
        i32.store offset=4
        local.get 0
        local.get 3
        i32.store offset=16
        local.get 0
        local.get 4
        i32.store offset=20
        i32.const 64
        local.set 27
        local.get 7
        local.get 27
        i32.add
        local.set 28
        local.get 28
        global.set $__stack_pointer
        return
      end
      i32.const 16
      local.set 29
      local.get 7
      local.get 29
      i32.add
      local.set 30
      local.get 30
      local.set 31
      i32.const 1049048
      local.set 32
      i32.const 1
      local.set 33
      i32.const 1049056
      local.set 34
      i32.const 0
      local.set 35
      local.get 31
      local.get 32
      local.get 33
      local.get 34
      local.get 35
      call $_ZN4core3fmt9Arguments6new_v117hc0a036fd2ef1c778E
      i32.const 16
      local.set 36
      local.get 7
      local.get 36
      i32.add
      local.set 37
      local.get 37
      local.set 38
      i32.const 1049132
      local.set 39
      local.get 38
      local.get 39
      call $_ZN4core9panicking9panic_fmt17h86214d64a55c1d57E
      unreachable
    )
    (func $_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17h2d991e84ff035cadE (;69;) (type 2) (param i32 i32 i32)
      (local i32 i32 i32 i32 i32 i32 i32)
      global.get $__stack_pointer
      local.set 3
      i32.const 16
      local.set 4
      local.get 3
      local.get 4
      i32.sub
      local.set 5
      local.get 5
      global.set $__stack_pointer
      local.get 5
      local.get 1
      i32.store offset=8
      local.get 5
      local.get 2
      i32.store offset=12
      local.get 5
      local.get 1
      local.get 2
      call $_ZN122_$LT$alloc..collections..TryReserveError$u20$as$u20$core..convert..From$LT$alloc..collections..TryReserveErrorKind$GT$$GT$4from17h621d49baa0054296E
      local.get 5
      i32.load
      local.set 6
      local.get 5
      i32.load offset=4
      local.set 7
      local.get 0
      local.get 7
      i32.store offset=4
      local.get 0
      local.get 6
      i32.store
      i32.const 16
      local.set 8
      local.get 5
      local.get 8
      i32.add
      local.set 9
      local.get 9
      global.set $__stack_pointer
      return
    )
    (func $_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$7sub_ptr17h9d4f09d607d51aa4E (;70;) (type 5) (param i32 i32) (result i32)
      (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
      global.get $__stack_pointer
      local.set 2
      i32.const 32
      local.set 3
      local.get 2
      local.get 3
      i32.sub
      local.set 4
      local.get 4
      global.set $__stack_pointer
      local.get 4
      local.get 0
      i32.store offset=16
      local.get 4
      local.get 1
      i32.store offset=20
      i32.const 1
      local.set 5
      local.get 4
      local.get 5
      i32.store offset=24
      i32.const 1
      local.set 6
      i32.const 1
      local.set 7
      local.get 6
      local.get 7
      i32.and
      local.set 8
      block ;; label = @1
        block ;; label = @2
          local.get 8
          br_if 0 (;@2;)
          i32.const 0
          local.set 9
          local.get 4
          local.get 9
          i32.store8 offset=15
          br 1 (;@1;)
        end
        i32.const 1
        local.set 10
        local.get 4
        local.get 10
        i32.store8 offset=15
      end
      local.get 4
      i32.load8_u offset=15
      local.set 11
      i32.const -1
      local.set 12
      local.get 11
      local.get 12
      i32.xor
      local.set 13
      i32.const 1
      local.set 14
      local.get 13
      local.get 14
      i32.and
      local.set 15
      block ;; label = @1
        local.get 15
        br_if 0 (;@1;)
        local.get 0
        local.get 1
        i32.sub
        local.set 16
        i32.const 0
        local.set 17
        local.get 16
        local.get 17
        i32.shr_u
        local.set 18
        local.get 4
        local.get 18
        i32.store offset=28
        local.get 4
        i32.load offset=28
        local.set 19
        i32.const 32
        local.set 20
        local.get 4
        local.get 20
        i32.add
        local.set 21
        local.get 21
        global.set $__stack_pointer
        local.get 19
        return
      end
      i32.const 1049148
      local.set 22
      i32.const 73
      local.set 23
      i32.const 1049304
      local.set 24
      local.get 22
      local.get 23
      local.get 24
      call $_ZN4core9panicking5panic17h72f0442034a99972E
      unreachable
    )
    (func $_ZN4core3num23_$LT$impl$u20$usize$GT$11checked_add17ha3cd27721a337066E (;71;) (type 2) (param i32 i32 i32)
      (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
      global.get $__stack_pointer
      local.set 3
      i32.const 64
      local.set 4
      local.get 3
      local.get 4
      i32.sub
      local.set 5
      local.get 5
      local.get 1
      i32.store offset=24
      local.get 5
      local.get 2
      i32.store offset=28
      local.get 5
      local.get 1
      i32.store offset=32
      local.get 5
      local.get 2
      i32.store offset=36
      local.get 1
      local.get 2
      i32.add
      local.set 6
      local.get 6
      local.get 1
      i32.lt_u
      local.set 7
      i32.const 1
      local.set 8
      local.get 7
      local.get 8
      i32.and
      local.set 9
      local.get 5
      local.get 6
      i32.store offset=40
      local.get 5
      local.get 9
      i32.store8 offset=44
      local.get 5
      i32.load offset=40
      local.set 10
      local.get 5
      i32.load8_u offset=44
      local.set 11
      local.get 5
      local.get 10
      i32.store offset=48
      i32.const 1
      local.set 12
      local.get 11
      local.get 12
      i32.and
      local.set 13
      local.get 5
      local.get 13
      i32.store8 offset=55
      local.get 5
      local.get 10
      i32.store offset=16
      i32.const 1
      local.set 14
      local.get 11
      local.get 14
      i32.and
      local.set 15
      local.get 5
      local.get 15
      i32.store8 offset=20
      local.get 5
      i32.load offset=16
      local.set 16
      local.get 5
      local.get 16
      i32.store offset=56
      local.get 5
      i32.load8_u offset=20
      local.set 17
      i32.const 1
      local.set 18
      local.get 17
      local.get 18
      i32.and
      local.set 19
      local.get 5
      local.get 19
      i32.store8 offset=62
      i32.const 1
      local.set 20
      local.get 17
      local.get 20
      i32.and
      local.set 21
      local.get 5
      local.get 21
      i32.store8 offset=63
      local.get 5
      i32.load8_u offset=63
      local.set 22
      i32.const 1
      local.set 23
      local.get 22
      local.get 23
      i32.and
      local.set 24
      block ;; label = @1
        block ;; label = @2
          local.get 24
          br_if 0 (;@2;)
          local.get 5
          local.get 16
          i32.store offset=12
          i32.const 1
          local.set 25
          local.get 5
          local.get 25
          i32.store offset=8
          br 1 (;@1;)
        end
        i32.const 0
        local.set 26
        local.get 5
        local.get 26
        i32.store offset=8
      end
      local.get 5
      i32.load offset=8
      local.set 27
      local.get 5
      i32.load offset=12
      local.set 28
      local.get 0
      local.get 28
      i32.store offset=4
      local.get 0
      local.get 27
      i32.store
      return
    )
    (func $_ZN122_$LT$alloc..collections..TryReserveError$u20$as$u20$core..convert..From$LT$alloc..collections..TryReserveErrorKind$GT$$GT$4from17h621d49baa0054296E (;72;) (type 2) (param i32 i32 i32)
      (local i32 i32 i32 i32 i32)
      global.get $__stack_pointer
      local.set 3
      i32.const 16
      local.set 4
      local.get 3
      local.get 4
      i32.sub
      local.set 5
      local.get 5
      local.get 1
      i32.store offset=8
      local.get 5
      local.get 2
      i32.store offset=12
      local.get 5
      local.get 1
      i32.store
      local.get 5
      local.get 2
      i32.store offset=4
      local.get 5
      i32.load
      local.set 6
      local.get 5
      i32.load offset=4
      local.set 7
      local.get 0
      local.get 7
      i32.store offset=4
      local.get 0
      local.get 6
      i32.store
      return
    )
    (func $_ZN5alloc6string6String10into_bytes17he9f738b40b96eee7E (;73;) (type 3) (param i32 i32)
      (local i64 i32 i32 i32 i32)
      local.get 1
      i64.load align=4
      local.set 2
      local.get 0
      local.get 2
      i64.store align=4
      i32.const 8
      local.set 3
      local.get 0
      local.get 3
      i32.add
      local.set 4
      local.get 1
      local.get 3
      i32.add
      local.set 5
      local.get 5
      i32.load
      local.set 6
      local.get 4
      local.get 6
      i32.store
      return
    )
    (func $_ZN5alloc6string6String9from_utf817h5a7815c5bccf9738E (;74;) (type 3) (param i32 i32)
      (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i32 i32 i32 i32 i32 i32 i32 i32 i64 i32 i32 i64 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i32 i32 i32 i32 i32 i32 i64 i64 i32 i32 i32 i32 i32 i64 i32 i32 i32 i32 i32 i32 i64 i64 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i32 i32)
      global.get $__stack_pointer
      local.set 2
      i32.const 112
      local.set 3
      local.get 2
      local.get 3
      i32.sub
      local.set 4
      local.get 4
      global.set $__stack_pointer
      local.get 4
      local.get 1
      call $_ZN72_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h1d91db52c5838605E
      local.get 4
      i32.load offset=4
      local.set 5
      local.get 4
      i32.load
      local.set 6
      i32.const 8
      local.set 7
      local.get 4
      local.get 7
      i32.add
      local.set 8
      local.get 8
      local.set 9
      local.get 9
      local.get 6
      local.get 5
      call $_ZN4core3str8converts9from_utf817hb0ec4d390965724cE
      local.get 4
      i32.load offset=8
      local.set 10
      block ;; label = @1
        block ;; label = @2
          local.get 10
          br_if 0 (;@2;)
          i32.const 8
          local.set 11
          local.get 1
          local.get 11
          i32.add
          local.set 12
          local.get 12
          i32.load
          local.set 13
          i32.const 40
          local.set 14
          local.get 4
          local.get 14
          i32.add
          local.set 15
          local.get 15
          local.get 11
          i32.add
          local.set 16
          local.get 16
          local.get 13
          i32.store
          local.get 1
          i64.load align=4
          local.set 17
          local.get 4
          local.get 17
          i64.store offset=40
          i32.const 8
          local.set 18
          i32.const 24
          local.set 19
          local.get 4
          local.get 19
          i32.add
          local.set 20
          local.get 20
          local.get 18
          i32.add
          local.set 21
          i32.const 40
          local.set 22
          local.get 4
          local.get 22
          i32.add
          local.set 23
          local.get 23
          local.get 18
          i32.add
          local.set 24
          local.get 24
          i32.load
          local.set 25
          local.get 21
          local.get 25
          i32.store
          local.get 4
          i64.load offset=40
          local.set 26
          local.get 4
          local.get 26
          i64.store offset=24
          i32.const 8
          local.set 27
          local.get 0
          local.get 27
          i32.add
          local.set 28
          local.get 4
          i64.load offset=24
          local.set 29
          local.get 28
          local.get 29
          i64.store align=4
          i32.const 8
          local.set 30
          local.get 28
          local.get 30
          i32.add
          local.set 31
          i32.const 24
          local.set 32
          local.get 4
          local.get 32
          i32.add
          local.set 33
          local.get 33
          local.get 30
          i32.add
          local.set 34
          local.get 34
          i32.load
          local.set 35
          local.get 31
          local.get 35
          i32.store
          i32.const 2
          local.set 36
          local.get 0
          local.get 36
          i32.store8 offset=4
          br 1 (;@1;)
        end
        i32.const 8
        local.set 37
        local.get 4
        local.get 37
        i32.add
        local.set 38
        local.get 38
        local.set 39
        i32.const 4
        local.set 40
        local.get 39
        local.get 40
        i32.add
        local.set 41
        local.get 41
        i64.load align=4
        local.set 42
        local.get 4
        local.get 42
        i64.store offset=56
        i32.const 8
        local.set 43
        local.get 1
        local.get 43
        i32.add
        local.set 44
        local.get 44
        i32.load
        local.set 45
        i32.const 88
        local.set 46
        local.get 4
        local.get 46
        i32.add
        local.set 47
        local.get 47
        local.get 43
        i32.add
        local.set 48
        local.get 48
        local.get 45
        i32.store
        local.get 1
        i64.load align=4
        local.set 49
        local.get 4
        local.get 49
        i64.store offset=88
        local.get 4
        i64.load offset=56
        local.set 50
        local.get 4
        local.get 50
        i64.store offset=104
        i32.const 64
        local.set 51
        local.get 4
        local.get 51
        i32.add
        local.set 52
        local.get 52
        local.set 53
        i32.const 8
        local.set 54
        local.get 53
        local.get 54
        i32.add
        local.set 55
        local.get 4
        i64.load offset=88
        local.set 56
        local.get 55
        local.get 56
        i64.store align=4
        i32.const 8
        local.set 57
        local.get 55
        local.get 57
        i32.add
        local.set 58
        i32.const 88
        local.set 59
        local.get 4
        local.get 59
        i32.add
        local.set 60
        local.get 60
        local.get 57
        i32.add
        local.set 61
        local.get 61
        i32.load
        local.set 62
        local.get 58
        local.get 62
        i32.store
        local.get 4
        i64.load offset=104
        local.set 63
        local.get 4
        local.get 63
        i64.store offset=64
        local.get 4
        i64.load offset=64
        local.set 64
        local.get 0
        local.get 64
        i64.store align=4
        i32.const 16
        local.set 65
        local.get 0
        local.get 65
        i32.add
        local.set 66
        i32.const 64
        local.set 67
        local.get 4
        local.get 67
        i32.add
        local.set 68
        local.get 68
        local.get 65
        i32.add
        local.set 69
        local.get 69
        i32.load
        local.set 70
        local.get 66
        local.get 70
        i32.store
        i32.const 8
        local.set 71
        local.get 0
        local.get 71
        i32.add
        local.set 72
        i32.const 64
        local.set 73
        local.get 4
        local.get 73
        i32.add
        local.set 74
        local.get 74
        local.get 71
        i32.add
        local.set 75
        local.get 75
        i64.load
        local.set 76
        local.get 72
        local.get 76
        i64.store align=4
      end
      i32.const 112
      local.set 77
      local.get 4
      local.get 77
      i32.add
      local.set 78
      local.get 78
      global.set $__stack_pointer
      return
    )
    (func $_ZN65_$LT$alloc..string..String$u20$as$u20$core..ops..deref..Deref$GT$5deref17h072d044b80d6f840E (;75;) (type 3) (param i32 i32)
      (local i32 i32 i32 i32 i32 i32 i32 i32 i32)
      global.get $__stack_pointer
      local.set 2
      i32.const 32
      local.set 3
      local.get 2
      local.get 3
      i32.sub
      local.set 4
      local.get 4
      global.set $__stack_pointer
      local.get 4
      local.get 1
      i32.store offset=12
      local.get 4
      local.get 1
      call $_ZN72_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h1d91db52c5838605E
      local.get 4
      i32.load offset=4
      local.set 5
      local.get 4
      i32.load
      local.set 6
      local.get 4
      local.get 6
      i32.store offset=16
      local.get 4
      local.get 5
      i32.store offset=20
      local.get 4
      local.get 6
      i32.store offset=24
      local.get 4
      local.get 5
      i32.store offset=28
      local.get 4
      i32.load offset=24
      local.set 7
      local.get 4
      i32.load offset=28
      local.set 8
      local.get 0
      local.get 8
      i32.store offset=4
      local.get 0
      local.get 7
      i32.store
      i32.const 32
      local.set 9
      local.get 4
      local.get 9
      i32.add
      local.set 10
      local.get 10
      global.set $__stack_pointer
      return
    )
    (func $_ZN78_$LT$alloc..string..String$u20$as$u20$core..ops..arith..Add$LT$$RF$str$GT$$GT$3add17h979b19b3de3d8c51E (;76;) (type 8) (param i32 i32 i32 i32)
      (local i32 i32 i32 i32 i32 i64 i32 i32 i32 i32 i32 i32)
      global.get $__stack_pointer
      local.set 4
      i32.const 48
      local.set 5
      local.get 4
      local.get 5
      i32.sub
      local.set 6
      local.get 6
      global.set $__stack_pointer
      local.get 6
      local.get 2
      i32.store offset=8
      local.get 6
      local.get 3
      i32.store offset=12
      local.get 6
      local.get 1
      i32.store offset=20
      local.get 6
      local.get 2
      i32.store offset=24
      local.get 6
      local.get 3
      i32.store offset=28
      local.get 6
      local.get 2
      i32.store offset=32
      local.get 6
      local.get 3
      i32.store offset=36
      local.get 6
      local.get 2
      i32.store offset=40
      local.get 6
      local.get 3
      i32.store offset=44
      local.get 6
      i32.load offset=40
      local.set 7
      local.get 6
      i32.load offset=44
      local.set 8
      local.get 1
      local.get 7
      local.get 8
      call $_ZN5alloc3vec16Vec$LT$T$C$A$GT$17extend_from_slice17h408ffb6f029364baE
      local.get 1
      i64.load align=4
      local.set 9
      local.get 0
      local.get 9
      i64.store align=4
      i32.const 8
      local.set 10
      local.get 0
      local.get 10
      i32.add
      local.set 11
      local.get 1
      local.get 10
      i32.add
      local.set 12
      local.get 12
      i32.load
      local.set 13
      local.get 11
      local.get 13
      i32.store
      i32.const 48
      local.set 14
      local.get 6
      local.get 14
      i32.add
      local.set 15
      local.get 15
      global.set $__stack_pointer
      return
    )
    (func $__rust_alloc (;77;) (type 5) (param i32 i32) (result i32)
      (local i32)
      local.get 0
      local.get 1
      call $__rdl_alloc
      local.set 2
      local.get 2
      return
    )
    (func $__rust_dealloc (;78;) (type 2) (param i32 i32 i32)
      local.get 0
      local.get 1
      local.get 2
      call $__rdl_dealloc
      return
    )
    (func $__rust_realloc (;79;) (type 6) (param i32 i32 i32 i32) (result i32)
      (local i32)
      local.get 0
      local.get 1
      local.get 2
      local.get 3
      call $__rdl_realloc
      local.set 4
      local.get 4
      return
    )
    (func $__rust_alloc_zeroed (;80;) (type 5) (param i32 i32) (result i32)
      (local i32)
      local.get 0
      local.get 1
      call $__rdl_alloc_zeroed
      local.set 2
      local.get 2
      return
    )
    (func $__rust_alloc_error_handler (;81;) (type 3) (param i32 i32)
      local.get 0
      local.get 1
      call $__rg_oom
      return
    )
    (func $_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h96b474edb29f4921E (;82;) (type 5) (param i32 i32) (result i32)
      (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
      global.get $__stack_pointer
      local.set 2
      i32.const 16
      local.set 3
      local.get 2
      local.get 3
      i32.sub
      local.set 4
      local.get 4
      global.set $__stack_pointer
      local.get 4
      local.get 0
      i32.store offset=8
      local.get 4
      local.get 1
      i32.store offset=12
      local.get 1
      call $_ZN4core3fmt9Formatter15debug_lower_hex17h87337c0810a503c8E
      local.set 5
      i32.const 1
      local.set 6
      local.get 5
      local.get 6
      i32.and
      local.set 7
      block ;; label = @1
        block ;; label = @2
          block ;; label = @3
            block ;; label = @4
              block ;; label = @5
                local.get 7
                br_if 0 (;@5;)
                local.get 1
                call $_ZN4core3fmt9Formatter15debug_upper_hex17h87a99dafeab8d76eE
                local.set 8
                i32.const 1
                local.set 9
                local.get 8
                local.get 9
                i32.and
                local.set 10
                local.get 10
                br_if 2 (;@3;)
                br 1 (;@4;)
              end
              local.get 0
              local.get 1
              call $_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$i32$GT$3fmt17hf7484c0e3ebedd67E
              local.set 11
              i32.const 1
              local.set 12
              local.get 11
              local.get 12
              i32.and
              local.set 13
              local.get 4
              local.get 13
              i32.store8 offset=7
              br 3 (;@1;)
            end
            local.get 0
            local.get 1
            call $_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17h094d0608d5797a86E
            local.set 14
            i32.const 1
            local.set 15
            local.get 14
            local.get 15
            i32.and
            local.set 16
            local.get 4
            local.get 16
            i32.store8 offset=7
            br 1 (;@2;)
          end
          local.get 0
          local.get 1
          call $_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$i32$GT$3fmt17h4ea068d30a37770fE
          local.set 17
          i32.const 1
          local.set 18
          local.get 17
          local.get 18
          i32.and
          local.set 19
          local.get 4
          local.get 19
          i32.store8 offset=7
        end
      end
      local.get 4
      i32.load8_u offset=7
      local.set 20
      i32.const 1
      local.set 21
      local.get 20
      local.get 21
      i32.and
      local.set 22
      i32.const 16
      local.set 23
      local.get 4
      local.get 23
      i32.add
      local.set 24
      local.get 24
      global.set $__stack_pointer
      local.get 22
      return
    )
    (func $_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17ha6cdf156894842d9E (;83;) (type 5) (param i32 i32) (result i32)
      (local i32 i32 i32 i32 i32 i32 i32 i32 i32)
      global.get $__stack_pointer
      local.set 2
      i32.const 16
      local.set 3
      local.get 2
      local.get 3
      i32.sub
      local.set 4
      local.get 4
      global.set $__stack_pointer
      local.get 4
      local.get 0
      i32.store offset=8
      local.get 4
      local.get 1
      i32.store offset=12
      local.get 0
      i32.load
      local.set 5
      local.get 5
      local.get 1
      call $_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h96b474edb29f4921E
      local.set 6
      i32.const 1
      local.set 7
      local.get 6
      local.get 7
      i32.and
      local.set 8
      i32.const 16
      local.set 9
      local.get 4
      local.get 9
      i32.add
      local.set 10
      local.get 10
      global.set $__stack_pointer
      local.get 8
      return
    )
    (func $_ZN4core3fmt9Arguments6new_v117h0b9f3c44495f1489E (;84;) (type 10) (param i32 i32 i32 i32 i32)
      (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
      global.get $__stack_pointer
      local.set 5
      i32.const 64
      local.set 6
      local.get 5
      local.get 6
      i32.sub
      local.set 7
      local.get 7
      global.set $__stack_pointer
      local.get 7
      local.get 1
      i32.store offset=48
      local.get 7
      local.get 2
      i32.store offset=52
      local.get 7
      local.get 3
      i32.store offset=56
      local.get 7
      local.get 4
      i32.store offset=60
      local.get 2
      local.set 8
      local.get 4
      local.set 9
      local.get 8
      local.get 9
      i32.lt_u
      local.set 10
      i32.const 1
      local.set 11
      local.get 10
      local.get 11
      i32.and
      local.set 12
      block ;; label = @1
        block ;; label = @2
          local.get 12
          br_if 0 (;@2;)
          i32.const 1
          local.set 13
          local.get 4
          local.get 13
          i32.add
          local.set 14
          local.get 2
          local.set 15
          local.get 14
          local.set 16
          local.get 15
          local.get 16
          i32.gt_u
          local.set 17
          i32.const 1
          local.set 18
          local.get 17
          local.get 18
          i32.and
          local.set 19
          local.get 7
          local.get 19
          i32.store8 offset=15
          br 1 (;@1;)
        end
        i32.const 1
        local.set 20
        local.get 7
        local.get 20
        i32.store8 offset=15
      end
      local.get 7
      i32.load8_u offset=15
      local.set 21
      i32.const 1
      local.set 22
      local.get 21
      local.get 22
      i32.and
      local.set 23
      block ;; label = @1
        local.get 23
        br_if 0 (;@1;)
        i32.const 0
        local.set 24
        local.get 7
        local.get 24
        i32.store offset=40
        local.get 0
        local.get 1
        i32.store offset=8
        local.get 0
        local.get 2
        i32.store offset=12
        local.get 7
        i32.load offset=40
        local.set 25
        local.get 7
        i32.load offset=44
        local.set 26
        local.get 0
        local.get 25
        i32.store
        local.get 0
        local.get 26
        i32.store offset=4
        local.get 0
        local.get 3
        i32.store offset=16
        local.get 0
        local.get 4
        i32.store offset=20
        i32.const 64
        local.set 27
        local.get 7
        local.get 27
        i32.add
        local.set 28
        local.get 28
        global.set $__stack_pointer
        return
      end
      i32.const 16
      local.set 29
      local.get 7
      local.get 29
      i32.add
      local.set 30
      local.get 30
      local.set 31
      i32.const 1049332
      local.set 32
      i32.const 1
      local.set 33
      i32.const 1049340
      local.set 34
      i32.const 0
      local.set 35
      local.get 31
      local.get 32
      local.get 33
      local.get 34
      local.get 35
      call $_ZN4core3fmt9Arguments6new_v117h0b9f3c44495f1489E
      i32.const 16
      local.set 36
      local.get 7
      local.get 36
      i32.add
      local.set 37
      local.get 37
      local.set 38
      i32.const 1049416
      local.set 39
      local.get 38
      local.get 39
      call $_ZN4core9panicking9panic_fmt17h86214d64a55c1d57E
      unreachable
    )
    (func $_ZN4core3ptr30drop_in_place$LT$$RF$usize$GT$17hf1d9610e0783d91dE (;85;) (type $.rodata) (param i32)
      (local i32 i32 i32)
      global.get $__stack_pointer
      local.set 1
      i32.const 16
      local.set 2
      local.get 1
      local.get 2
      i32.sub
      local.set 3
      local.get 3
      local.get 0
      i32.store offset=12
      return
    )
    (func $_ZN4core9panicking13assert_failed17h384f58639af0a322E (;86;) (type 10) (param i32 i32 i32 i32 i32)
      (local i32 i32 i32 i32 i32 i64 i32 i32 i32 i32 i32 i64 i32 i32 i32 i64 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
      global.get $__stack_pointer
      local.set 5
      i32.const 48
      local.set 6
      local.get 5
      local.get 6
      i32.sub
      local.set 7
      local.get 7
      global.set $__stack_pointer
      local.get 7
      local.get 1
      i32.store offset=8
      local.get 7
      local.get 2
      i32.store offset=12
      local.get 7
      local.get 0
      i32.store8 offset=47
      i32.const 16
      local.set 8
      local.get 3
      local.get 8
      i32.add
      local.set 9
      local.get 9
      i64.load align=4
      local.set 10
      i32.const 16
      local.set 11
      local.get 7
      local.get 11
      i32.add
      local.set 12
      local.get 12
      local.get 8
      i32.add
      local.set 13
      local.get 13
      local.get 10
      i64.store
      i32.const 8
      local.set 14
      local.get 3
      local.get 14
      i32.add
      local.set 15
      local.get 15
      i64.load align=4
      local.set 16
      i32.const 16
      local.set 17
      local.get 7
      local.get 17
      i32.add
      local.set 18
      local.get 18
      local.get 14
      i32.add
      local.set 19
      local.get 19
      local.get 16
      i64.store
      local.get 3
      i64.load align=4
      local.set 20
      local.get 7
      local.get 20
      i64.store offset=16
      i32.const 8
      local.set 21
      local.get 7
      local.get 21
      i32.add
      local.set 22
      local.get 22
      local.set 23
      i32.const 1049432
      local.set 24
      i32.const 12
      local.set 25
      local.get 7
      local.get 25
      i32.add
      local.set 26
      local.get 26
      local.set 27
      i32.const 16
      local.set 28
      local.get 7
      local.get 28
      i32.add
      local.set 29
      local.get 29
      local.set 30
      local.get 0
      local.get 23
      local.get 24
      local.get 27
      local.get 24
      local.get 30
      local.get 4
      call $_ZN4core9panicking19assert_failed_inner17hb5f899dac140aae4E
      unreachable
    )
    (func $_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17h570f927bb9993582E (;87;) (type 9) (param i32) (result i32)
      (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
      global.get $__stack_pointer
      local.set 1
      i32.const 32
      local.set 2
      local.get 1
      local.get 2
      i32.sub
      local.set 3
      local.get 3
      local.get 0
      i32.store offset=12
      local.get 3
      local.get 0
      i32.store offset=8
      local.get 3
      i32.load offset=8
      local.set 4
      local.get 3
      local.get 4
      i32.store offset=16
      local.get 3
      local.get 4
      i32.store offset=20
      local.get 3
      local.get 4
      i32.store offset=24
      local.get 3
      local.get 4
      i32.store offset=28
      local.get 3
      i32.load offset=28
      local.set 5
      i32.const 0
      local.set 6
      local.get 5
      local.set 7
      local.get 6
      local.set 8
      local.get 7
      local.get 8
      i32.eq
      local.set 9
      i32.const 1
      local.set 10
      local.get 9
      local.get 10
      i32.and
      local.set 11
      local.get 11
      return
    )
    (func $_ZN11wit_bindgen2rt14run_ctors_once17hae39d9dbe5432f72E (;88;) (type 7)
      (local i32 i32 i32 i32 i32 i32 i32 i32)
      i32.const 0
      local.set 0
      local.get 0
      i32.load8_u offset=1053033
      local.set 1
      i32.const -1
      local.set 2
      local.get 1
      local.get 2
      i32.xor
      local.set 3
      i32.const 1
      local.set 4
      local.get 3
      local.get 4
      i32.and
      local.set 5
      block ;; label = @1
        local.get 5
        i32.eqz
        br_if 0 (;@1;)
        call $__wasm_call_ctors
        i32.const 1
        local.set 6
        i32.const 0
        local.set 7
        local.get 7
        local.get 6
        i32.store8 offset=1053033
      end
      return
    )
    (func $cabi_realloc (;89;) (type 6) (param i32 i32 i32 i32) (result i32)
      (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i32 i32 i32 i32 i32 i32 i32 i64 i64 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
      global.get $__stack_pointer
      local.set 4
      i32.const 128
      local.set 5
      local.get 4
      local.get 5
      i32.sub
      local.set 6
      local.get 6
      global.set $__stack_pointer
      local.get 6
      local.get 3
      i32.store offset=16
      local.get 6
      local.get 0
      i32.store offset=108
      local.get 6
      local.get 1
      i32.store offset=112
      local.get 6
      local.get 2
      i32.store offset=116
      block ;; label = @1
        block ;; label = @2
          block ;; label = @3
            block ;; label = @4
              block ;; label = @5
                local.get 1
                br_if 0 (;@5;)
                local.get 6
                i32.load offset=16
                local.set 7
                local.get 7
                i32.eqz
                br_if 1 (;@4;)
                br 2 (;@3;)
              end
              i32.const 16
              local.set 8
              local.get 6
              local.get 8
              i32.add
              local.set 9
              local.get 9
              local.set 10
              local.get 6
              local.get 10
              i32.store offset=40
              i32.const 1049448
              local.set 11
              local.get 6
              local.get 11
              i32.store offset=44
              local.get 6
              i32.load offset=40
              local.set 12
              local.get 6
              local.get 12
              i32.store offset=120
              local.get 6
              i32.load offset=44
              local.set 13
              local.get 6
              local.get 13
              i32.store offset=124
              local.get 12
              i32.load
              local.set 14
              block ;; label = @5
                local.get 14
                i32.eqz
                br_if 0 (;@5;)
                i32.const 8
                local.set 15
                local.get 6
                local.get 15
                i32.add
                local.set 16
                local.get 16
                local.get 1
                local.get 2
                call $_ZN4core5alloc6layout6Layout25from_size_align_unchecked17hcc77ffa21be617acE
                local.get 6
                i32.load offset=12
                local.set 17
                local.get 6
                i32.load offset=8
                local.set 18
                local.get 6
                local.get 18
                i32.store offset=24
                local.get 6
                local.get 17
                i32.store offset=28
                local.get 6
                i32.load offset=24
                local.set 19
                local.get 6
                i32.load offset=28
                local.set 20
                local.get 6
                i32.load offset=16
                local.set 21
                local.get 0
                local.get 19
                local.get 20
                local.get 21
                call $_ZN5alloc5alloc7realloc17heb74300e8f72fe21E
                local.set 22
                local.get 6
                local.get 22
                i32.store offset=36
                br 3 (;@2;)
              end
              i32.const 1
              local.set 23
              local.get 6
              local.get 23
              i32.store8 offset=55
              i32.const 80
              local.set 24
              local.get 6
              local.get 24
              i32.add
              local.set 25
              local.get 25
              local.set 26
              i32.const 1049496
              local.set 27
              i32.const 1
              local.set 28
              i32.const 1049504
              local.set 29
              i32.const 0
              local.set 30
              local.get 26
              local.get 27
              local.get 28
              local.get 29
              local.get 30
              call $_ZN4core3fmt9Arguments6new_v117h0b9f3c44495f1489E
              i32.const 16
              local.set 31
              i32.const 56
              local.set 32
              local.get 6
              local.get 32
              i32.add
              local.set 33
              local.get 33
              local.get 31
              i32.add
              local.set 34
              i32.const 80
              local.set 35
              local.get 6
              local.get 35
              i32.add
              local.set 36
              local.get 36
              local.get 31
              i32.add
              local.set 37
              local.get 37
              i64.load
              local.set 38
              local.get 34
              local.get 38
              i64.store
              i32.const 8
              local.set 39
              i32.const 56
              local.set 40
              local.get 6
              local.get 40
              i32.add
              local.set 41
              local.get 41
              local.get 39
              i32.add
              local.set 42
              i32.const 80
              local.set 43
              local.get 6
              local.get 43
              i32.add
              local.set 44
              local.get 44
              local.get 39
              i32.add
              local.set 45
              local.get 45
              i64.load
              local.set 46
              local.get 42
              local.get 46
              i64.store
              local.get 6
              i64.load offset=80
              local.set 47
              local.get 6
              local.get 47
              i64.store offset=56
              i32.const 1
              local.set 48
              i32.const 56
              local.set 49
              local.get 6
              local.get 49
              i32.add
              local.set 50
              local.get 50
              local.set 51
              i32.const 1049604
              local.set 52
              local.get 48
              local.get 12
              local.get 13
              local.get 51
              local.get 52
              call $_ZN4core9panicking13assert_failed17h384f58639af0a322E
              unreachable
            end
            local.get 6
            local.get 2
            i32.store offset=20
            br 2 (;@1;)
          end
          local.get 6
          i32.load offset=16
          local.set 53
          local.get 6
          local.get 53
          local.get 2
          call $_ZN4core5alloc6layout6Layout25from_size_align_unchecked17hcc77ffa21be617acE
          local.get 6
          i32.load offset=4
          local.set 54
          local.get 6
          i32.load
          local.set 55
          local.get 6
          local.get 55
          i32.store offset=24
          local.get 6
          local.get 54
          i32.store offset=28
          local.get 6
          i32.load offset=24
          local.set 56
          local.get 6
          i32.load offset=28
          local.set 57
          local.get 56
          local.get 57
          call $_ZN5alloc5alloc5alloc17h27c0318200cd2c2cE
          local.set 58
          local.get 6
          local.get 58
          i32.store offset=36
        end
        local.get 6
        i32.load offset=36
        local.set 59
        local.get 59
        call $_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17h570f927bb9993582E
        local.set 60
        i32.const 1
        local.set 61
        local.get 60
        local.get 61
        i32.and
        local.set 62
        block ;; label = @2
          local.get 62
          br_if 0 (;@2;)
          local.get 6
          i32.load offset=36
          local.set 63
          local.get 6
          local.get 63
          i32.store offset=20
          br 1 (;@1;)
        end
        local.get 6
        i32.load offset=24
        local.set 64
        local.get 6
        i32.load offset=28
        local.set 65
        local.get 64
        local.get 65
        call $_ZN5alloc5alloc18handle_alloc_error17h3a7121d6b22d4137E
        unreachable
      end
      local.get 6
      i32.load offset=20
      local.set 66
      i32.const 128
      local.set 67
      local.get 6
      local.get 67
      i32.add
      local.set 68
      local.get 68
      global.set $__stack_pointer
      local.get 66
      return
    )
    (func $_ZN11wit_bindgen2rt7dealloc17hd98c96c1a80212e9E (;90;) (type 2) (param i32 i32 i32)
      (local i32 i32 i32 i32 i32 i32 i32)
      global.get $__stack_pointer
      local.set 3
      i32.const 32
      local.set 4
      local.get 3
      local.get 4
      i32.sub
      local.set 5
      local.get 5
      global.set $__stack_pointer
      local.get 5
      local.get 0
      i32.store offset=12
      local.get 5
      local.get 1
      i32.store offset=16
      local.get 5
      local.get 2
      i32.store offset=20
      block ;; label = @1
        local.get 1
        i32.eqz
        br_if 0 (;@1;)
        local.get 5
        local.get 1
        local.get 2
        call $_ZN4core5alloc6layout6Layout25from_size_align_unchecked17hcc77ffa21be617acE
        local.get 5
        i32.load offset=4
        local.set 6
        local.get 5
        i32.load
        local.set 7
        local.get 5
        local.get 7
        i32.store offset=24
        local.get 5
        local.get 6
        i32.store offset=28
        local.get 0
        local.get 7
        local.get 6
        call $_ZN5alloc5alloc7dealloc17hc0b8f11caaa8ec85E
      end
      i32.const 32
      local.set 8
      local.get 5
      local.get 8
      i32.add
      local.set 9
      local.get 9
      global.set $__stack_pointer
      return
    )
    (func $_ZN4core5alloc6layout6Layout25from_size_align_unchecked17hcc77ffa21be617acE (;91;) (type 2) (param i32 i32 i32)
      (local i32 i32 i32 i32 i32 i32)
      global.get $__stack_pointer
      local.set 3
      i32.const 32
      local.set 4
      local.get 3
      local.get 4
      i32.sub
      local.set 5
      local.get 5
      local.get 1
      i32.store offset=16
      local.get 5
      local.get 2
      i32.store offset=20
      local.get 5
      local.get 2
      i32.store offset=24
      local.get 5
      local.get 2
      i32.store offset=28
      local.get 5
      i32.load offset=28
      local.set 6
      local.get 5
      local.get 1
      i32.store offset=8
      local.get 5
      local.get 6
      i32.store offset=12
      local.get 5
      i32.load offset=8
      local.set 7
      local.get 5
      i32.load offset=12
      local.set 8
      local.get 0
      local.get 8
      i32.store offset=4
      local.get 0
      local.get 7
      i32.store
      return
    )
    (func $_ZN5alloc5alloc5alloc17h27c0318200cd2c2cE (;92;) (type 5) (param i32 i32) (result i32)
      (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
      global.get $__stack_pointer
      local.set 2
      i32.const 32
      local.set 3
      local.get 2
      local.get 3
      i32.sub
      local.set 4
      local.get 4
      global.set $__stack_pointer
      local.get 4
      local.get 0
      i32.store offset=8
      local.get 4
      local.get 1
      i32.store offset=12
      i32.const 8
      local.set 5
      local.get 4
      local.get 5
      i32.add
      local.set 6
      local.get 6
      local.set 7
      local.get 4
      local.get 7
      i32.store offset=20
      local.get 4
      i32.load offset=8
      local.set 8
      i32.const 8
      local.set 9
      local.get 4
      local.get 9
      i32.add
      local.set 10
      local.get 10
      local.set 11
      local.get 4
      local.get 11
      i32.store offset=24
      local.get 4
      i32.load offset=12
      local.set 12
      local.get 4
      local.get 12
      i32.store offset=28
      local.get 4
      local.get 12
      i32.store offset=16
      local.get 4
      i32.load offset=16
      local.set 13
      local.get 8
      local.get 13
      call $__rust_alloc
      local.set 14
      i32.const 32
      local.set 15
      local.get 4
      local.get 15
      i32.add
      local.set 16
      local.get 16
      global.set $__stack_pointer
      local.get 14
      return
    )
    (func $_ZN5alloc5alloc7dealloc17hc0b8f11caaa8ec85E (;93;) (type 2) (param i32 i32 i32)
      (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
      global.get $__stack_pointer
      local.set 3
      i32.const 32
      local.set 4
      local.get 3
      local.get 4
      i32.sub
      local.set 5
      local.get 5
      global.set $__stack_pointer
      local.get 5
      local.get 1
      i32.store
      local.get 5
      local.get 2
      i32.store offset=4
      local.get 5
      local.get 0
      i32.store offset=16
      local.get 5
      local.set 6
      local.get 5
      local.get 6
      i32.store offset=20
      local.get 5
      i32.load
      local.set 7
      local.get 5
      local.set 8
      local.get 5
      local.get 8
      i32.store offset=24
      local.get 5
      i32.load offset=4
      local.set 9
      local.get 5
      local.get 9
      i32.store offset=28
      local.get 5
      local.get 9
      i32.store offset=12
      local.get 5
      i32.load offset=12
      local.set 10
      local.get 0
      local.get 7
      local.get 10
      call $__rust_dealloc
      i32.const 32
      local.set 11
      local.get 5
      local.get 11
      i32.add
      local.set 12
      local.get 12
      global.set $__stack_pointer
      return
    )
    (func $_ZN5alloc5alloc7realloc17heb74300e8f72fe21E (;94;) (type 6) (param i32 i32 i32 i32) (result i32)
      (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
      global.get $__stack_pointer
      local.set 4
      i32.const 32
      local.set 5
      local.get 4
      local.get 5
      i32.sub
      local.set 6
      local.get 6
      global.set $__stack_pointer
      local.get 6
      local.get 1
      i32.store
      local.get 6
      local.get 2
      i32.store offset=4
      local.get 6
      local.get 0
      i32.store offset=12
      local.get 6
      local.get 3
      i32.store offset=16
      local.get 6
      local.set 7
      local.get 6
      local.get 7
      i32.store offset=20
      local.get 6
      i32.load
      local.set 8
      local.get 6
      local.set 9
      local.get 6
      local.get 9
      i32.store offset=24
      local.get 6
      i32.load offset=4
      local.set 10
      local.get 6
      local.get 10
      i32.store offset=28
      local.get 6
      local.get 10
      i32.store offset=8
      local.get 6
      i32.load offset=8
      local.set 11
      local.get 0
      local.get 8
      local.get 11
      local.get 3
      call $__rust_realloc
      local.set 12
      i32.const 32
      local.set 13
      local.get 6
      local.get 13
      i32.add
      local.set 14
      local.get 14
      global.set $__stack_pointer
      local.get 12
      return
    )
    (func $_ZN36_$LT$T$u20$as$u20$core..any..Any$GT$7type_id17h1399d2823d8ad95eE (;95;) (type $.data) (param i32) (result i64)
      i64.const -2884136979963543874
    )
    (func $_ZN36_$LT$T$u20$as$u20$core..any..Any$GT$7type_id17h13f4b085b8aca05bE (;96;) (type $.data) (param i32) (result i64)
      i64.const 7643450500199061218
    )
    (func $_ZN36_$LT$T$u20$as$u20$core..any..Any$GT$7type_id17h3f02bc54c3459368E (;97;) (type $.data) (param i32) (result i64)
      i64.const -8527728395957036344
    )
    (func $_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h5160b48ccc48314aE (;98;) (type 5) (param i32 i32) (result i32)
      local.get 0
      i32.load
      local.get 1
      call $_ZN43_$LT$bool$u20$as$u20$core..fmt..Display$GT$3fmt17hadc0d1234036acceE
    )
    (func $_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h49d2fed3412d8364E (;99;) (type 5) (param i32 i32) (result i32)
      local.get 0
      i32.load
      local.get 1
      call $_ZN70_$LT$core..panic..location..Location$u20$as$u20$core..fmt..Display$GT$3fmt17h7b6ca0718ffdd712E
    )
    (func $_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17hedb2065737f3fde5E (;100;) (type 5) (param i32 i32) (result i32)
      local.get 0
      i32.load
      local.get 0
      i32.load offset=4
      local.get 1
      call $_ZN42_$LT$str$u20$as$u20$core..fmt..Display$GT$3fmt17hfc435e20242f7c7fE
    )
    (func $_ZN4core3fmt5Write10write_char17hd300a41da9ed30d9E (;101;) (type 5) (param i32 i32) (result i32)
      (local i32 i32)
      global.get $__stack_pointer
      i32.const 16
      i32.sub
      local.tee 2
      global.set $__stack_pointer
      local.get 2
      i32.const 0
      i32.store offset=12
      block ;; label = @1
        block ;; label = @2
          local.get 1
          i32.const 128
          i32.lt_u
          br_if 0 (;@2;)
          block ;; label = @3
            local.get 1
            i32.const 2048
            i32.lt_u
            br_if 0 (;@3;)
            block ;; label = @4
              local.get 1
              i32.const 65536
              i32.lt_u
              br_if 0 (;@4;)
              local.get 2
              local.get 1
              i32.const 63
              i32.and
              i32.const 128
              i32.or
              i32.store8 offset=15
              local.get 2
              local.get 1
              i32.const 6
              i32.shr_u
              i32.const 63
              i32.and
              i32.const 128
              i32.or
              i32.store8 offset=14
              local.get 2
              local.get 1
              i32.const 12
              i32.shr_u
              i32.const 63
              i32.and
              i32.const 128
              i32.or
              i32.store8 offset=13
              local.get 2
              local.get 1
              i32.const 18
              i32.shr_u
              i32.const 7
              i32.and
              i32.const 240
              i32.or
              i32.store8 offset=12
              i32.const 4
              local.set 3
              br 3 (;@1;)
            end
            local.get 2
            local.get 1
            i32.const 63
            i32.and
            i32.const 128
            i32.or
            i32.store8 offset=14
            local.get 2
            local.get 1
            i32.const 12
            i32.shr_u
            i32.const 224
            i32.or
            i32.store8 offset=12
            local.get 2
            local.get 1
            i32.const 6
            i32.shr_u
            i32.const 63
            i32.and
            i32.const 128
            i32.or
            i32.store8 offset=13
            i32.const 3
            local.set 3
            br 2 (;@1;)
          end
          local.get 2
          local.get 1
          i32.const 63
          i32.and
          i32.const 128
          i32.or
          i32.store8 offset=13
          local.get 2
          local.get 1
          i32.const 6
          i32.shr_u
          i32.const 192
          i32.or
          i32.store8 offset=12
          i32.const 2
          local.set 3
          br 1 (;@1;)
        end
        local.get 2
        local.get 1
        i32.store8 offset=12
        i32.const 1
        local.set 3
      end
      block ;; label = @1
        local.get 0
        i32.load offset=8
        local.tee 1
        i32.load
        local.get 1
        i32.load offset=8
        local.tee 0
        i32.sub
        local.get 3
        i32.ge_u
        br_if 0 (;@1;)
        local.get 1
        local.get 0
        local.get 3
        call $_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve21do_reserve_and_handle17h998b51ee8b795c17E
        local.get 1
        i32.load offset=8
        local.set 0
      end
      local.get 1
      i32.load offset=4
      local.get 0
      i32.add
      local.get 2
      i32.const 12
      i32.add
      local.get 3
      call $memcpy
      drop
      local.get 1
      local.get 0
      local.get 3
      i32.add
      i32.store offset=8
      local.get 2
      i32.const 16
      i32.add
      global.set $__stack_pointer
      i32.const 0
    )
    (func $_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve21do_reserve_and_handle17h998b51ee8b795c17E (;102;) (type 2) (param i32 i32 i32)
      (local i32 i32)
      global.get $__stack_pointer
      i32.const 32
      i32.sub
      local.tee 3
      global.set $__stack_pointer
      block ;; label = @1
        block ;; label = @2
          local.get 1
          local.get 2
          i32.add
          local.tee 2
          local.get 1
          i32.lt_u
          br_if 0 (;@2;)
          local.get 0
          i32.load
          local.tee 1
          i32.const 1
          i32.shl
          local.tee 4
          local.get 2
          local.get 4
          local.get 2
          i32.gt_u
          select
          local.tee 2
          i32.const 8
          local.get 2
          i32.const 8
          i32.gt_u
          select
          local.tee 2
          i32.const -1
          i32.xor
          i32.const 31
          i32.shr_u
          local.set 4
          block ;; label = @3
            block ;; label = @4
              local.get 1
              i32.eqz
              br_if 0 (;@4;)
              local.get 3
              i32.const 1
              i32.store offset=24
              local.get 3
              local.get 1
              i32.store offset=20
              local.get 3
              local.get 0
              i32.const 4
              i32.add
              i32.load
              i32.store offset=16
              br 1 (;@3;)
            end
            local.get 3
            i32.const 0
            i32.store offset=24
          end
          local.get 3
          local.get 2
          local.get 4
          local.get 3
          i32.const 16
          i32.add
          call $_ZN5alloc7raw_vec11finish_grow17h44981df98dc1ae06E
          local.get 3
          i32.load offset=4
          local.set 1
          block ;; label = @3
            local.get 3
            i32.load
            br_if 0 (;@3;)
            local.get 0
            local.get 2
            i32.store
            local.get 0
            local.get 1
            i32.store offset=4
            br 2 (;@1;)
          end
          local.get 3
          i32.const 8
          i32.add
          i32.load
          local.tee 0
          i32.const -2147483647
          i32.eq
          br_if 1 (;@1;)
          local.get 0
          i32.eqz
          br_if 0 (;@2;)
          local.get 1
          local.get 0
          call $_ZN5alloc5alloc18handle_alloc_error17h3a7121d6b22d4137E
          unreachable
        end
        call $_ZN5alloc7raw_vec17capacity_overflow17ha0bfce3c627a68c1E
        unreachable
      end
      local.get 3
      i32.const 32
      i32.add
      global.set $__stack_pointer
    )
    (func $_ZN4core3fmt5Write10write_char17hee67041dd0281dafE (;103;) (type 5) (param i32 i32) (result i32)
      (local i32)
      global.get $__stack_pointer
      i32.const 16
      i32.sub
      local.tee 2
      global.set $__stack_pointer
      local.get 2
      i32.const 0
      i32.store offset=12
      block ;; label = @1
        block ;; label = @2
          local.get 1
          i32.const 128
          i32.lt_u
          br_if 0 (;@2;)
          block ;; label = @3
            local.get 1
            i32.const 2048
            i32.lt_u
            br_if 0 (;@3;)
            block ;; label = @4
              local.get 1
              i32.const 65536
              i32.lt_u
              br_if 0 (;@4;)
              local.get 2
              local.get 1
              i32.const 63
              i32.and
              i32.const 128
              i32.or
              i32.store8 offset=15
              local.get 2
              local.get 1
              i32.const 6
              i32.shr_u
              i32.const 63
              i32.and
              i32.const 128
              i32.or
              i32.store8 offset=14
              local.get 2
              local.get 1
              i32.const 12
              i32.shr_u
              i32.const 63
              i32.and
              i32.const 128
              i32.or
              i32.store8 offset=13
              local.get 2
              local.get 1
              i32.const 18
              i32.shr_u
              i32.const 7
              i32.and
              i32.const 240
              i32.or
              i32.store8 offset=12
              i32.const 4
              local.set 1
              br 3 (;@1;)
            end
            local.get 2
            local.get 1
            i32.const 63
            i32.and
            i32.const 128
            i32.or
            i32.store8 offset=14
            local.get 2
            local.get 1
            i32.const 12
            i32.shr_u
            i32.const 224
            i32.or
            i32.store8 offset=12
            local.get 2
            local.get 1
            i32.const 6
            i32.shr_u
            i32.const 63
            i32.and
            i32.const 128
            i32.or
            i32.store8 offset=13
            i32.const 3
            local.set 1
            br 2 (;@1;)
          end
          local.get 2
          local.get 1
          i32.const 63
          i32.and
          i32.const 128
          i32.or
          i32.store8 offset=13
          local.get 2
          local.get 1
          i32.const 6
          i32.shr_u
          i32.const 192
          i32.or
          i32.store8 offset=12
          i32.const 2
          local.set 1
          br 1 (;@1;)
        end
        local.get 2
        local.get 1
        i32.store8 offset=12
        i32.const 1
        local.set 1
      end
      local.get 0
      local.get 2
      i32.const 12
      i32.add
      local.get 1
      call $_ZN80_$LT$std..io..Write..write_fmt..Adapter$LT$T$GT$$u20$as$u20$core..fmt..Write$GT$9write_str17h87277678b379804cE
      local.set 1
      local.get 2
      i32.const 16
      i32.add
      global.set $__stack_pointer
      local.get 1
    )
    (func $_ZN80_$LT$std..io..Write..write_fmt..Adapter$LT$T$GT$$u20$as$u20$core..fmt..Write$GT$9write_str17h87277678b379804cE (;104;) (type 4) (param i32 i32 i32) (result i32)
      (local i32 i32 i64 i32)
      global.get $__stack_pointer
      i32.const 32
      i32.sub
      local.tee 3
      global.set $__stack_pointer
      i32.const 0
      local.set 4
      block ;; label = @1
        local.get 2
        i32.eqz
        br_if 0 (;@1;)
        i32.const 1050152
        i64.extend_i32_u
        i64.const 32
        i64.shl
        i64.const 2
        i64.or
        local.set 5
        loop ;; label = @2
          local.get 3
          local.get 2
          i32.store offset=12
          local.get 3
          local.get 1
          i32.store offset=8
          local.get 3
          i32.const 16
          i32.add
          i32.const 2
          local.get 3
          i32.const 8
          i32.add
          i32.const 1
          call $_ZN4wasi13lib_generated8fd_write17hae8ae89e35eb262eE
          block ;; label = @3
            block ;; label = @4
              block ;; label = @5
                block ;; label = @6
                  local.get 3
                  i32.load16_u offset=16
                  br_if 0 (;@6;)
                  local.get 3
                  i32.load offset=20
                  local.tee 6
                  i32.eqz
                  br_if 1 (;@5;)
                  local.get 2
                  local.get 6
                  i32.lt_u
                  br_if 2 (;@4;)
                  local.get 2
                  local.get 6
                  i32.sub
                  local.set 2
                  local.get 1
                  local.get 6
                  i32.add
                  local.set 1
                  br 3 (;@3;)
                end
                local.get 3
                local.get 3
                i32.load16_u offset=18
                i32.store16 offset=30
                local.get 3
                i32.const 30
                i32.add
                call $_ZN4wasi13lib_generated5Errno3raw17h7583c3dc59f4497dE
                local.tee 6
                i32.const 65535
                i32.and
                call $_ZN3std3sys4wasi17decode_error_kind17h72f6181b6dd35be0E
                i32.const 255
                i32.and
                i32.const 35
                i32.eq
                br_if 2 (;@3;)
                local.get 6
                i64.extend_i32_u
                i64.const 65535
                i64.and
                i64.const 32
                i64.shl
                local.set 5
              end
              local.get 5
              i64.const 255
              i64.and
              i64.const 4
              i64.eq
              br_if 3 (;@1;)
              block ;; label = @5
                local.get 0
                i32.load8_u
                i32.const 3
                i32.ne
                br_if 0 (;@5;)
                local.get 0
                i32.load offset=4
                local.tee 2
                i32.load
                local.get 2
                i32.load offset=4
                i32.load
                call_indirect (type $.rodata)
                block ;; label = @6
                  local.get 2
                  i32.load offset=4
                  local.tee 1
                  i32.const 4
                  i32.add
                  i32.load
                  local.tee 6
                  i32.eqz
                  br_if 0 (;@6;)
                  local.get 2
                  i32.load
                  local.get 6
                  local.get 1
                  i32.const 8
                  i32.add
                  i32.load
                  call $__rust_dealloc
                end
                local.get 2
                i32.const 12
                i32.const 4
                call $__rust_dealloc
              end
              local.get 0
              local.get 5
              i64.store align=4
              i32.const 1
              local.set 4
              br 3 (;@1;)
            end
            local.get 6
            local.get 2
            i32.const 1050108
            call $_ZN4core5slice5index26slice_start_index_len_fail17hc1badbc4c621eed6E
            unreachable
          end
          local.get 2
          br_if 0 (;@2;)
        end
      end
      local.get 3
      i32.const 32
      i32.add
      global.set $__stack_pointer
      local.get 4
    )
    (func $_ZN4core3fmt5Write9write_fmt17h233446b54f828e69E (;105;) (type 5) (param i32 i32) (result i32)
      (local i32)
      global.get $__stack_pointer
      i32.const 32
      i32.sub
      local.tee 2
      global.set $__stack_pointer
      local.get 2
      local.get 0
      i32.store offset=4
      local.get 2
      i32.const 8
      i32.add
      i32.const 16
      i32.add
      local.get 1
      i32.const 16
      i32.add
      i64.load align=4
      i64.store
      local.get 2
      i32.const 8
      i32.add
      i32.const 8
      i32.add
      local.get 1
      i32.const 8
      i32.add
      i64.load align=4
      i64.store
      local.get 2
      local.get 1
      i64.load align=4
      i64.store offset=8
      local.get 2
      i32.const 4
      i32.add
      i32.const 1049644
      local.get 2
      i32.const 8
      i32.add
      call $_ZN4core3fmt5write17h7365630cdee3db2cE
      local.set 1
      local.get 2
      i32.const 32
      i32.add
      global.set $__stack_pointer
      local.get 1
    )
    (func $_ZN4core3fmt5Write9write_fmt17h92fe164063206e0dE (;106;) (type 5) (param i32 i32) (result i32)
      (local i32)
      global.get $__stack_pointer
      i32.const 32
      i32.sub
      local.tee 2
      global.set $__stack_pointer
      local.get 2
      local.get 0
      i32.store offset=4
      local.get 2
      i32.const 8
      i32.add
      i32.const 16
      i32.add
      local.get 1
      i32.const 16
      i32.add
      i64.load align=4
      i64.store
      local.get 2
      i32.const 8
      i32.add
      i32.const 8
      i32.add
      local.get 1
      i32.const 8
      i32.add
      i64.load align=4
      i64.store
      local.get 2
      local.get 1
      i64.load align=4
      i64.store offset=8
      local.get 2
      i32.const 4
      i32.add
      i32.const 1049668
      local.get 2
      i32.const 8
      i32.add
      call $_ZN4core3fmt5write17h7365630cdee3db2cE
      local.set 1
      local.get 2
      i32.const 32
      i32.add
      global.set $__stack_pointer
      local.get 1
    )
    (func $_ZN3std9panicking12default_hook17h53dba662f5ef513eE (;107;) (type $.rodata) (param i32)
      (local i32 i32 i32 i64 i32)
      global.get $__stack_pointer
      i32.const 96
      i32.sub
      local.tee 1
      global.set $__stack_pointer
      i32.const 1
      local.set 2
      block ;; label = @1
        i32.const 0
        i32.load offset=1053096
        i32.const 1
        i32.gt_u
        br_if 0 (;@1;)
        call $_ZN3std5panic19get_backtrace_style17h359a43723316a875E
        i32.const 255
        i32.and
        local.set 2
      end
      local.get 1
      local.get 2
      i32.store8 offset=19
      block ;; label = @1
        block ;; label = @2
          block ;; label = @3
            block ;; label = @4
              local.get 0
              call $_ZN4core5panic10panic_info9PanicInfo8location17h3d7375e8ae0a75d3E
              local.tee 2
              i32.eqz
              br_if 0 (;@4;)
              local.get 1
              local.get 2
              i32.store offset=20
              local.get 1
              i32.const 8
              i32.add
              local.get 0
              call $_ZN4core5panic10panic_info9PanicInfo7payload17h058db8b903609c84E
              i32.const 12
              local.set 3
              local.get 1
              i32.load offset=8
              local.tee 2
              local.get 1
              i32.load offset=12
              i32.const 12
              i32.add
              i32.load
              call_indirect (type $.data)
              local.set 4
              block ;; label = @5
                block ;; label = @6
                  block ;; label = @7
                    block ;; label = @8
                      local.get 2
                      i32.eqz
                      br_if 0 (;@8;)
                      local.get 4
                      i64.const -8527728395957036344
                      i64.eq
                      br_if 1 (;@7;)
                    end
                    local.get 1
                    local.get 0
                    call $_ZN4core5panic10panic_info9PanicInfo7payload17h058db8b903609c84E
                    i32.const 1050680
                    local.set 0
                    local.get 1
                    i32.load
                    local.tee 2
                    local.get 1
                    i32.load offset=4
                    i32.const 12
                    i32.add
                    i32.load
                    call_indirect (type $.data)
                    local.set 4
                    local.get 2
                    i32.eqz
                    br_if 2 (;@5;)
                    local.get 4
                    i64.const 7643450500199061218
                    i64.ne
                    br_if 2 (;@5;)
                    local.get 2
                    i32.const 8
                    i32.add
                    local.set 0
                    local.get 2
                    i32.const 4
                    i32.add
                    local.set 2
                    br 1 (;@6;)
                  end
                  local.get 2
                  i32.const 4
                  i32.add
                  local.set 0
                end
                local.get 0
                i32.load
                local.set 3
                local.get 2
                i32.load
                local.set 0
              end
              local.get 1
              local.get 3
              i32.store offset=28
              local.get 1
              local.get 0
              i32.store offset=24
              i32.const 9
              local.set 2
              i32.const 1050692
              local.set 3
              block ;; label = @5
                call $_ZN3std10sys_common11thread_info14current_thread17hcefaa43913ab1aa9E
                local.tee 0
                i32.eqz
                br_if 0 (;@5;)
                local.get 0
                i32.load offset=8
                local.tee 5
                i32.eqz
                br_if 0 (;@5;)
                local.get 0
                i32.const 12
                i32.add
                i32.load
                i32.const -1
                i32.add
                local.set 2
                local.get 5
                local.set 3
              end
              local.get 1
              local.get 2
              i32.store offset=36
              local.get 1
              local.get 3
              i32.store offset=32
              local.get 1
              local.get 1
              i32.const 19
              i32.add
              i32.store offset=52
              local.get 1
              local.get 1
              i32.const 20
              i32.add
              i32.store offset=48
              local.get 1
              local.get 1
              i32.const 24
              i32.add
              i32.store offset=44
              local.get 1
              local.get 1
              i32.const 32
              i32.add
              i32.store offset=40
              i32.const 0
              i32.load8_u offset=1053034
              i32.eqz
              br_if 2 (;@2;)
              i32.const 0
              i32.const 1
              i32.store8 offset=1053034
              block ;; label = @5
                i32.const 0
                i32.load8_u offset=1053080
                br_if 0 (;@5;)
                i32.const 0
                i32.const 1
                i32.store8 offset=1053080
                i32.const 0
                i32.const 0
                i32.store offset=1053084
                br 3 (;@2;)
              end
              i32.const 0
              i32.load offset=1053084
              local.set 2
              i32.const 0
              i32.const 0
              i32.store offset=1053084
              local.get 2
              i32.eqz
              br_if 2 (;@2;)
              local.get 2
              i32.load8_u offset=8
              local.set 3
              local.get 2
              i32.const 1
              i32.store8 offset=8
              local.get 1
              local.get 3
              i32.const 1
              i32.and
              local.tee 3
              i32.store8 offset=63
              local.get 3
              br_if 1 (;@3;)
              block ;; label = @5
                block ;; label = @6
                  block ;; label = @7
                    i32.const 0
                    i32.load offset=1053064
                    i32.const 2147483647
                    i32.and
                    i32.eqz
                    br_if 0 (;@7;)
                    call $_ZN3std9panicking11panic_count17is_zero_slow_path17h54b1d48361cbaaa5E
                    local.set 3
                    local.get 1
                    i32.const 40
                    i32.add
                    local.get 2
                    i32.const 12
                    i32.add
                    i32.const 1050744
                    call $_ZN3std9panicking12default_hook28_$u7b$$u7b$closure$u7d$$u7d$17hd6bac0317693a95bE
                    local.get 3
                    br_if 1 (;@6;)
                    br 2 (;@5;)
                  end
                  local.get 1
                  i32.const 40
                  i32.add
                  local.get 2
                  i32.const 12
                  i32.add
                  i32.const 1050744
                  call $_ZN3std9panicking12default_hook28_$u7b$$u7b$closure$u7d$$u7d$17hd6bac0317693a95bE
                end
                i32.const 0
                i32.load offset=1053064
                i32.const 2147483647
                i32.and
                i32.eqz
                br_if 0 (;@5;)
                call $_ZN3std9panicking11panic_count17is_zero_slow_path17h54b1d48361cbaaa5E
                br_if 0 (;@5;)
                local.get 2
                i32.const 1
                i32.store8 offset=9
              end
              i32.const 0
              i32.const 1
              i32.store8 offset=1053034
              local.get 2
              i32.const 0
              i32.store8 offset=8
              block ;; label = @5
                i32.const 0
                i32.load8_u offset=1053080
                br_if 0 (;@5;)
                i32.const 0
                local.get 2
                i32.store offset=1053084
                i32.const 0
                i32.const 1
                i32.store8 offset=1053080
                br 4 (;@1;)
              end
              i32.const 0
              i32.load offset=1053084
              local.set 3
              i32.const 0
              local.get 2
              i32.store offset=1053084
              local.get 3
              i32.eqz
              br_if 3 (;@1;)
              local.get 3
              local.get 3
              i32.load
              local.tee 2
              i32.const -1
              i32.add
              i32.store
              local.get 2
              i32.const 1
              i32.ne
              br_if 3 (;@1;)
              local.get 3
              call $_ZN5alloc4sync12Arc$LT$T$GT$9drop_slow17h8be02026f0f2d218E
              br 3 (;@1;)
            end
            i32.const 1049744
            i32.const 43
            i32.const 1050784
            call $_ZN4core9panicking5panic17h72f0442034a99972E
            unreachable
          end
          local.get 1
          i32.const 0
          i32.store offset=84
          local.get 1
          i32.const 1049692
          i32.store offset=80
          local.get 1
          i32.const 1
          i32.store offset=76
          local.get 1
          i32.const 1051468
          i32.store offset=72
          local.get 1
          i32.const 0
          i32.store offset=64
          local.get 1
          i32.const 63
          i32.add
          local.get 1
          i32.const 64
          i32.add
          call $_ZN4core9panicking13assert_failed17hc5f43f1d90c4f3c5E
          unreachable
        end
        local.get 1
        i32.const 40
        i32.add
        local.get 1
        i32.const 88
        i32.add
        i32.const 1050704
        call $_ZN3std9panicking12default_hook28_$u7b$$u7b$closure$u7d$$u7d$17hd6bac0317693a95bE
      end
      block ;; label = @1
        local.get 0
        i32.eqz
        br_if 0 (;@1;)
        local.get 0
        local.get 0
        i32.load
        local.tee 2
        i32.const -1
        i32.add
        i32.store
        local.get 2
        i32.const 1
        i32.ne
        br_if 0 (;@1;)
        local.get 0
        call $_ZN5alloc4sync12Arc$LT$T$GT$9drop_slow17hd5dd5a51e36bdb3cE
      end
      local.get 1
      i32.const 96
      i32.add
      global.set $__stack_pointer
    )
    (func $_ZN4core3ptr100drop_in_place$LT$$RF$mut$u20$std..io..Write..write_fmt..Adapter$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$17h349c8c5d7377f4e7E (;108;) (type $.rodata) (param i32))
    (func $_ZN3std9panicking11panic_count17is_zero_slow_path17h54b1d48361cbaaa5E (;109;) (type 13) (result i32)
      i32.const 0
      i32.load offset=1053096
      i32.eqz
    )
    (func $_ZN4core3ptr205drop_in_place$LT$$LT$alloc..boxed..Box$LT$dyn$u20$core..error..Error$u2b$core..marker..Send$u2b$core..marker..Sync$GT$$u20$as$u20$core..convert..From$LT$alloc..string..String$GT$$GT$..from..StringError$GT$17h8c01aac05db91130E (;110;) (type $.rodata) (param i32)
      (local i32)
      block ;; label = @1
        local.get 0
        i32.load
        local.tee 1
        i32.eqz
        br_if 0 (;@1;)
        local.get 0
        i32.const 4
        i32.add
        i32.load
        local.get 1
        i32.const 1
        call $__rust_dealloc
      end
    )
    (func $_ZN5alloc4sync12Arc$LT$T$GT$9drop_slow17hd5dd5a51e36bdb3cE (;111;) (type $.rodata) (param i32)
      (local i32)
      block ;; label = @1
        local.get 0
        i32.load offset=8
        local.tee 1
        i32.eqz
        br_if 0 (;@1;)
        local.get 1
        i32.const 0
        i32.store8
        local.get 0
        i32.const 12
        i32.add
        i32.load
        local.tee 1
        i32.eqz
        br_if 0 (;@1;)
        local.get 0
        i32.load offset=8
        local.get 1
        i32.const 1
        call $__rust_dealloc
      end
      block ;; label = @1
        local.get 0
        i32.const -1
        i32.eq
        br_if 0 (;@1;)
        local.get 0
        local.get 0
        i32.load offset=4
        local.tee 1
        i32.const -1
        i32.add
        i32.store offset=4
        local.get 1
        i32.const 1
        i32.ne
        br_if 0 (;@1;)
        local.get 0
        i32.const 32
        i32.const 8
        call $__rust_dealloc
      end
    )
    (func $_ZN4core3ptr70drop_in_place$LT$std..panicking..begin_panic_handler..PanicPayload$GT$17hf1533a74c6311b13E (;112;) (type $.rodata) (param i32)
      (local i32)
      block ;; label = @1
        local.get 0
        i32.const 4
        i32.add
        i32.load
        local.tee 1
        i32.eqz
        br_if 0 (;@1;)
        local.get 0
        i32.load
        local.tee 0
        i32.eqz
        br_if 0 (;@1;)
        local.get 1
        local.get 0
        i32.const 1
        call $__rust_dealloc
      end
    )
    (func $_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17he451de32f2112359E (;113;) (type $.rodata) (param i32)
      (local i32 i32 i32)
      block ;; label = @1
        local.get 0
        i32.load8_u
        i32.const 3
        i32.ne
        br_if 0 (;@1;)
        local.get 0
        i32.load offset=4
        local.tee 1
        i32.load
        local.get 1
        i32.load offset=4
        i32.load
        call_indirect (type $.rodata)
        block ;; label = @2
          local.get 1
          i32.load offset=4
          local.tee 2
          i32.const 4
          i32.add
          i32.load
          local.tee 3
          i32.eqz
          br_if 0 (;@2;)
          local.get 1
          i32.load
          local.get 3
          local.get 2
          i32.const 8
          i32.add
          i32.load
          call $__rust_dealloc
        end
        local.get 0
        i32.load offset=4
        i32.const 12
        i32.const 4
        call $__rust_dealloc
      end
    )
    (func $_ZN4core3ptr88drop_in_place$LT$std..io..Write..write_fmt..Adapter$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$17h6b1cf27555d6cbb4E (;114;) (type $.rodata) (param i32)
      (local i32 i32 i32)
      block ;; label = @1
        local.get 0
        i32.load8_u
        i32.const 3
        i32.ne
        br_if 0 (;@1;)
        local.get 0
        i32.load offset=4
        local.tee 1
        i32.load
        local.get 1
        i32.load offset=4
        i32.load
        call_indirect (type $.rodata)
        block ;; label = @2
          local.get 1
          i32.load offset=4
          local.tee 2
          i32.const 4
          i32.add
          i32.load
          local.tee 3
          i32.eqz
          br_if 0 (;@2;)
          local.get 1
          i32.load
          local.get 3
          local.get 2
          i32.const 8
          i32.add
          i32.load
          call $__rust_dealloc
        end
        local.get 0
        i32.load offset=4
        i32.const 12
        i32.const 4
        call $__rust_dealloc
      end
    )
    (func $_ZN4core9panicking13assert_failed17hc5f43f1d90c4f3c5E (;115;) (type 3) (param i32 i32)
      (local i32)
      global.get $__stack_pointer
      i32.const 32
      i32.sub
      local.tee 2
      global.set $__stack_pointer
      local.get 2
      i32.const 1049724
      i32.store offset=4
      local.get 2
      local.get 0
      i32.store
      local.get 2
      i32.const 8
      i32.add
      i32.const 16
      i32.add
      local.get 1
      i32.const 16
      i32.add
      i64.load align=4
      i64.store
      local.get 2
      i32.const 8
      i32.add
      i32.const 8
      i32.add
      local.get 1
      i32.const 8
      i32.add
      i64.load align=4
      i64.store
      local.get 2
      local.get 1
      i64.load align=4
      i64.store offset=8
      i32.const 0
      local.get 2
      i32.const 1049728
      local.get 2
      i32.const 4
      i32.add
      i32.const 1049728
      local.get 2
      i32.const 8
      i32.add
      i32.const 1051532
      call $_ZN4core9panicking19assert_failed_inner17hb5f899dac140aae4E
      unreachable
    )
    (func $_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17ha261b6e3307b3bdcE (;116;) (type 5) (param i32 i32) (result i32)
      (local i32)
      global.get $__stack_pointer
      i32.const 16
      i32.sub
      local.tee 2
      global.set $__stack_pointer
      local.get 0
      i32.load
      local.set 0
      local.get 2
      i32.const 0
      i32.store offset=12
      block ;; label = @1
        block ;; label = @2
          local.get 1
          i32.const 128
          i32.lt_u
          br_if 0 (;@2;)
          block ;; label = @3
            local.get 1
            i32.const 2048
            i32.lt_u
            br_if 0 (;@3;)
            block ;; label = @4
              local.get 1
              i32.const 65536
              i32.lt_u
              br_if 0 (;@4;)
              local.get 2
              local.get 1
              i32.const 63
              i32.and
              i32.const 128
              i32.or
              i32.store8 offset=15
              local.get 2
              local.get 1
              i32.const 6
              i32.shr_u
              i32.const 63
              i32.and
              i32.const 128
              i32.or
              i32.store8 offset=14
              local.get 2
              local.get 1
              i32.const 12
              i32.shr_u
              i32.const 63
              i32.and
              i32.const 128
              i32.or
              i32.store8 offset=13
              local.get 2
              local.get 1
              i32.const 18
              i32.shr_u
              i32.const 7
              i32.and
              i32.const 240
              i32.or
              i32.store8 offset=12
              i32.const 4
              local.set 1
              br 3 (;@1;)
            end
            local.get 2
            local.get 1
            i32.const 63
            i32.and
            i32.const 128
            i32.or
            i32.store8 offset=14
            local.get 2
            local.get 1
            i32.const 12
            i32.shr_u
            i32.const 224
            i32.or
            i32.store8 offset=12
            local.get 2
            local.get 1
            i32.const 6
            i32.shr_u
            i32.const 63
            i32.and
            i32.const 128
            i32.or
            i32.store8 offset=13
            i32.const 3
            local.set 1
            br 2 (;@1;)
          end
          local.get 2
          local.get 1
          i32.const 63
          i32.and
          i32.const 128
          i32.or
          i32.store8 offset=13
          local.get 2
          local.get 1
          i32.const 6
          i32.shr_u
          i32.const 192
          i32.or
          i32.store8 offset=12
          i32.const 2
          local.set 1
          br 1 (;@1;)
        end
        local.get 2
        local.get 1
        i32.store8 offset=12
        i32.const 1
        local.set 1
      end
      local.get 0
      local.get 2
      i32.const 12
      i32.add
      local.get 1
      call $_ZN80_$LT$std..io..Write..write_fmt..Adapter$LT$T$GT$$u20$as$u20$core..fmt..Write$GT$9write_str17h87277678b379804cE
      local.set 1
      local.get 2
      i32.const 16
      i32.add
      global.set $__stack_pointer
      local.get 1
    )
    (func $_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17hb4067b84d41cee29E (;117;) (type 5) (param i32 i32) (result i32)
      local.get 0
      i32.load
      local.get 1
      call $_ZN4core3fmt5Write10write_char17hd300a41da9ed30d9E
    )
    (func $_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17hf30391acb63dc78cE (;118;) (type 5) (param i32 i32) (result i32)
      (local i32 i32)
      global.get $__stack_pointer
      i32.const 16
      i32.sub
      local.tee 2
      global.set $__stack_pointer
      local.get 0
      i32.load
      local.set 0
      block ;; label = @1
        block ;; label = @2
          block ;; label = @3
            block ;; label = @4
              local.get 1
              i32.const 128
              i32.lt_u
              br_if 0 (;@4;)
              local.get 2
              i32.const 0
              i32.store offset=12
              local.get 1
              i32.const 2048
              i32.ge_u
              br_if 1 (;@3;)
              local.get 2
              local.get 1
              i32.const 63
              i32.and
              i32.const 128
              i32.or
              i32.store8 offset=13
              local.get 2
              local.get 1
              i32.const 6
              i32.shr_u
              i32.const 192
              i32.or
              i32.store8 offset=12
              i32.const 2
              local.set 1
              br 2 (;@2;)
            end
            block ;; label = @4
              local.get 0
              i32.load offset=8
              local.tee 3
              local.get 0
              i32.load
              i32.ne
              br_if 0 (;@4;)
              local.get 0
              local.get 3
              call $_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17h268131898d3733d1E
              local.get 0
              i32.load offset=8
              local.set 3
            end
            local.get 0
            local.get 3
            i32.const 1
            i32.add
            i32.store offset=8
            local.get 0
            i32.load offset=4
            local.get 3
            i32.add
            local.get 1
            i32.store8
            br 2 (;@1;)
          end
          block ;; label = @3
            local.get 1
            i32.const 65536
            i32.lt_u
            br_if 0 (;@3;)
            local.get 2
            local.get 1
            i32.const 63
            i32.and
            i32.const 128
            i32.or
            i32.store8 offset=15
            local.get 2
            local.get 1
            i32.const 6
            i32.shr_u
            i32.const 63
            i32.and
            i32.const 128
            i32.or
            i32.store8 offset=14
            local.get 2
            local.get 1
            i32.const 12
            i32.shr_u
            i32.const 63
            i32.and
            i32.const 128
            i32.or
            i32.store8 offset=13
            local.get 2
            local.get 1
            i32.const 18
            i32.shr_u
            i32.const 7
            i32.and
            i32.const 240
            i32.or
            i32.store8 offset=12
            i32.const 4
            local.set 1
            br 1 (;@2;)
          end
          local.get 2
          local.get 1
          i32.const 63
          i32.and
          i32.const 128
          i32.or
          i32.store8 offset=14
          local.get 2
          local.get 1
          i32.const 12
          i32.shr_u
          i32.const 224
          i32.or
          i32.store8 offset=12
          local.get 2
          local.get 1
          i32.const 6
          i32.shr_u
          i32.const 63
          i32.and
          i32.const 128
          i32.or
          i32.store8 offset=13
          i32.const 3
          local.set 1
        end
        block ;; label = @2
          local.get 0
          i32.load
          local.get 0
          i32.load offset=8
          local.tee 3
          i32.sub
          local.get 1
          i32.ge_u
          br_if 0 (;@2;)
          local.get 0
          local.get 3
          local.get 1
          call $_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve21do_reserve_and_handle17h998b51ee8b795c17E
          local.get 0
          i32.load offset=8
          local.set 3
        end
        local.get 0
        i32.load offset=4
        local.get 3
        i32.add
        local.get 2
        i32.const 12
        i32.add
        local.get 1
        call $memcpy
        drop
        local.get 0
        local.get 3
        local.get 1
        i32.add
        i32.store offset=8
      end
      local.get 2
      i32.const 16
      i32.add
      global.set $__stack_pointer
      i32.const 0
    )
    (func $_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17h268131898d3733d1E (;119;) (type 3) (param i32 i32)
      (local i32 i32 i32)
      global.get $__stack_pointer
      i32.const 32
      i32.sub
      local.tee 2
      global.set $__stack_pointer
      block ;; label = @1
        block ;; label = @2
          local.get 1
          i32.const 1
          i32.add
          local.tee 1
          i32.eqz
          br_if 0 (;@2;)
          local.get 0
          i32.load
          local.tee 3
          i32.const 1
          i32.shl
          local.tee 4
          local.get 1
          local.get 4
          local.get 1
          i32.gt_u
          select
          local.tee 1
          i32.const 8
          local.get 1
          i32.const 8
          i32.gt_u
          select
          local.tee 1
          i32.const -1
          i32.xor
          i32.const 31
          i32.shr_u
          local.set 4
          block ;; label = @3
            block ;; label = @4
              local.get 3
              i32.eqz
              br_if 0 (;@4;)
              local.get 2
              i32.const 1
              i32.store offset=24
              local.get 2
              local.get 3
              i32.store offset=20
              local.get 2
              local.get 0
              i32.const 4
              i32.add
              i32.load
              i32.store offset=16
              br 1 (;@3;)
            end
            local.get 2
            i32.const 0
            i32.store offset=24
          end
          local.get 2
          local.get 1
          local.get 4
          local.get 2
          i32.const 16
          i32.add
          call $_ZN5alloc7raw_vec11finish_grow17h44981df98dc1ae06E
          local.get 2
          i32.load offset=4
          local.set 3
          block ;; label = @3
            local.get 2
            i32.load
            br_if 0 (;@3;)
            local.get 0
            local.get 1
            i32.store
            local.get 0
            local.get 3
            i32.store offset=4
            br 2 (;@1;)
          end
          local.get 2
          i32.const 8
          i32.add
          i32.load
          local.tee 0
          i32.const -2147483647
          i32.eq
          br_if 1 (;@1;)
          local.get 0
          i32.eqz
          br_if 0 (;@2;)
          local.get 3
          local.get 0
          call $_ZN5alloc5alloc18handle_alloc_error17h3a7121d6b22d4137E
          unreachable
        end
        call $_ZN5alloc7raw_vec17capacity_overflow17ha0bfce3c627a68c1E
        unreachable
      end
      local.get 2
      i32.const 32
      i32.add
      global.set $__stack_pointer
    )
    (func $_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_fmt17h21b5c32e364029c5E (;120;) (type 5) (param i32 i32) (result i32)
      (local i32)
      global.get $__stack_pointer
      i32.const 32
      i32.sub
      local.tee 2
      global.set $__stack_pointer
      local.get 2
      local.get 0
      i32.load
      i32.store offset=4
      local.get 2
      i32.const 8
      i32.add
      i32.const 16
      i32.add
      local.get 1
      i32.const 16
      i32.add
      i64.load align=4
      i64.store
      local.get 2
      i32.const 8
      i32.add
      i32.const 8
      i32.add
      local.get 1
      i32.const 8
      i32.add
      i64.load align=4
      i64.store
      local.get 2
      local.get 1
      i64.load align=4
      i64.store offset=8
      local.get 2
      i32.const 4
      i32.add
      i32.const 1049620
      local.get 2
      i32.const 8
      i32.add
      call $_ZN4core3fmt5write17h7365630cdee3db2cE
      local.set 1
      local.get 2
      i32.const 32
      i32.add
      global.set $__stack_pointer
      local.get 1
    )
    (func $_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_fmt17he9c5ca99d3c7b286E (;121;) (type 5) (param i32 i32) (result i32)
      (local i32)
      global.get $__stack_pointer
      i32.const 32
      i32.sub
      local.tee 2
      global.set $__stack_pointer
      local.get 2
      local.get 0
      i32.load
      i32.store offset=4
      local.get 2
      i32.const 8
      i32.add
      i32.const 16
      i32.add
      local.get 1
      i32.const 16
      i32.add
      i64.load align=4
      i64.store
      local.get 2
      i32.const 8
      i32.add
      i32.const 8
      i32.add
      local.get 1
      i32.const 8
      i32.add
      i64.load align=4
      i64.store
      local.get 2
      local.get 1
      i64.load align=4
      i64.store offset=8
      local.get 2
      i32.const 4
      i32.add
      i32.const 1049668
      local.get 2
      i32.const 8
      i32.add
      call $_ZN4core3fmt5write17h7365630cdee3db2cE
      local.set 1
      local.get 2
      i32.const 32
      i32.add
      global.set $__stack_pointer
      local.get 1
    )
    (func $_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_fmt17hfae38d004ae9eed9E (;122;) (type 5) (param i32 i32) (result i32)
      (local i32)
      global.get $__stack_pointer
      i32.const 32
      i32.sub
      local.tee 2
      global.set $__stack_pointer
      local.get 2
      local.get 0
      i32.load
      i32.store offset=4
      local.get 2
      i32.const 8
      i32.add
      i32.const 16
      i32.add
      local.get 1
      i32.const 16
      i32.add
      i64.load align=4
      i64.store
      local.get 2
      i32.const 8
      i32.add
      i32.const 8
      i32.add
      local.get 1
      i32.const 8
      i32.add
      i64.load align=4
      i64.store
      local.get 2
      local.get 1
      i64.load align=4
      i64.store offset=8
      local.get 2
      i32.const 4
      i32.add
      i32.const 1049644
      local.get 2
      i32.const 8
      i32.add
      call $_ZN4core3fmt5write17h7365630cdee3db2cE
      local.set 1
      local.get 2
      i32.const 32
      i32.add
      global.set $__stack_pointer
      local.get 1
    )
    (func $_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h60163d5878dbcf43E (;123;) (type 4) (param i32 i32 i32) (result i32)
      local.get 0
      i32.load
      local.get 1
      local.get 2
      call $_ZN80_$LT$std..io..Write..write_fmt..Adapter$LT$T$GT$$u20$as$u20$core..fmt..Write$GT$9write_str17h87277678b379804cE
    )
    (func $_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17hc164a28e775488b6E (;124;) (type 4) (param i32 i32 i32) (result i32)
      (local i32)
      block ;; label = @1
        local.get 0
        i32.load
        local.tee 0
        i32.load
        local.get 0
        i32.load offset=8
        local.tee 3
        i32.sub
        local.get 2
        i32.ge_u
        br_if 0 (;@1;)
        local.get 0
        local.get 3
        local.get 2
        call $_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve21do_reserve_and_handle17h998b51ee8b795c17E
        local.get 0
        i32.load offset=8
        local.set 3
      end
      local.get 0
      i32.load offset=4
      local.get 3
      i32.add
      local.get 1
      local.get 2
      call $memcpy
      drop
      local.get 0
      local.get 3
      local.get 2
      i32.add
      i32.store offset=8
      i32.const 0
    )
    (func $_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17he9dd83d1d6dfd198E (;125;) (type 4) (param i32 i32 i32) (result i32)
      (local i32)
      block ;; label = @1
        local.get 0
        i32.load
        i32.load offset=8
        local.tee 0
        i32.load
        local.get 0
        i32.load offset=8
        local.tee 3
        i32.sub
        local.get 2
        i32.ge_u
        br_if 0 (;@1;)
        local.get 0
        local.get 3
        local.get 2
        call $_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve21do_reserve_and_handle17h998b51ee8b795c17E
        local.get 0
        i32.load offset=8
        local.set 3
      end
      local.get 0
      i32.load offset=4
      local.get 3
      i32.add
      local.get 1
      local.get 2
      call $memcpy
      drop
      local.get 0
      local.get 3
      local.get 2
      i32.add
      i32.store offset=8
      i32.const 0
    )
    (func $_ZN5alloc4sync12Arc$LT$T$GT$9drop_slow17h8be02026f0f2d218E (;126;) (type $.rodata) (param i32)
      (local i32)
      block ;; label = @1
        local.get 0
        i32.const 12
        i32.add
        i32.load
        local.tee 1
        i32.eqz
        br_if 0 (;@1;)
        local.get 0
        i32.const 16
        i32.add
        i32.load
        local.get 1
        i32.const 1
        call $__rust_dealloc
      end
      block ;; label = @1
        local.get 0
        i32.const -1
        i32.eq
        br_if 0 (;@1;)
        local.get 0
        local.get 0
        i32.load offset=4
        local.tee 1
        i32.const -1
        i32.add
        i32.store offset=4
        local.get 1
        i32.const 1
        i32.ne
        br_if 0 (;@1;)
        local.get 0
        i32.const 24
        i32.const 4
        call $__rust_dealloc
      end
    )
    (func $_ZN5alloc7raw_vec11finish_grow17h44981df98dc1ae06E (;127;) (type 8) (param i32 i32 i32 i32)
      (local i32)
      block ;; label = @1
        block ;; label = @2
          local.get 2
          i32.eqz
          br_if 0 (;@2;)
          block ;; label = @3
            block ;; label = @4
              block ;; label = @5
                block ;; label = @6
                  block ;; label = @7
                    local.get 1
                    i32.const 0
                    i32.lt_s
                    br_if 0 (;@7;)
                    local.get 3
                    i32.load offset=8
                    i32.eqz
                    br_if 2 (;@5;)
                    local.get 3
                    i32.load offset=4
                    local.tee 4
                    br_if 1 (;@6;)
                    local.get 1
                    br_if 3 (;@4;)
                    local.get 2
                    local.set 3
                    br 4 (;@3;)
                  end
                  local.get 0
                  i32.const 8
                  i32.add
                  i32.const 0
                  i32.store
                  br 5 (;@1;)
                end
                local.get 3
                i32.load
                local.get 4
                local.get 2
                local.get 1
                call $__rust_realloc
                local.set 3
                br 2 (;@3;)
              end
              local.get 1
              br_if 0 (;@4;)
              local.get 2
              local.set 3
              br 1 (;@3;)
            end
            local.get 1
            local.get 2
            call $__rust_alloc
            local.set 3
          end
          block ;; label = @3
            local.get 3
            i32.eqz
            br_if 0 (;@3;)
            local.get 0
            local.get 3
            i32.store offset=4
            local.get 0
            i32.const 8
            i32.add
            local.get 1
            i32.store
            local.get 0
            i32.const 0
            i32.store
            return
          end
          local.get 0
          local.get 1
          i32.store offset=4
          local.get 0
          i32.const 8
          i32.add
          local.get 2
          i32.store
          br 1 (;@1;)
        end
        local.get 0
        local.get 1
        i32.store offset=4
        local.get 0
        i32.const 8
        i32.add
        i32.const 0
        i32.store
      end
      local.get 0
      i32.const 1
      i32.store
    )
    (func $_ZN3std6thread8ThreadId3new9exhausted17h7d845e0e4f95c231E (;128;) (type 7)
      (local i32)
      global.get $__stack_pointer
      i32.const 32
      i32.sub
      local.tee 0
      global.set $__stack_pointer
      local.get 0
      i32.const 20
      i32.add
      i32.const 1
      i32.store
      local.get 0
      i32.const 28
      i32.add
      i32.const 0
      i32.store
      local.get 0
      i32.const 1049952
      i32.store offset=16
      local.get 0
      i32.const 1049692
      i32.store offset=24
      local.get 0
      i32.const 0
      i32.store offset=8
      local.get 0
      i32.const 8
      i32.add
      i32.const 1049960
      call $_ZN4core9panicking9panic_fmt17h86214d64a55c1d57E
      unreachable
    )
    (func $_ZN3std2io5Write9write_fmt17h0af290cbcfa413c3E (;129;) (type 2) (param i32 i32 i32)
      (local i32)
      global.get $__stack_pointer
      i32.const 48
      i32.sub
      local.tee 3
      global.set $__stack_pointer
      local.get 3
      i32.const 4
      i32.store8 offset=8
      local.get 3
      local.get 1
      i32.store offset=16
      local.get 3
      i32.const 24
      i32.add
      i32.const 16
      i32.add
      local.get 2
      i32.const 16
      i32.add
      i64.load align=4
      i64.store
      local.get 3
      i32.const 24
      i32.add
      i32.const 8
      i32.add
      local.get 2
      i32.const 8
      i32.add
      i64.load align=4
      i64.store
      local.get 3
      local.get 2
      i64.load align=4
      i64.store offset=24
      block ;; label = @1
        block ;; label = @2
          local.get 3
          i32.const 8
          i32.add
          i32.const 1050216
          local.get 3
          i32.const 24
          i32.add
          call $_ZN4core3fmt5write17h7365630cdee3db2cE
          i32.eqz
          br_if 0 (;@2;)
          block ;; label = @3
            local.get 3
            i32.load8_u offset=8
            i32.const 4
            i32.ne
            br_if 0 (;@3;)
            local.get 0
            i32.const 1050204
            i32.store offset=4
            local.get 0
            i32.const 2
            i32.store
            br 2 (;@1;)
          end
          local.get 0
          local.get 3
          i64.load offset=8
          i64.store align=4
          br 1 (;@1;)
        end
        local.get 0
        i32.const 4
        i32.store8
        local.get 3
        i32.load8_u offset=8
        i32.const 3
        i32.ne
        br_if 0 (;@1;)
        local.get 3
        i32.load offset=12
        local.tee 2
        i32.load
        local.get 2
        i32.load offset=4
        i32.load
        call_indirect (type $.rodata)
        block ;; label = @2
          local.get 2
          i32.load offset=4
          local.tee 0
          i32.const 4
          i32.add
          i32.load
          local.tee 1
          i32.eqz
          br_if 0 (;@2;)
          local.get 2
          i32.load
          local.get 1
          local.get 0
          i32.const 8
          i32.add
          i32.load
          call $__rust_dealloc
        end
        local.get 3
        i32.load offset=12
        i32.const 12
        i32.const 4
        call $__rust_dealloc
      end
      local.get 3
      i32.const 48
      i32.add
      global.set $__stack_pointer
    )
    (func $_ZN3std3sys4wasi14abort_internal17ha87152b5c18d637bE (;130;) (type 7)
      call $abort
      unreachable
    )
    (func $_ZN3std10sys_common11thread_info14current_thread17hcefaa43913ab1aa9E (;131;) (type 13) (result i32)
      (local i32 i32 i32 i32 i32 i64 i64 i64)
      global.get $__stack_pointer
      i32.const 32
      i32.sub
      local.tee 0
      global.set $__stack_pointer
      block ;; label = @1
        block ;; label = @2
          block ;; label = @3
            block ;; label = @4
              i32.const 0
              i32.load offset=1053088
              br_if 0 (;@4;)
              i32.const 0
              i32.const -1
              i32.store offset=1053088
              block ;; label = @5
                i32.const 0
                i32.load offset=1053092
                local.tee 1
                br_if 0 (;@5;)
                local.get 0
                i32.const 16
                i32.add
                i32.const 24
                i32.const 8
                call $_ZN5alloc4sync32arcinner_layout_for_value_layout17hafde525a65d7dadfE
                local.get 0
                i32.load offset=20
                local.set 2
                local.get 0
                i32.load offset=16
                local.set 3
                local.get 0
                i32.const 8
                i32.add
                i32.const 24
                i32.const 8
                call $_ZN5alloc4sync32arcinner_layout_for_value_layout17hafde525a65d7dadfE
                local.get 0
                i32.load offset=12
                local.set 1
                block ;; label = @6
                  local.get 0
                  i32.load offset=8
                  local.tee 4
                  i32.eqz
                  br_if 0 (;@6;)
                  local.get 4
                  local.get 1
                  call $__rust_alloc
                  local.set 1
                end
                local.get 1
                i32.eqz
                br_if 2 (;@3;)
                local.get 1
                i64.const 4294967297
                i64.store align=4
                local.get 1
                i32.const 0
                i32.store offset=8
                i32.const 0
                i64.load offset=1053072
                local.set 5
                loop ;; label = @6
                  local.get 5
                  i64.const 1
                  i64.add
                  local.tee 6
                  i64.eqz
                  br_if 4 (;@2;)
                  i32.const 0
                  local.get 6
                  i32.const 0
                  i64.load offset=1053072
                  local.tee 7
                  local.get 7
                  local.get 5
                  i64.eq
                  local.tee 4
                  select
                  i64.store offset=1053072
                  local.get 7
                  local.set 5
                  local.get 4
                  i32.eqz
                  br_if 0 (;@6;)
                end
                local.get 1
                i32.const 0
                i32.store16 offset=20
                i32.const 0
                local.get 1
                i32.store offset=1053092
                local.get 1
                i32.const 16
                i32.add
                i32.const 0
                i32.store
                local.get 1
                i32.const 24
                i32.add
                local.get 6
                i64.store
              end
              local.get 1
              local.get 1
              i32.load
              local.tee 4
              i32.const 1
              i32.add
              i32.store
              local.get 4
              i32.const -1
              i32.le_s
              br_if 3 (;@1;)
              i32.const 0
              i32.const 0
              i32.load offset=1053088
              i32.const 1
              i32.add
              i32.store offset=1053088
              local.get 0
              i32.const 32
              i32.add
              global.set $__stack_pointer
              local.get 1
              return
            end
            i32.const 1049692
            i32.const 16
            local.get 0
            i32.const 24
            i32.add
            i32.const 1049708
            i32.const 1050512
            call $_ZN4core6result13unwrap_failed17h97c1c0aa7b263f08E
            unreachable
          end
          local.get 3
          local.get 2
          call $_ZN5alloc5alloc18handle_alloc_error17h3a7121d6b22d4137E
          unreachable
        end
        call $_ZN3std6thread8ThreadId3new9exhausted17h7d845e0e4f95c231E
        unreachable
      end
      unreachable
      unreachable
    )
    (func $_ZN3std3env11current_dir17h560a08355886b1efE (;132;) (type $.rodata) (param i32)
      (local i32 i32 i32 i32 i32)
      global.get $__stack_pointer
      i32.const 16
      i32.sub
      local.tee 1
      global.set $__stack_pointer
      i32.const 512
      local.set 2
      block ;; label = @1
        block ;; label = @2
          block ;; label = @3
            block ;; label = @4
              i32.const 512
              i32.const 1
              call $__rust_alloc
              local.tee 3
              i32.eqz
              br_if 0 (;@4;)
              local.get 1
              local.get 3
              i32.store offset=4
              local.get 1
              i32.const 512
              i32.store
              local.get 3
              i32.const 512
              call $getcwd
              br_if 1 (;@3;)
              block ;; label = @5
                block ;; label = @6
                  block ;; label = @7
                    i32.const 0
                    i32.load offset=1053596
                    local.tee 2
                    i32.const 68
                    i32.ne
                    br_if 0 (;@7;)
                    i32.const 512
                    local.set 2
                    br 1 (;@6;)
                  end
                  local.get 0
                  i64.const 1
                  i64.store align=4
                  local.get 0
                  i32.const 8
                  i32.add
                  local.get 2
                  i32.store
                  i32.const 512
                  local.set 2
                  br 1 (;@5;)
                end
                loop ;; label = @6
                  local.get 1
                  local.get 2
                  i32.store offset=8
                  local.get 1
                  local.get 2
                  i32.const 1
                  call $_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve21do_reserve_and_handle17h998b51ee8b795c17E
                  local.get 1
                  i32.load offset=4
                  local.tee 3
                  local.get 1
                  i32.load
                  local.tee 2
                  call $getcwd
                  br_if 3 (;@3;)
                  i32.const 0
                  i32.load offset=1053596
                  local.tee 4
                  i32.const 68
                  i32.eq
                  br_if 0 (;@6;)
                end
                local.get 0
                i64.const 1
                i64.store align=4
                local.get 0
                i32.const 8
                i32.add
                local.get 4
                i32.store
                local.get 2
                i32.eqz
                br_if 3 (;@2;)
              end
              local.get 3
              local.get 2
              i32.const 1
              call $__rust_dealloc
              br 2 (;@2;)
            end
            i32.const 512
            i32.const 1
            call $_ZN5alloc5alloc18handle_alloc_error17h3a7121d6b22d4137E
            unreachable
          end
          local.get 1
          local.get 3
          call $_ZN4core3ffi5c_str4CStr8from_ptr9strlen_rt17h98ae4a7c046d89dcE
          local.tee 4
          i32.store offset=8
          block ;; label = @3
            local.get 2
            local.get 4
            i32.le_u
            br_if 0 (;@3;)
            block ;; label = @4
              block ;; label = @5
                local.get 4
                br_if 0 (;@5;)
                i32.const 1
                local.set 5
                local.get 3
                local.get 2
                i32.const 1
                call $__rust_dealloc
                br 1 (;@4;)
              end
              local.get 3
              local.get 2
              i32.const 1
              local.get 4
              call $__rust_realloc
              local.tee 5
              i32.eqz
              br_if 3 (;@1;)
            end
            local.get 1
            local.get 4
            i32.store
            local.get 1
            local.get 5
            i32.store offset=4
          end
          local.get 0
          local.get 1
          i64.load
          i64.store offset=4 align=4
          local.get 0
          i32.const 0
          i32.store
          local.get 0
          i32.const 12
          i32.add
          local.get 1
          i32.const 8
          i32.add
          i32.load
          i32.store
        end
        local.get 1
        i32.const 16
        i32.add
        global.set $__stack_pointer
        return
      end
      local.get 4
      i32.const 1
      call $_ZN5alloc5alloc18handle_alloc_error17h3a7121d6b22d4137E
      unreachable
    )
    (func $_ZN3std3env7_var_os17h04df8905a9d4ebcfE (;133;) (type 2) (param i32 i32 i32)
      (local i32 i64 i32 i32)
      global.get $__stack_pointer
      i32.const 416
      i32.sub
      local.tee 3
      global.set $__stack_pointer
      block ;; label = @1
        block ;; label = @2
          local.get 2
          i32.const 383
          i32.gt_u
          br_if 0 (;@2;)
          local.get 3
          i32.const 16
          i32.add
          local.get 1
          local.get 2
          call $memcpy
          drop
          local.get 3
          i32.const 16
          i32.add
          local.get 2
          i32.add
          i32.const 0
          i32.store8
          local.get 3
          i32.const 400
          i32.add
          local.get 3
          i32.const 16
          i32.add
          local.get 2
          i32.const 1
          i32.add
          call $_ZN4core3ffi5c_str4CStr19from_bytes_with_nul17he2085b77ca1571c9E
          block ;; label = @3
            local.get 3
            i32.load offset=400
            br_if 0 (;@3;)
            i32.const 4
            local.set 2
            local.get 3
            i32.load offset=404
            call $getenv
            local.set 1
            local.get 3
            i32.const 4
            i32.store8 offset=8
            local.get 3
            local.get 1
            i32.store offset=12
            br 2 (;@1;)
          end
          local.get 3
          i32.const 0
          i64.load offset=1050336
          local.tee 4
          i64.store offset=8
          local.get 4
          i32.wrap_i64
          local.set 2
          br 1 (;@1;)
        end
        local.get 3
        i32.const 8
        i32.add
        local.get 1
        local.get 2
        call $_ZN3std3sys6common14small_c_string24run_with_cstr_allocating17h12c321c0ce21a6e9E
        local.get 3
        i32.load8_u offset=8
        local.set 2
      end
      block ;; label = @1
        block ;; label = @2
          local.get 2
          i32.const 255
          i32.and
          i32.const 4
          i32.eq
          br_if 0 (;@2;)
          block ;; label = @3
            local.get 3
            i32.load8_u offset=8
            i32.const 3
            i32.ne
            br_if 0 (;@3;)
            local.get 3
            i32.load offset=12
            local.tee 2
            i32.load
            local.get 2
            i32.load offset=4
            i32.load
            call_indirect (type $.rodata)
            block ;; label = @4
              local.get 2
              i32.load offset=4
              local.tee 1
              i32.const 4
              i32.add
              i32.load
              local.tee 5
              i32.eqz
              br_if 0 (;@4;)
              local.get 2
              i32.load
              local.get 5
              local.get 1
              i32.const 8
              i32.add
              i32.load
              call $__rust_dealloc
            end
            local.get 2
            i32.const 12
            i32.const 4
            call $__rust_dealloc
          end
          local.get 0
          i32.const 0
          i32.store offset=4
          br 1 (;@1;)
        end
        block ;; label = @2
          local.get 3
          i32.load offset=12
          local.tee 1
          i32.eqz
          br_if 0 (;@2;)
          block ;; label = @3
            block ;; label = @4
              block ;; label = @5
                block ;; label = @6
                  local.get 1
                  call $_ZN4core3ffi5c_str4CStr8from_ptr9strlen_rt17h98ae4a7c046d89dcE
                  local.tee 2
                  br_if 0 (;@6;)
                  i32.const 1
                  local.set 5
                  br 1 (;@5;)
                end
                local.get 2
                i32.const -1
                i32.gt_s
                local.tee 6
                i32.eqz
                br_if 1 (;@4;)
                local.get 2
                local.get 6
                call $__rust_alloc
                local.tee 5
                i32.eqz
                br_if 2 (;@3;)
              end
              local.get 5
              local.get 1
              local.get 2
              call $memcpy
              local.set 1
              local.get 0
              local.get 2
              i32.store offset=8
              local.get 0
              local.get 1
              i32.store offset=4
              local.get 0
              local.get 2
              i32.store
              br 3 (;@1;)
            end
            call $_ZN5alloc7raw_vec17capacity_overflow17ha0bfce3c627a68c1E
            unreachable
          end
          local.get 2
          local.get 6
          call $_ZN5alloc5alloc18handle_alloc_error17h3a7121d6b22d4137E
          unreachable
        end
        local.get 0
        i32.const 0
        i32.store offset=4
      end
      local.get 3
      i32.const 416
      i32.add
      global.set $__stack_pointer
    )
    (func $_ZN3std3sys6common14small_c_string24run_with_cstr_allocating17h12c321c0ce21a6e9E (;134;) (type 2) (param i32 i32 i32)
      (local i32 i32)
      global.get $__stack_pointer
      i32.const 16
      i32.sub
      local.tee 3
      global.set $__stack_pointer
      local.get 3
      local.get 1
      local.get 2
      call $_ZN72_$LT$$RF$str$u20$as$u20$alloc..ffi..c_str..CString..new..SpecNewImpl$GT$13spec_new_impl17hf84b8103401e97c9E
      block ;; label = @1
        block ;; label = @2
          local.get 3
          i32.load offset=8
          local.tee 2
          br_if 0 (;@2;)
          local.get 3
          i32.load offset=4
          local.set 2
          local.get 3
          i32.load
          local.tee 1
          call $getenv
          local.set 4
          local.get 0
          i32.const 4
          i32.store8
          local.get 0
          local.get 4
          i32.store offset=4
          local.get 1
          i32.const 0
          i32.store8
          local.get 2
          i32.eqz
          br_if 1 (;@1;)
          local.get 1
          local.get 2
          i32.const 1
          call $__rust_dealloc
          br 1 (;@1;)
        end
        local.get 0
        i32.const 0
        i64.load offset=1050336
        i64.store align=4
        local.get 3
        i32.load offset=4
        local.tee 0
        i32.eqz
        br_if 0 (;@1;)
        local.get 2
        local.get 0
        i32.const 1
        call $__rust_dealloc
      end
      local.get 3
      i32.const 16
      i32.add
      global.set $__stack_pointer
    )
    (func $_ZN3std3sys4wasi17decode_error_kind17h72f6181b6dd35be0E (;135;) (type 9) (param i32) (result i32)
      (local i32)
      i32.const 40
      local.set 1
      block ;; label = @1
        local.get 0
        i32.const 65535
        i32.gt_u
        br_if 0 (;@1;)
        i32.const 2
        local.set 1
        i32.const 1051584
        call $_ZN4wasi13lib_generated5Errno3raw17h7583c3dc59f4497dE
        i32.const 65535
        i32.and
        local.get 0
        i32.eq
        br_if 0 (;@1;)
        i32.const 3
        local.set 1
        i32.const 1051586
        call $_ZN4wasi13lib_generated5Errno3raw17h7583c3dc59f4497dE
        i32.const 65535
        i32.and
        local.get 0
        i32.eq
        br_if 0 (;@1;)
        i32.const 1
        local.set 1
        i32.const 1051588
        call $_ZN4wasi13lib_generated5Errno3raw17h7583c3dc59f4497dE
        i32.const 65535
        i32.and
        local.get 0
        i32.eq
        br_if 0 (;@1;)
        i32.const 1051590
        call $_ZN4wasi13lib_generated5Errno3raw17h7583c3dc59f4497dE
        i32.const 65535
        i32.and
        local.get 0
        i32.eq
        br_if 0 (;@1;)
        i32.const 11
        local.set 1
        i32.const 1051592
        call $_ZN4wasi13lib_generated5Errno3raw17h7583c3dc59f4497dE
        i32.const 65535
        i32.and
        local.get 0
        i32.eq
        br_if 0 (;@1;)
        i32.const 7
        local.set 1
        i32.const 1051594
        call $_ZN4wasi13lib_generated5Errno3raw17h7583c3dc59f4497dE
        i32.const 65535
        i32.and
        local.get 0
        i32.eq
        br_if 0 (;@1;)
        i32.const 6
        local.set 1
        i32.const 1051596
        call $_ZN4wasi13lib_generated5Errno3raw17h7583c3dc59f4497dE
        i32.const 65535
        i32.and
        local.get 0
        i32.eq
        br_if 0 (;@1;)
        i32.const 9
        local.set 1
        i32.const 1051598
        call $_ZN4wasi13lib_generated5Errno3raw17h7583c3dc59f4497dE
        i32.const 65535
        i32.and
        local.get 0
        i32.eq
        br_if 0 (;@1;)
        i32.const 8
        local.set 1
        i32.const 1051600
        call $_ZN4wasi13lib_generated5Errno3raw17h7583c3dc59f4497dE
        i32.const 65535
        i32.and
        local.get 0
        i32.eq
        br_if 0 (;@1;)
        i32.const 0
        local.set 1
        i32.const 1051602
        call $_ZN4wasi13lib_generated5Errno3raw17h7583c3dc59f4497dE
        i32.const 65535
        i32.and
        local.get 0
        i32.eq
        br_if 0 (;@1;)
        i32.const 35
        local.set 1
        i32.const 1051604
        call $_ZN4wasi13lib_generated5Errno3raw17h7583c3dc59f4497dE
        i32.const 65535
        i32.and
        local.get 0
        i32.eq
        br_if 0 (;@1;)
        i32.const 20
        local.set 1
        i32.const 1051606
        call $_ZN4wasi13lib_generated5Errno3raw17h7583c3dc59f4497dE
        i32.const 65535
        i32.and
        local.get 0
        i32.eq
        br_if 0 (;@1;)
        i32.const 22
        local.set 1
        i32.const 1051608
        call $_ZN4wasi13lib_generated5Errno3raw17h7583c3dc59f4497dE
        i32.const 65535
        i32.and
        local.get 0
        i32.eq
        br_if 0 (;@1;)
        i32.const 12
        local.set 1
        i32.const 1051610
        call $_ZN4wasi13lib_generated5Errno3raw17h7583c3dc59f4497dE
        i32.const 65535
        i32.and
        local.get 0
        i32.eq
        br_if 0 (;@1;)
        i32.const 13
        local.set 1
        i32.const 1051612
        call $_ZN4wasi13lib_generated5Errno3raw17h7583c3dc59f4497dE
        i32.const 65535
        i32.and
        local.get 0
        i32.eq
        br_if 0 (;@1;)
        i32.const 36
        local.set 1
        i32.const 1051614
        call $_ZN4wasi13lib_generated5Errno3raw17h7583c3dc59f4497dE
        i32.const 65535
        i32.and
        local.get 0
        i32.eq
        br_if 0 (;@1;)
        i32.const 38
        i32.const 40
        i32.const 1051616
        call $_ZN4wasi13lib_generated5Errno3raw17h7583c3dc59f4497dE
        i32.const 65535
        i32.and
        local.get 0
        i32.eq
        select
        local.set 1
      end
      local.get 1
    )
    (func $_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$5write17h3bbc92ac2094c10eE (;136;) (type 8) (param i32 i32 i32 i32)
      (local i32)
      block ;; label = @1
        local.get 1
        i32.load
        local.get 1
        i32.load offset=8
        local.tee 4
        i32.sub
        local.get 3
        i32.ge_u
        br_if 0 (;@1;)
        local.get 1
        local.get 4
        local.get 3
        call $_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve21do_reserve_and_handle17h998b51ee8b795c17E
        local.get 1
        i32.load offset=8
        local.set 4
      end
      local.get 1
      i32.load offset=4
      local.get 4
      i32.add
      local.get 2
      local.get 3
      call $memcpy
      drop
      local.get 0
      local.get 3
      i32.store offset=4
      local.get 1
      local.get 4
      local.get 3
      i32.add
      i32.store offset=8
      local.get 0
      i32.const 4
      i32.store8
    )
    (func $_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$14write_vectored17hb929fc95492cbc3fE (;137;) (type 8) (param i32 i32 i32 i32)
      (local i32 i32 i32 i32)
      block ;; label = @1
        block ;; label = @2
          local.get 3
          br_if 0 (;@2;)
          i32.const 0
          local.set 4
          br 1 (;@1;)
        end
        local.get 3
        i32.const -1
        i32.add
        i32.const 536870911
        i32.and
        local.tee 5
        i32.const 1
        i32.add
        local.tee 4
        i32.const 7
        i32.and
        local.set 6
        block ;; label = @2
          block ;; label = @3
            local.get 5
            i32.const 7
            i32.ge_u
            br_if 0 (;@3;)
            i32.const 0
            local.set 4
            local.get 2
            local.set 5
            br 1 (;@2;)
          end
          local.get 2
          i32.const 60
          i32.add
          local.set 5
          local.get 4
          i32.const 1073741816
          i32.and
          local.set 7
          i32.const 0
          local.set 4
          loop ;; label = @3
            local.get 5
            i32.load
            local.get 5
            i32.const -8
            i32.add
            i32.load
            local.get 5
            i32.const -16
            i32.add
            i32.load
            local.get 5
            i32.const -24
            i32.add
            i32.load
            local.get 5
            i32.const -32
            i32.add
            i32.load
            local.get 5
            i32.const -40
            i32.add
            i32.load
            local.get 5
            i32.const -48
            i32.add
            i32.load
            local.get 5
            i32.const -56
            i32.add
            i32.load
            local.get 4
            i32.add
            i32.add
            i32.add
            i32.add
            i32.add
            i32.add
            i32.add
            i32.add
            local.set 4
            local.get 5
            i32.const 64
            i32.add
            local.set 5
            local.get 7
            i32.const -8
            i32.add
            local.tee 7
            br_if 0 (;@3;)
          end
          local.get 5
          i32.const -60
          i32.add
          local.set 5
        end
        block ;; label = @2
          local.get 6
          i32.eqz
          br_if 0 (;@2;)
          local.get 5
          i32.const 4
          i32.add
          local.set 5
          loop ;; label = @3
            local.get 5
            i32.load
            local.get 4
            i32.add
            local.set 4
            local.get 5
            i32.const 8
            i32.add
            local.set 5
            local.get 6
            i32.const -1
            i32.add
            local.tee 6
            br_if 0 (;@3;)
          end
        end
        block ;; label = @2
          local.get 1
          i32.load
          local.get 1
          i32.load offset=8
          local.tee 5
          i32.sub
          local.get 4
          i32.ge_u
          br_if 0 (;@2;)
          local.get 1
          local.get 5
          local.get 4
          call $_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve21do_reserve_and_handle17h998b51ee8b795c17E
        end
        local.get 3
        i32.eqz
        br_if 0 (;@1;)
        local.get 2
        local.get 3
        i32.const 3
        i32.shl
        i32.add
        local.set 3
        local.get 1
        i32.load offset=8
        local.set 5
        loop ;; label = @2
          local.get 2
          i32.load
          local.set 7
          block ;; label = @3
            local.get 1
            i32.load
            local.get 5
            i32.sub
            local.get 2
            i32.const 4
            i32.add
            i32.load
            local.tee 6
            i32.ge_u
            br_if 0 (;@3;)
            local.get 1
            local.get 5
            local.get 6
            call $_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve21do_reserve_and_handle17h998b51ee8b795c17E
            local.get 1
            i32.load offset=8
            local.set 5
          end
          local.get 1
          i32.load offset=4
          local.get 5
          i32.add
          local.get 7
          local.get 6
          call $memcpy
          drop
          local.get 1
          local.get 5
          local.get 6
          i32.add
          local.tee 5
          i32.store offset=8
          local.get 2
          i32.const 8
          i32.add
          local.tee 2
          local.get 3
          i32.ne
          br_if 0 (;@2;)
        end
      end
      local.get 0
      i32.const 4
      i32.store8
      local.get 0
      local.get 4
      i32.store offset=4
    )
    (func $_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$17is_write_vectored17ha477b2335c60d28cE (;138;) (type 9) (param i32) (result i32)
      i32.const 1
    )
    (func $_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17h18a07051beee1ee4E (;139;) (type 8) (param i32 i32 i32 i32)
      (local i32)
      block ;; label = @1
        local.get 1
        i32.load
        local.get 1
        i32.load offset=8
        local.tee 4
        i32.sub
        local.get 3
        i32.ge_u
        br_if 0 (;@1;)
        local.get 1
        local.get 4
        local.get 3
        call $_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve21do_reserve_and_handle17h998b51ee8b795c17E
        local.get 1
        i32.load offset=8
        local.set 4
      end
      local.get 1
      i32.load offset=4
      local.get 4
      i32.add
      local.get 2
      local.get 3
      call $memcpy
      drop
      local.get 0
      i32.const 4
      i32.store8
      local.get 1
      local.get 4
      local.get 3
      i32.add
      i32.store offset=8
    )
    (func $_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$5flush17h7e1cdbe1a33e1227E (;140;) (type 3) (param i32 i32)
      local.get 0
      i32.const 4
      i32.store8
    )
    (func $_ZN3std2io5Write18write_all_vectored17h19e61a36cb3d6d91E (;141;) (type 8) (param i32 i32 i32 i32)
      (local i32 i32 i32 i32 i32 i32 i32 i64 i32)
      global.get $__stack_pointer
      i32.const 32
      i32.sub
      local.tee 4
      global.set $__stack_pointer
      block ;; label = @1
        block ;; label = @2
          block ;; label = @3
            block ;; label = @4
              local.get 3
              i32.eqz
              br_if 0 (;@4;)
              local.get 2
              i32.const 4
              i32.add
              local.set 5
              local.get 3
              i32.const 3
              i32.shl
              local.set 6
              local.get 3
              i32.const -1
              i32.add
              i32.const 536870911
              i32.and
              i32.const 1
              i32.add
              local.set 7
              i32.const 0
              local.set 8
              block ;; label = @5
                loop ;; label = @6
                  local.get 5
                  i32.load
                  br_if 1 (;@5;)
                  local.get 5
                  i32.const 8
                  i32.add
                  local.set 5
                  local.get 8
                  i32.const 1
                  i32.add
                  local.set 8
                  local.get 6
                  i32.const -8
                  i32.add
                  local.tee 6
                  br_if 0 (;@6;)
                end
                local.get 7
                local.set 8
              end
              block ;; label = @5
                local.get 8
                local.get 3
                i32.le_u
                br_if 0 (;@5;)
                local.get 8
                local.get 3
                i32.const 1050028
                call $_ZN4core5slice5index26slice_start_index_len_fail17hc1badbc4c621eed6E
                unreachable
              end
              local.get 3
              local.get 8
              i32.sub
              local.tee 9
              i32.eqz
              br_if 0 (;@4;)
              local.get 2
              local.get 8
              i32.const 3
              i32.shl
              i32.add
              local.set 10
              i32.const 1050152
              i64.extend_i32_u
              i64.const 32
              i64.shl
              i64.const 2
              i64.or
              local.set 11
              loop ;; label = @5
                local.get 4
                i32.const 8
                i32.add
                i32.const 2
                local.get 10
                local.get 9
                call $_ZN4wasi13lib_generated8fd_write17hae8ae89e35eb262eE
                block ;; label = @6
                  block ;; label = @7
                    block ;; label = @8
                      block ;; label = @9
                        local.get 4
                        i32.load16_u offset=8
                        br_if 0 (;@9;)
                        local.get 4
                        i32.load offset=12
                        local.tee 7
                        i32.eqz
                        br_if 1 (;@8;)
                        local.get 10
                        i32.const 4
                        i32.add
                        local.set 5
                        local.get 9
                        i32.const 3
                        i32.shl
                        local.set 2
                        local.get 9
                        i32.const -1
                        i32.add
                        i32.const 536870911
                        i32.and
                        i32.const 1
                        i32.add
                        local.set 12
                        i32.const 0
                        local.set 8
                        i32.const 0
                        local.set 6
                        block ;; label = @10
                          loop ;; label = @11
                            local.get 5
                            i32.load
                            local.get 6
                            i32.add
                            local.tee 3
                            local.get 7
                            i32.gt_u
                            br_if 1 (;@10;)
                            local.get 5
                            i32.const 8
                            i32.add
                            local.set 5
                            local.get 8
                            i32.const 1
                            i32.add
                            local.set 8
                            local.get 3
                            local.set 6
                            local.get 2
                            i32.const -8
                            i32.add
                            local.tee 2
                            br_if 0 (;@11;)
                          end
                          local.get 3
                          local.set 6
                          local.get 12
                          local.set 8
                        end
                        local.get 9
                        local.get 8
                        i32.lt_u
                        br_if 7 (;@2;)
                        local.get 9
                        local.get 8
                        i32.sub
                        local.set 3
                        local.get 10
                        local.get 8
                        i32.const 3
                        i32.shl
                        local.tee 2
                        i32.add
                        local.set 5
                        local.get 9
                        local.get 8
                        i32.ne
                        br_if 2 (;@7;)
                        local.get 5
                        local.set 10
                        local.get 3
                        local.set 9
                        local.get 7
                        local.get 6
                        i32.eq
                        br_if 3 (;@6;)
                        local.get 4
                        i32.const 20
                        i32.add
                        i32.const 1
                        i32.store
                        local.get 4
                        i32.const 28
                        i32.add
                        i32.const 0
                        i32.store
                        local.get 4
                        i32.const 1050084
                        i32.store offset=16
                        local.get 4
                        i32.const 1049692
                        i32.store offset=24
                        local.get 4
                        i32.const 0
                        i32.store offset=8
                        local.get 4
                        i32.const 8
                        i32.add
                        i32.const 1050092
                        call $_ZN4core9panicking9panic_fmt17h86214d64a55c1d57E
                        unreachable
                      end
                      local.get 4
                      local.get 4
                      i32.load16_u offset=10
                      i32.store16 offset=6
                      local.get 4
                      i32.const 6
                      i32.add
                      call $_ZN4wasi13lib_generated5Errno3raw17h7583c3dc59f4497dE
                      local.tee 5
                      i32.const 65535
                      i32.and
                      call $_ZN3std3sys4wasi17decode_error_kind17h72f6181b6dd35be0E
                      i32.const 255
                      i32.and
                      i32.const 35
                      i32.eq
                      br_if 2 (;@6;)
                      local.get 5
                      i64.extend_i32_u
                      i64.const 65535
                      i64.and
                      i64.const 32
                      i64.shl
                      local.set 11
                    end
                    local.get 0
                    local.get 11
                    i64.store align=4
                    br 4 (;@3;)
                  end
                  local.get 10
                  local.get 2
                  i32.add
                  local.tee 2
                  i32.load offset=4
                  local.tee 9
                  local.get 7
                  local.get 6
                  i32.sub
                  local.tee 8
                  i32.lt_u
                  br_if 5 (;@1;)
                  local.get 2
                  i32.const 4
                  i32.add
                  local.get 9
                  local.get 8
                  i32.sub
                  i32.store
                  local.get 5
                  local.get 5
                  i32.load
                  local.get 8
                  i32.add
                  i32.store
                  local.get 5
                  local.set 10
                  local.get 3
                  local.set 9
                end
                local.get 9
                br_if 0 (;@5;)
              end
            end
            local.get 0
            i32.const 4
            i32.store8
          end
          local.get 4
          i32.const 32
          i32.add
          global.set $__stack_pointer
          return
        end
        local.get 8
        local.get 9
        i32.const 1050028
        call $_ZN4core5slice5index26slice_start_index_len_fail17hc1badbc4c621eed6E
        unreachable
      end
      local.get 4
      i32.const 20
      i32.add
      i32.const 1
      i32.store
      local.get 4
      i32.const 28
      i32.add
      i32.const 0
      i32.store
      local.get 4
      i32.const 1051380
      i32.store offset=16
      local.get 4
      i32.const 1049692
      i32.store offset=24
      local.get 4
      i32.const 0
      i32.store offset=8
      local.get 4
      i32.const 8
      i32.add
      i32.const 1051420
      call $_ZN4core9panicking9panic_fmt17h86214d64a55c1d57E
      unreachable
    )
    (func $_ZN3std2io5Write9write_all17h6a2df35d231059edE (;142;) (type 8) (param i32 i32 i32 i32)
      (local i32 i64 i32)
      global.get $__stack_pointer
      i32.const 32
      i32.sub
      local.tee 4
      global.set $__stack_pointer
      block ;; label = @1
        block ;; label = @2
          local.get 3
          i32.eqz
          br_if 0 (;@2;)
          i32.const 1050152
          i64.extend_i32_u
          i64.const 32
          i64.shl
          i64.const 2
          i64.or
          local.set 5
          loop ;; label = @3
            local.get 4
            local.get 3
            i32.store offset=12
            local.get 4
            local.get 2
            i32.store offset=8
            local.get 4
            i32.const 16
            i32.add
            i32.const 2
            local.get 4
            i32.const 8
            i32.add
            i32.const 1
            call $_ZN4wasi13lib_generated8fd_write17hae8ae89e35eb262eE
            block ;; label = @4
              block ;; label = @5
                block ;; label = @6
                  block ;; label = @7
                    local.get 4
                    i32.load16_u offset=16
                    br_if 0 (;@7;)
                    local.get 4
                    i32.load offset=20
                    local.tee 6
                    i32.eqz
                    br_if 1 (;@6;)
                    local.get 3
                    local.get 6
                    i32.lt_u
                    br_if 2 (;@5;)
                    local.get 3
                    local.get 6
                    i32.sub
                    local.set 3
                    local.get 2
                    local.get 6
                    i32.add
                    local.set 2
                    br 3 (;@4;)
                  end
                  local.get 4
                  local.get 4
                  i32.load16_u offset=18
                  i32.store16 offset=30
                  local.get 4
                  i32.const 30
                  i32.add
                  call $_ZN4wasi13lib_generated5Errno3raw17h7583c3dc59f4497dE
                  local.tee 6
                  i32.const 65535
                  i32.and
                  call $_ZN3std3sys4wasi17decode_error_kind17h72f6181b6dd35be0E
                  i32.const 255
                  i32.and
                  i32.const 35
                  i32.eq
                  br_if 2 (;@4;)
                  local.get 6
                  i64.extend_i32_u
                  i64.const 65535
                  i64.and
                  i64.const 32
                  i64.shl
                  local.set 5
                end
                local.get 0
                local.get 5
                i64.store align=4
                br 4 (;@1;)
              end
              local.get 6
              local.get 3
              i32.const 1050108
              call $_ZN4core5slice5index26slice_start_index_len_fail17hc1badbc4c621eed6E
              unreachable
            end
            local.get 3
            br_if 0 (;@3;)
          end
        end
        local.get 0
        i32.const 4
        i32.store8
      end
      local.get 4
      i32.const 32
      i32.add
      global.set $__stack_pointer
    )
    (func $_ZN3std2io5Write18write_all_vectored17h29dfa6af2fdd77d1E (;143;) (type 8) (param i32 i32 i32 i32)
      (local i32 i32 i32 i32 i32 i32 i32 i32 i32)
      global.get $__stack_pointer
      i32.const 32
      i32.sub
      local.tee 4
      global.set $__stack_pointer
      block ;; label = @1
        block ;; label = @2
          block ;; label = @3
            block ;; label = @4
              local.get 3
              i32.eqz
              br_if 0 (;@4;)
              local.get 2
              i32.const 4
              i32.add
              local.set 5
              local.get 3
              i32.const 3
              i32.shl
              local.set 6
              local.get 3
              i32.const -1
              i32.add
              i32.const 536870911
              i32.and
              i32.const 1
              i32.add
              local.set 7
              i32.const 0
              local.set 8
              block ;; label = @5
                loop ;; label = @6
                  local.get 5
                  i32.load
                  br_if 1 (;@5;)
                  local.get 5
                  i32.const 8
                  i32.add
                  local.set 5
                  local.get 8
                  i32.const 1
                  i32.add
                  local.set 8
                  local.get 6
                  i32.const -8
                  i32.add
                  local.tee 6
                  br_if 0 (;@6;)
                end
                local.get 7
                local.set 8
              end
              block ;; label = @5
                local.get 8
                local.get 3
                i32.le_u
                br_if 0 (;@5;)
                local.get 8
                local.get 3
                i32.const 1050028
                call $_ZN4core5slice5index26slice_start_index_len_fail17hc1badbc4c621eed6E
                unreachable
              end
              local.get 3
              local.get 8
              i32.sub
              local.tee 9
              i32.eqz
              br_if 0 (;@4;)
              local.get 2
              local.get 8
              i32.const 3
              i32.shl
              i32.add
              local.set 10
              loop ;; label = @5
                local.get 9
                i32.const -1
                i32.add
                i32.const 536870911
                i32.and
                local.tee 6
                i32.const 1
                i32.add
                local.tee 11
                i32.const 7
                i32.and
                local.set 8
                i32.const 0
                local.set 3
                local.get 10
                local.set 5
                block ;; label = @6
                  local.get 6
                  i32.const 7
                  i32.lt_u
                  br_if 0 (;@6;)
                  local.get 10
                  i32.const 60
                  i32.add
                  local.set 5
                  local.get 11
                  i32.const 1073741816
                  i32.and
                  local.set 6
                  i32.const 0
                  local.set 3
                  loop ;; label = @7
                    local.get 5
                    i32.load
                    local.get 5
                    i32.const -8
                    i32.add
                    i32.load
                    local.get 5
                    i32.const -16
                    i32.add
                    i32.load
                    local.get 5
                    i32.const -24
                    i32.add
                    i32.load
                    local.get 5
                    i32.const -32
                    i32.add
                    i32.load
                    local.get 5
                    i32.const -40
                    i32.add
                    i32.load
                    local.get 5
                    i32.const -48
                    i32.add
                    i32.load
                    local.get 5
                    i32.const -56
                    i32.add
                    i32.load
                    local.get 3
                    i32.add
                    i32.add
                    i32.add
                    i32.add
                    i32.add
                    i32.add
                    i32.add
                    i32.add
                    local.set 3
                    local.get 5
                    i32.const 64
                    i32.add
                    local.set 5
                    local.get 6
                    i32.const -8
                    i32.add
                    local.tee 6
                    br_if 0 (;@7;)
                  end
                  local.get 5
                  i32.const -60
                  i32.add
                  local.set 5
                end
                block ;; label = @6
                  local.get 8
                  i32.eqz
                  br_if 0 (;@6;)
                  local.get 5
                  i32.const 4
                  i32.add
                  local.set 5
                  loop ;; label = @7
                    local.get 5
                    i32.load
                    local.get 3
                    i32.add
                    local.set 3
                    local.get 5
                    i32.const 8
                    i32.add
                    local.set 5
                    local.get 8
                    i32.const -1
                    i32.add
                    local.tee 8
                    br_if 0 (;@7;)
                  end
                end
                local.get 9
                i32.const 3
                i32.shl
                local.set 12
                block ;; label = @6
                  local.get 1
                  i32.load
                  local.get 1
                  i32.load offset=8
                  local.tee 5
                  i32.sub
                  local.get 3
                  i32.ge_u
                  br_if 0 (;@6;)
                  local.get 1
                  local.get 5
                  local.get 3
                  call $_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve21do_reserve_and_handle17h998b51ee8b795c17E
                  local.get 1
                  i32.load offset=8
                  local.set 5
                end
                local.get 10
                local.get 12
                i32.add
                local.set 7
                local.get 10
                local.set 8
                loop ;; label = @6
                  local.get 8
                  i32.load
                  local.set 2
                  block ;; label = @7
                    local.get 1
                    i32.load
                    local.get 5
                    i32.sub
                    local.get 8
                    i32.const 4
                    i32.add
                    i32.load
                    local.tee 6
                    i32.ge_u
                    br_if 0 (;@7;)
                    local.get 1
                    local.get 5
                    local.get 6
                    call $_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve21do_reserve_and_handle17h998b51ee8b795c17E
                    local.get 1
                    i32.load offset=8
                    local.set 5
                  end
                  local.get 1
                  i32.load offset=4
                  local.get 5
                  i32.add
                  local.get 2
                  local.get 6
                  call $memcpy
                  drop
                  local.get 1
                  local.get 5
                  local.get 6
                  i32.add
                  local.tee 5
                  i32.store offset=8
                  local.get 8
                  i32.const 8
                  i32.add
                  local.tee 8
                  local.get 7
                  i32.ne
                  br_if 0 (;@6;)
                end
                block ;; label = @6
                  local.get 3
                  br_if 0 (;@6;)
                  local.get 0
                  i32.const 1050152
                  i64.extend_i32_u
                  i64.const 32
                  i64.shl
                  i64.const 2
                  i64.or
                  i64.store align=4
                  br 3 (;@3;)
                end
                local.get 10
                i32.const 4
                i32.add
                local.set 5
                i32.const 0
                local.set 8
                i32.const 0
                local.set 6
                block ;; label = @6
                  loop ;; label = @7
                    local.get 5
                    i32.load
                    local.get 6
                    i32.add
                    local.tee 2
                    local.get 3
                    i32.gt_u
                    br_if 1 (;@6;)
                    local.get 5
                    i32.const 8
                    i32.add
                    local.set 5
                    local.get 8
                    i32.const 1
                    i32.add
                    local.set 8
                    local.get 2
                    local.set 6
                    local.get 12
                    i32.const -8
                    i32.add
                    local.tee 12
                    br_if 0 (;@7;)
                  end
                  local.get 2
                  local.set 6
                  local.get 11
                  local.set 8
                end
                local.get 9
                local.get 8
                i32.lt_u
                br_if 3 (;@2;)
                local.get 10
                local.get 8
                i32.const 3
                i32.shl
                local.tee 2
                i32.add
                local.set 5
                block ;; label = @6
                  block ;; label = @7
                    local.get 9
                    local.get 8
                    i32.ne
                    br_if 0 (;@7;)
                    local.get 3
                    local.get 6
                    i32.eq
                    br_if 1 (;@6;)
                    local.get 4
                    i32.const 20
                    i32.add
                    i32.const 1
                    i32.store
                    local.get 4
                    i32.const 28
                    i32.add
                    i32.const 0
                    i32.store
                    local.get 4
                    i32.const 1050084
                    i32.store offset=16
                    local.get 4
                    i32.const 1049692
                    i32.store offset=24
                    local.get 4
                    i32.const 0
                    i32.store offset=8
                    local.get 4
                    i32.const 8
                    i32.add
                    i32.const 1050092
                    call $_ZN4core9panicking9panic_fmt17h86214d64a55c1d57E
                    unreachable
                  end
                  local.get 10
                  local.get 2
                  i32.add
                  local.tee 2
                  i32.load offset=4
                  local.tee 7
                  local.get 3
                  local.get 6
                  i32.sub
                  local.tee 6
                  i32.lt_u
                  br_if 5 (;@1;)
                  local.get 2
                  i32.const 4
                  i32.add
                  local.get 7
                  local.get 6
                  i32.sub
                  i32.store
                  local.get 5
                  local.get 5
                  i32.load
                  local.get 6
                  i32.add
                  i32.store
                end
                local.get 5
                local.set 10
                local.get 9
                local.get 8
                i32.sub
                local.tee 9
                br_if 0 (;@5;)
              end
            end
            local.get 0
            i32.const 4
            i32.store8
          end
          local.get 4
          i32.const 32
          i32.add
          global.set $__stack_pointer
          return
        end
        local.get 8
        local.get 9
        i32.const 1050028
        call $_ZN4core5slice5index26slice_start_index_len_fail17hc1badbc4c621eed6E
        unreachable
      end
      local.get 4
      i32.const 20
      i32.add
      i32.const 1
      i32.store
      local.get 4
      i32.const 28
      i32.add
      i32.const 0
      i32.store
      local.get 4
      i32.const 1051380
      i32.store offset=16
      local.get 4
      i32.const 1049692
      i32.store offset=24
      local.get 4
      i32.const 0
      i32.store offset=8
      local.get 4
      i32.const 8
      i32.add
      i32.const 1051420
      call $_ZN4core9panicking9panic_fmt17h86214d64a55c1d57E
      unreachable
    )
    (func $_ZN3std2io5Write9write_fmt17h0676ae775d41bea9E (;144;) (type 2) (param i32 i32 i32)
      (local i32)
      global.get $__stack_pointer
      i32.const 48
      i32.sub
      local.tee 3
      global.set $__stack_pointer
      local.get 3
      i32.const 4
      i32.store8 offset=8
      local.get 3
      local.get 1
      i32.store offset=16
      local.get 3
      i32.const 24
      i32.add
      i32.const 16
      i32.add
      local.get 2
      i32.const 16
      i32.add
      i64.load align=4
      i64.store
      local.get 3
      i32.const 24
      i32.add
      i32.const 8
      i32.add
      local.get 2
      i32.const 8
      i32.add
      i64.load align=4
      i64.store
      local.get 3
      local.get 2
      i64.load align=4
      i64.store offset=24
      block ;; label = @1
        block ;; label = @2
          local.get 3
          i32.const 8
          i32.add
          i32.const 1050164
          local.get 3
          i32.const 24
          i32.add
          call $_ZN4core3fmt5write17h7365630cdee3db2cE
          i32.eqz
          br_if 0 (;@2;)
          block ;; label = @3
            local.get 3
            i32.load8_u offset=8
            i32.const 4
            i32.ne
            br_if 0 (;@3;)
            local.get 0
            i32.const 1050204
            i32.store offset=4
            local.get 0
            i32.const 2
            i32.store
            br 2 (;@1;)
          end
          local.get 0
          local.get 3
          i64.load offset=8
          i64.store align=4
          br 1 (;@1;)
        end
        local.get 0
        i32.const 4
        i32.store8
        local.get 3
        i32.load8_u offset=8
        i32.const 3
        i32.ne
        br_if 0 (;@1;)
        local.get 3
        i32.load offset=12
        local.tee 2
        i32.load
        local.get 2
        i32.load offset=4
        i32.load
        call_indirect (type $.rodata)
        block ;; label = @2
          local.get 2
          i32.load offset=4
          local.tee 0
          i32.const 4
          i32.add
          i32.load
          local.tee 1
          i32.eqz
          br_if 0 (;@2;)
          local.get 2
          i32.load
          local.get 1
          local.get 0
          i32.const 8
          i32.add
          i32.load
          call $__rust_dealloc
        end
        local.get 3
        i32.load offset=12
        i32.const 12
        i32.const 4
        call $__rust_dealloc
      end
      local.get 3
      i32.const 48
      i32.add
      global.set $__stack_pointer
    )
    (func $_ZN80_$LT$std..io..Write..write_fmt..Adapter$LT$T$GT$$u20$as$u20$core..fmt..Write$GT$9write_str17h21be1a18f27a535cE (;145;) (type 4) (param i32 i32 i32) (result i32)
      (local i32)
      block ;; label = @1
        local.get 0
        i32.load offset=8
        local.tee 0
        i32.load
        local.get 0
        i32.load offset=8
        local.tee 3
        i32.sub
        local.get 2
        i32.ge_u
        br_if 0 (;@1;)
        local.get 0
        local.get 3
        local.get 2
        call $_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve21do_reserve_and_handle17h998b51ee8b795c17E
        local.get 0
        i32.load offset=8
        local.set 3
      end
      local.get 0
      i32.load offset=4
      local.get 3
      i32.add
      local.get 1
      local.get 2
      call $memcpy
      drop
      local.get 0
      local.get 3
      local.get 2
      i32.add
      i32.store offset=8
      i32.const 0
    )
    (func $_ZN3std5panic19get_backtrace_style17h359a43723316a875E (;146;) (type 13) (result i32)
      (local i32 i32 i32 i32)
      global.get $__stack_pointer
      i32.const 16
      i32.sub
      local.tee 0
      global.set $__stack_pointer
      i32.const 0
      local.set 1
      block ;; label = @1
        block ;; label = @2
          block ;; label = @3
            block ;; label = @4
              block ;; label = @5
                i32.const 0
                i32.load offset=1053036
                br_table 3 (;@2;) 4 (;@1;) 1 (;@4;) 2 (;@3;) 0 (;@5;)
              end
              i32.const 1049787
              i32.const 40
              i32.const 1050264
              call $_ZN4core9panicking5panic17h72f0442034a99972E
              unreachable
            end
            i32.const 1
            local.set 1
            br 2 (;@1;)
          end
          i32.const 2
          local.set 1
          br 1 (;@1;)
        end
        local.get 0
        i32.const 1049976
        i32.const 14
        call $_ZN3std3env7_var_os17h04df8905a9d4ebcfE
        block ;; label = @2
          block ;; label = @3
            local.get 0
            i32.load offset=4
            local.tee 1
            i32.eqz
            br_if 0 (;@3;)
            i32.const 0
            local.set 2
            local.get 0
            i32.load
            local.set 3
            block ;; label = @4
              block ;; label = @5
                block ;; label = @6
                  local.get 0
                  i32.load offset=8
                  i32.const -1
                  i32.add
                  br_table 0 (;@6;) 2 (;@4;) 2 (;@4;) 1 (;@5;) 2 (;@4;)
                end
                i32.const -2
                i32.const 0
                local.get 1
                i32.load8_u
                i32.const 48
                i32.eq
                select
                local.set 2
                br 1 (;@4;)
              end
              local.get 1
              i32.load align=1
              i32.const 1819047270
              i32.eq
              local.set 2
            end
            block ;; label = @4
              local.get 3
              i32.eqz
              br_if 0 (;@4;)
              local.get 1
              local.get 3
              i32.const 1
              call $__rust_dealloc
            end
            i32.const 1
            local.set 3
            i32.const 0
            local.set 1
            block ;; label = @4
              local.get 2
              i32.const 3
              i32.and
              br_table 2 (;@2;) 0 (;@4;) 1 (;@3;) 2 (;@2;)
            end
            i32.const 2
            local.set 3
            i32.const 1
            local.set 1
            br 1 (;@2;)
          end
          i32.const 3
          local.set 3
          i32.const 2
          local.set 1
        end
        i32.const 0
        local.get 3
        i32.store offset=1053036
      end
      local.get 0
      i32.const 16
      i32.add
      global.set $__stack_pointer
      local.get 1
    )
    (func $_ZN3std7process5abort17h8f9cb50b745bb368E (;147;) (type 7)
      call $_ZN3std3sys4wasi14abort_internal17ha87152b5c18d637bE
      unreachable
    )
    (func $_ZN3std10sys_common9backtrace5print17h9461bb83fbf44b56E (;148;) (type 8) (param i32 i32 i32 i32)
      (local i32 i32 i32)
      global.get $__stack_pointer
      i32.const 48
      i32.sub
      local.tee 4
      global.set $__stack_pointer
      i32.const 0
      i32.load8_u offset=1053040
      local.set 5
      i32.const 1
      local.set 6
      i32.const 0
      i32.const 1
      i32.store8 offset=1053040
      local.get 4
      local.get 5
      i32.store8 offset=32
      block ;; label = @1
        local.get 5
        br_if 0 (;@1;)
        block ;; label = @2
          i32.const 0
          i32.load offset=1053064
          i32.const 2147483647
          i32.and
          i32.eqz
          br_if 0 (;@2;)
          call $_ZN3std9panicking11panic_count17is_zero_slow_path17h54b1d48361cbaaa5E
          local.set 6
        end
        local.get 2
        i32.const 36
        i32.add
        i32.load
        local.set 5
        local.get 4
        i32.const 20
        i32.add
        i32.const 1
        i32.store
        local.get 4
        i32.const 28
        i32.add
        i32.const 1
        i32.store
        local.get 4
        i32.const 1049992
        i32.store offset=16
        local.get 4
        i32.const 0
        i32.store offset=8
        local.get 4
        i32.const 5
        i32.store offset=36
        local.get 4
        local.get 3
        i32.store8 offset=47
        local.get 4
        local.get 4
        i32.const 32
        i32.add
        i32.store offset=24
        local.get 4
        local.get 4
        i32.const 47
        i32.add
        i32.store offset=32
        local.get 0
        local.get 1
        local.get 4
        i32.const 8
        i32.add
        local.get 5
        call_indirect (type 2)
        block ;; label = @2
          local.get 6
          i32.eqz
          br_if 0 (;@2;)
          i32.const 0
          i32.load offset=1053064
          i32.const 2147483647
          i32.and
          i32.eqz
          br_if 0 (;@2;)
          call $_ZN3std9panicking11panic_count17is_zero_slow_path17h54b1d48361cbaaa5E
          br_if 0 (;@2;)
          i32.const 0
          i32.const 1
          i32.store8 offset=1053041
        end
        i32.const 0
        i32.const 0
        i32.store8 offset=1053040
        local.get 4
        i32.const 48
        i32.add
        global.set $__stack_pointer
        return
      end
      local.get 4
      i32.const 0
      i32.store offset=28
      local.get 4
      i32.const 1049692
      i32.store offset=24
      local.get 4
      i32.const 1
      i32.store offset=20
      local.get 4
      i32.const 1051468
      i32.store offset=16
      local.get 4
      i32.const 0
      i32.store offset=8
      local.get 4
      i32.const 32
      i32.add
      local.get 4
      i32.const 8
      i32.add
      call $_ZN4core9panicking13assert_failed17hc5f43f1d90c4f3c5E
      unreachable
    )
    (func $_ZN91_$LT$std..sys_common..backtrace.._print..DisplayBacktrace$u20$as$u20$core..fmt..Display$GT$3fmt17h0c2737a3e28cbab8E (;149;) (type 5) (param i32 i32) (result i32)
      (local i32 i32 i32 i32 i32)
      global.get $__stack_pointer
      i32.const 32
      i32.sub
      local.tee 2
      global.set $__stack_pointer
      local.get 0
      i32.load8_u
      local.set 3
      local.get 2
      i32.const 8
      i32.add
      call $_ZN3std3env11current_dir17h560a08355886b1efE
      block ;; label = @1
        block ;; label = @2
          local.get 2
          i32.load offset=8
          br_if 0 (;@2;)
          local.get 2
          i32.const 16
          i32.add
          i32.load
          local.set 0
          local.get 2
          i32.load offset=12
          local.set 4
          br 1 (;@1;)
        end
        i32.const 0
        local.set 0
        block ;; label = @2
          local.get 2
          i32.load8_u offset=12
          i32.const 3
          i32.ne
          br_if 0 (;@2;)
          local.get 2
          i32.const 8
          i32.add
          i32.const 8
          i32.add
          i32.load
          local.tee 5
          i32.load
          local.get 5
          i32.load offset=4
          i32.load
          call_indirect (type $.rodata)
          block ;; label = @3
            local.get 5
            i32.load offset=4
            local.tee 4
            i32.const 4
            i32.add
            i32.load
            local.tee 6
            i32.eqz
            br_if 0 (;@3;)
            local.get 5
            i32.load
            local.get 6
            local.get 4
            i32.const 8
            i32.add
            i32.load
            call $__rust_dealloc
          end
          local.get 5
          i32.const 12
          i32.const 4
          call $__rust_dealloc
        end
      end
      i32.const 1
      local.set 5
      local.get 2
      i32.const 20
      i32.add
      i32.const 1
      i32.store
      local.get 2
      i32.const 28
      i32.add
      i32.const 0
      i32.store
      local.get 2
      i32.const 1050364
      i32.store offset=16
      local.get 2
      i32.const 1049692
      i32.store offset=24
      local.get 2
      i32.const 0
      i32.store offset=8
      block ;; label = @1
        block ;; label = @2
          block ;; label = @3
            block ;; label = @4
              local.get 1
              local.get 2
              i32.const 8
              i32.add
              call $_ZN4core3fmt9Formatter9write_fmt17h8770c78158883680E
              br_if 0 (;@4;)
              local.get 3
              i32.const 255
              i32.and
              br_if 1 (;@3;)
              local.get 2
              i32.const 20
              i32.add
              i32.const 1
              i32.store
              local.get 2
              i32.const 28
              i32.add
              i32.const 0
              i32.store
              local.get 2
              i32.const 1050460
              i32.store offset=16
              local.get 2
              i32.const 1049692
              i32.store offset=24
              local.get 2
              i32.const 0
              i32.store offset=8
              local.get 1
              local.get 2
              i32.const 8
              i32.add
              call $_ZN4core3fmt9Formatter9write_fmt17h8770c78158883680E
              i32.eqz
              br_if 1 (;@3;)
            end
            local.get 0
            i32.eqz
            br_if 2 (;@1;)
            local.get 4
            i32.eqz
            br_if 2 (;@1;)
            br 1 (;@2;)
          end
          i32.const 0
          local.set 5
          local.get 0
          i32.eqz
          br_if 1 (;@1;)
          local.get 4
          i32.eqz
          br_if 1 (;@1;)
        end
        local.get 0
        local.get 4
        i32.const 1
        call $__rust_dealloc
      end
      local.get 2
      i32.const 32
      i32.add
      global.set $__stack_pointer
      local.get 5
    )
    (func $_ZN3std10sys_common9backtrace26__rust_end_short_backtrace17h1c7217a99e6903e8E (;150;) (type $.rodata) (param i32)
      (local i32)
      global.get $__stack_pointer
      i32.const 16
      i32.sub
      local.tee 1
      global.set $__stack_pointer
      local.get 1
      i32.const 8
      i32.add
      local.get 0
      i32.const 8
      i32.add
      i32.load
      i32.store
      local.get 1
      local.get 0
      i64.load align=4
      i64.store
      local.get 1
      call $_ZN3std9panicking19begin_panic_handler28_$u7b$$u7b$closure$u7d$$u7d$17h7be61ca999d17a10E
      unreachable
    )
    (func $_ZN3std9panicking19begin_panic_handler28_$u7b$$u7b$closure$u7d$$u7d$17h7be61ca999d17a10E (;151;) (type $.rodata) (param i32)
      (local i32 i32 i32)
      global.get $__stack_pointer
      i32.const 16
      i32.sub
      local.tee 1
      global.set $__stack_pointer
      local.get 0
      i32.load
      local.tee 2
      i32.const 20
      i32.add
      i32.load
      local.set 3
      block ;; label = @1
        block ;; label = @2
          block ;; label = @3
            block ;; label = @4
              local.get 2
              i32.const 12
              i32.add
              i32.load
              br_table 0 (;@4;) 1 (;@3;) 3 (;@1;)
            end
            local.get 3
            br_if 2 (;@1;)
            i32.const 1049692
            local.set 2
            i32.const 0
            local.set 3
            br 1 (;@2;)
          end
          local.get 3
          br_if 1 (;@1;)
          local.get 2
          i32.load offset=8
          local.tee 2
          i32.load offset=4
          local.set 3
          local.get 2
          i32.load
          local.set 2
        end
        local.get 1
        local.get 3
        i32.store offset=4
        local.get 1
        local.get 2
        i32.store
        local.get 1
        i32.const 1051032
        local.get 0
        i32.load offset=4
        local.tee 2
        call $_ZN4core5panic10panic_info9PanicInfo7message17h25ed2cf84c4f2ad9E
        local.get 0
        i32.load offset=8
        local.get 2
        call $_ZN4core5panic10panic_info9PanicInfo10can_unwind17h13c6fb22fcc25cacE
        call $_ZN3std9panicking20rust_panic_with_hook17hd6f3df478dab5dc5E
        unreachable
      end
      local.get 1
      i32.const 0
      i32.store offset=4
      local.get 1
      local.get 2
      i32.store offset=12
      local.get 1
      i32.const 1051012
      local.get 0
      i32.load offset=4
      local.tee 2
      call $_ZN4core5panic10panic_info9PanicInfo7message17h25ed2cf84c4f2ad9E
      local.get 0
      i32.load offset=8
      local.get 2
      call $_ZN4core5panic10panic_info9PanicInfo10can_unwind17h13c6fb22fcc25cacE
      call $_ZN3std9panicking20rust_panic_with_hook17hd6f3df478dab5dc5E
      unreachable
    )
    (func $_ZN3std5alloc24default_alloc_error_hook17hf9fc10e82bf046f4E (;152;) (type 3) (param i32 i32)
      (local i32 i32 i32)
      global.get $__stack_pointer
      i32.const 64
      i32.sub
      local.tee 2
      global.set $__stack_pointer
      block ;; label = @1
        i32.const 0
        i32.load8_u offset=1053032
        br_if 0 (;@1;)
        local.get 2
        i32.const 6
        i32.store offset=4
        local.get 2
        local.get 0
        i32.store offset=12
        local.get 2
        local.get 2
        i32.const 12
        i32.add
        i32.store
        local.get 2
        i32.const 4
        i32.store8 offset=16
        local.get 2
        local.get 2
        i32.const 56
        i32.add
        i32.store offset=24
        local.get 2
        i32.const 1
        i32.store offset=52
        local.get 2
        i32.const 2
        i32.store offset=44
        local.get 2
        i32.const 1050636
        i32.store offset=40
        local.get 2
        i32.const 0
        i32.store offset=32
        local.get 2
        local.get 2
        i32.store offset=48
        local.get 2
        i32.const 16
        i32.add
        i32.const 1050216
        local.get 2
        i32.const 32
        i32.add
        call $_ZN4core3fmt5write17h7365630cdee3db2cE
        local.set 0
        local.get 2
        i32.load8_u offset=16
        local.set 3
        block ;; label = @2
          block ;; label = @3
            local.get 0
            i32.eqz
            br_if 0 (;@3;)
            local.get 3
            i32.const 255
            i32.and
            i32.const 4
            i32.eq
            br_if 1 (;@2;)
            local.get 2
            i32.load8_u offset=16
            i32.const 3
            i32.ne
            br_if 1 (;@2;)
            local.get 2
            i32.load offset=20
            local.tee 0
            i32.load
            local.get 0
            i32.load offset=4
            i32.load
            call_indirect (type $.rodata)
            block ;; label = @4
              local.get 0
              i32.load offset=4
              local.tee 3
              i32.const 4
              i32.add
              i32.load
              local.tee 4
              i32.eqz
              br_if 0 (;@4;)
              local.get 0
              i32.load
              local.get 4
              local.get 3
              i32.const 8
              i32.add
              i32.load
              call $__rust_dealloc
            end
            local.get 0
            i32.const 12
            i32.const 4
            call $__rust_dealloc
            br 1 (;@2;)
          end
          local.get 3
          i32.const 255
          i32.and
          i32.const 3
          i32.ne
          br_if 0 (;@2;)
          local.get 2
          i32.load offset=20
          local.tee 0
          i32.load
          local.get 0
          i32.load offset=4
          i32.load
          call_indirect (type $.rodata)
          block ;; label = @3
            local.get 0
            i32.load offset=4
            local.tee 3
            i32.const 4
            i32.add
            i32.load
            local.tee 4
            i32.eqz
            br_if 0 (;@3;)
            local.get 0
            i32.load
            local.get 4
            local.get 3
            i32.const 8
            i32.add
            i32.load
            call $__rust_dealloc
          end
          local.get 2
          i32.load offset=20
          i32.const 12
          i32.const 4
          call $__rust_dealloc
        end
        local.get 2
        i32.const 64
        i32.add
        global.set $__stack_pointer
        return
      end
      local.get 2
      i32.const 44
      i32.add
      i32.const 2
      i32.store
      local.get 2
      i32.const 52
      i32.add
      i32.const 1
      i32.store
      local.get 2
      i32.const 1050564
      i32.store offset=40
      local.get 2
      i32.const 0
      i32.store offset=32
      local.get 2
      i32.const 6
      i32.store offset=20
      local.get 2
      local.get 0
      i32.store
      local.get 2
      local.get 2
      i32.const 16
      i32.add
      i32.store offset=48
      local.get 2
      local.get 2
      i32.store offset=16
      local.get 2
      i32.const 32
      i32.add
      i32.const 1050604
      call $_ZN4core9panicking9panic_fmt17h86214d64a55c1d57E
      unreachable
    )
    (func $__rdl_alloc (;153;) (type 5) (param i32 i32) (result i32)
      block ;; label = @1
        block ;; label = @2
          local.get 1
          i32.const 8
          i32.gt_u
          br_if 0 (;@2;)
          local.get 1
          local.get 0
          i32.le_u
          br_if 1 (;@1;)
        end
        local.get 1
        local.get 0
        call $aligned_alloc
        return
      end
      local.get 0
      call $malloc
    )
    (func $__rdl_dealloc (;154;) (type 2) (param i32 i32 i32)
      local.get 0
      call $free
    )
    (func $__rdl_realloc (;155;) (type 6) (param i32 i32 i32 i32) (result i32)
      block ;; label = @1
        block ;; label = @2
          local.get 2
          i32.const 8
          i32.gt_u
          br_if 0 (;@2;)
          local.get 2
          local.get 3
          i32.le_u
          br_if 1 (;@1;)
        end
        block ;; label = @2
          local.get 2
          local.get 3
          call $aligned_alloc
          local.tee 2
          br_if 0 (;@2;)
          i32.const 0
          return
        end
        local.get 2
        local.get 0
        local.get 1
        local.get 3
        local.get 1
        local.get 3
        i32.lt_u
        select
        call $memcpy
        local.set 3
        local.get 0
        call $free
        local.get 3
        return
      end
      local.get 0
      local.get 3
      call $realloc
    )
    (func $__rdl_alloc_zeroed (;156;) (type 5) (param i32 i32) (result i32)
      block ;; label = @1
        block ;; label = @2
          block ;; label = @3
            local.get 1
            i32.const 8
            i32.gt_u
            br_if 0 (;@3;)
            local.get 1
            local.get 0
            i32.le_u
            br_if 1 (;@2;)
          end
          local.get 1
          local.get 0
          call $aligned_alloc
          local.tee 1
          br_if 1 (;@1;)
          i32.const 0
          return
        end
        local.get 0
        i32.const 1
        call $calloc
        return
      end
      local.get 1
      i32.const 0
      local.get 0
      call $memset
    )
    (func $_ZN3std9panicking12default_hook28_$u7b$$u7b$closure$u7d$$u7d$17hd6bac0317693a95bE (;157;) (type 2) (param i32 i32 i32)
      (local i32 i32 i32 i32 i32)
      global.get $__stack_pointer
      i32.const 64
      i32.sub
      local.tee 3
      global.set $__stack_pointer
      local.get 3
      i32.const 16
      i32.add
      i32.const 12
      i32.add
      i32.const 4
      i32.store
      local.get 3
      i32.const 16
      i32.add
      i32.const 20
      i32.add
      i32.const 3
      i32.store
      local.get 3
      i32.const 40
      i32.add
      i32.const 20
      i32.add
      i32.const 7
      i32.store
      local.get 3
      i32.const 40
      i32.add
      i32.const 12
      i32.add
      i32.const 8
      i32.store
      local.get 3
      i32.const 1050828
      i32.store offset=24
      local.get 3
      i32.const 0
      i32.store offset=16
      local.get 3
      i32.const 8
      i32.store offset=44
      local.get 3
      local.get 0
      i32.load offset=8
      i32.store offset=56
      local.get 3
      local.get 0
      i32.load offset=4
      i32.store offset=48
      local.get 3
      local.get 0
      i32.load
      i32.store offset=40
      local.get 3
      local.get 3
      i32.const 40
      i32.add
      i32.store offset=32
      local.get 3
      i32.const 8
      i32.add
      local.get 1
      local.get 3
      i32.const 16
      i32.add
      local.get 2
      i32.load offset=36
      local.tee 4
      call_indirect (type 2)
      block ;; label = @1
        local.get 3
        i32.load8_u offset=8
        i32.const 3
        i32.ne
        br_if 0 (;@1;)
        local.get 3
        i32.load offset=12
        local.tee 5
        i32.load
        local.get 5
        i32.load offset=4
        i32.load
        call_indirect (type $.rodata)
        block ;; label = @2
          local.get 5
          i32.load offset=4
          local.tee 6
          i32.const 4
          i32.add
          i32.load
          local.tee 7
          i32.eqz
          br_if 0 (;@2;)
          local.get 5
          i32.load
          local.get 7
          local.get 6
          i32.const 8
          i32.add
          i32.load
          call $__rust_dealloc
        end
        local.get 5
        i32.const 12
        i32.const 4
        call $__rust_dealloc
      end
      block ;; label = @1
        local.get 0
        i32.load offset=12
        i32.load8_u
        local.tee 0
        i32.const 3
        i32.eq
        br_if 0 (;@1;)
        block ;; label = @2
          block ;; label = @3
            block ;; label = @4
              local.get 0
              br_table 0 (;@4;) 1 (;@3;) 2 (;@2;) 0 (;@4;)
            end
            local.get 3
            i32.const 40
            i32.add
            local.get 1
            local.get 2
            i32.const 0
            call $_ZN3std10sys_common9backtrace5print17h9461bb83fbf44b56E
            local.get 3
            i32.load8_u offset=40
            i32.const 3
            i32.ne
            br_if 2 (;@1;)
            local.get 3
            i32.load offset=44
            local.tee 0
            i32.load
            local.get 0
            i32.load offset=4
            i32.load
            call_indirect (type $.rodata)
            block ;; label = @4
              local.get 0
              i32.load offset=4
              local.tee 1
              i32.const 4
              i32.add
              i32.load
              local.tee 2
              i32.eqz
              br_if 0 (;@4;)
              local.get 0
              i32.load
              local.get 2
              local.get 1
              i32.const 8
              i32.add
              i32.load
              call $__rust_dealloc
            end
            local.get 0
            i32.const 12
            i32.const 4
            call $__rust_dealloc
            br 2 (;@1;)
          end
          local.get 3
          i32.const 40
          i32.add
          local.get 1
          local.get 2
          i32.const 1
          call $_ZN3std10sys_common9backtrace5print17h9461bb83fbf44b56E
          local.get 3
          i32.load8_u offset=40
          i32.const 3
          i32.ne
          br_if 1 (;@1;)
          local.get 3
          i32.load offset=44
          local.tee 0
          i32.load
          local.get 0
          i32.load offset=4
          i32.load
          call_indirect (type $.rodata)
          block ;; label = @3
            local.get 0
            i32.load offset=4
            local.tee 1
            i32.const 4
            i32.add
            i32.load
            local.tee 2
            i32.eqz
            br_if 0 (;@3;)
            local.get 0
            i32.load
            local.get 2
            local.get 1
            i32.const 8
            i32.add
            i32.load
            call $__rust_dealloc
          end
          local.get 0
          i32.const 12
          i32.const 4
          call $__rust_dealloc
          br 1 (;@1;)
        end
        i32.const 0
        i32.load8_u offset=1053016
        local.set 0
        i32.const 0
        i32.const 0
        i32.store8 offset=1053016
        local.get 0
        i32.eqz
        br_if 0 (;@1;)
        local.get 3
        i32.const 52
        i32.add
        i32.const 1
        i32.store
        local.get 3
        i32.const 60
        i32.add
        i32.const 0
        i32.store
        local.get 3
        i32.const 1050940
        i32.store offset=48
        local.get 3
        i32.const 1049692
        i32.store offset=56
        local.get 3
        i32.const 0
        i32.store offset=40
        local.get 3
        i32.const 16
        i32.add
        local.get 1
        local.get 3
        i32.const 40
        i32.add
        local.get 4
        call_indirect (type 2)
        local.get 3
        i32.load8_u offset=16
        i32.const 3
        i32.ne
        br_if 0 (;@1;)
        local.get 3
        i32.load offset=20
        local.tee 0
        i32.load
        local.get 0
        i32.load offset=4
        i32.load
        call_indirect (type $.rodata)
        block ;; label = @2
          local.get 0
          i32.load offset=4
          local.tee 1
          i32.const 4
          i32.add
          i32.load
          local.tee 2
          i32.eqz
          br_if 0 (;@2;)
          local.get 0
          i32.load
          local.get 2
          local.get 1
          i32.const 8
          i32.add
          i32.load
          call $__rust_dealloc
        end
        local.get 0
        i32.const 12
        i32.const 4
        call $__rust_dealloc
      end
      local.get 3
      i32.const 64
      i32.add
      global.set $__stack_pointer
    )
    (func $rust_begin_unwind (;158;) (type $.rodata) (param i32)
      (local i32 i32 i32)
      global.get $__stack_pointer
      i32.const 16
      i32.sub
      local.tee 1
      global.set $__stack_pointer
      block ;; label = @1
        block ;; label = @2
          local.get 0
          call $_ZN4core5panic10panic_info9PanicInfo8location17h3d7375e8ae0a75d3E
          local.tee 2
          i32.eqz
          br_if 0 (;@2;)
          local.get 0
          call $_ZN4core5panic10panic_info9PanicInfo7message17h25ed2cf84c4f2ad9E
          local.tee 3
          i32.eqz
          br_if 1 (;@1;)
          local.get 1
          local.get 2
          i32.store offset=8
          local.get 1
          local.get 0
          i32.store offset=4
          local.get 1
          local.get 3
          i32.store
          local.get 1
          call $_ZN3std10sys_common9backtrace26__rust_end_short_backtrace17h1c7217a99e6903e8E
          unreachable
        end
        i32.const 1049744
        i32.const 43
        i32.const 1050964
        call $_ZN4core9panicking5panic17h72f0442034a99972E
        unreachable
      end
      i32.const 1049744
      i32.const 43
      i32.const 1050948
      call $_ZN4core9panicking5panic17h72f0442034a99972E
      unreachable
    )
    (func $_ZN90_$LT$std..panicking..begin_panic_handler..PanicPayload$u20$as$u20$core..panic..BoxMeUp$GT$8take_box17h961e0a3d1cf878bbE (;159;) (type 3) (param i32 i32)
      (local i32 i32 i32 i64)
      global.get $__stack_pointer
      i32.const 48
      i32.sub
      local.tee 2
      global.set $__stack_pointer
      block ;; label = @1
        local.get 1
        i32.load offset=4
        br_if 0 (;@1;)
        local.get 1
        i32.load offset=12
        local.set 3
        local.get 2
        i32.const 8
        i32.add
        i32.const 8
        i32.add
        local.tee 4
        i32.const 0
        i32.store
        local.get 2
        i64.const 4294967296
        i64.store offset=8
        local.get 2
        local.get 2
        i32.const 8
        i32.add
        i32.store offset=20
        local.get 2
        i32.const 24
        i32.add
        i32.const 16
        i32.add
        local.get 3
        i32.const 16
        i32.add
        i64.load align=4
        i64.store
        local.get 2
        i32.const 24
        i32.add
        i32.const 8
        i32.add
        local.get 3
        i32.const 8
        i32.add
        i64.load align=4
        i64.store
        local.get 2
        local.get 3
        i64.load align=4
        i64.store offset=24
        local.get 2
        i32.const 20
        i32.add
        i32.const 1049620
        local.get 2
        i32.const 24
        i32.add
        call $_ZN4core3fmt5write17h7365630cdee3db2cE
        drop
        local.get 1
        i32.const 8
        i32.add
        local.get 4
        i32.load
        i32.store
        local.get 1
        local.get 2
        i64.load offset=8
        i64.store align=4
      end
      local.get 1
      i64.load align=4
      local.set 5
      local.get 1
      i64.const 4294967296
      i64.store align=4
      local.get 2
      i32.const 24
      i32.add
      i32.const 8
      i32.add
      local.tee 3
      local.get 1
      i32.const 8
      i32.add
      local.tee 1
      i32.load
      i32.store
      local.get 1
      i32.const 0
      i32.store
      local.get 2
      local.get 5
      i64.store offset=24
      block ;; label = @1
        i32.const 12
        i32.const 4
        call $__rust_alloc
        local.tee 1
        br_if 0 (;@1;)
        i32.const 12
        i32.const 4
        call $_ZN5alloc5alloc18handle_alloc_error17h3a7121d6b22d4137E
        unreachable
      end
      local.get 1
      local.get 2
      i64.load offset=24
      i64.store align=4
      local.get 1
      i32.const 8
      i32.add
      local.get 3
      i32.load
      i32.store
      local.get 0
      i32.const 1050980
      i32.store offset=4
      local.get 0
      local.get 1
      i32.store
      local.get 2
      i32.const 48
      i32.add
      global.set $__stack_pointer
    )
    (func $_ZN90_$LT$std..panicking..begin_panic_handler..PanicPayload$u20$as$u20$core..panic..BoxMeUp$GT$3get17h00f4944f4bc98927E (;160;) (type 3) (param i32 i32)
      (local i32 i32 i32)
      global.get $__stack_pointer
      i32.const 48
      i32.sub
      local.tee 2
      global.set $__stack_pointer
      block ;; label = @1
        local.get 1
        i32.load offset=4
        br_if 0 (;@1;)
        local.get 1
        i32.load offset=12
        local.set 3
        local.get 2
        i32.const 8
        i32.add
        i32.const 8
        i32.add
        local.tee 4
        i32.const 0
        i32.store
        local.get 2
        i64.const 4294967296
        i64.store offset=8
        local.get 2
        local.get 2
        i32.const 8
        i32.add
        i32.store offset=20
        local.get 2
        i32.const 24
        i32.add
        i32.const 16
        i32.add
        local.get 3
        i32.const 16
        i32.add
        i64.load align=4
        i64.store
        local.get 2
        i32.const 24
        i32.add
        i32.const 8
        i32.add
        local.get 3
        i32.const 8
        i32.add
        i64.load align=4
        i64.store
        local.get 2
        local.get 3
        i64.load align=4
        i64.store offset=24
        local.get 2
        i32.const 20
        i32.add
        i32.const 1049620
        local.get 2
        i32.const 24
        i32.add
        call $_ZN4core3fmt5write17h7365630cdee3db2cE
        drop
        local.get 1
        i32.const 8
        i32.add
        local.get 4
        i32.load
        i32.store
        local.get 1
        local.get 2
        i64.load offset=8
        i64.store align=4
      end
      local.get 0
      i32.const 1050980
      i32.store offset=4
      local.get 0
      local.get 1
      i32.store
      local.get 2
      i32.const 48
      i32.add
      global.set $__stack_pointer
    )
    (func $_ZN93_$LT$std..panicking..begin_panic_handler..StrPanicPayload$u20$as$u20$core..panic..BoxMeUp$GT$8take_box17hd06d90df68e79323E (;161;) (type 3) (param i32 i32)
      (local i32 i32)
      local.get 1
      i32.load offset=4
      local.set 2
      local.get 1
      i32.load
      local.set 3
      block ;; label = @1
        i32.const 8
        i32.const 4
        call $__rust_alloc
        local.tee 1
        br_if 0 (;@1;)
        i32.const 8
        i32.const 4
        call $_ZN5alloc5alloc18handle_alloc_error17h3a7121d6b22d4137E
        unreachable
      end
      local.get 1
      local.get 2
      i32.store offset=4
      local.get 1
      local.get 3
      i32.store
      local.get 0
      i32.const 1050996
      i32.store offset=4
      local.get 0
      local.get 1
      i32.store
    )
    (func $_ZN93_$LT$std..panicking..begin_panic_handler..StrPanicPayload$u20$as$u20$core..panic..BoxMeUp$GT$3get17hf82b269cd966afcaE (;162;) (type 3) (param i32 i32)
      local.get 0
      i32.const 1050996
      i32.store offset=4
      local.get 0
      local.get 1
      i32.store
    )
    (func $_ZN3std9panicking20rust_panic_with_hook17hd6f3df478dab5dc5E (;163;) (type 10) (param i32 i32 i32 i32 i32)
      (local i32 i32)
      global.get $__stack_pointer
      i32.const 112
      i32.sub
      local.tee 5
      global.set $__stack_pointer
      i32.const 0
      i32.const 0
      i32.load offset=1053064
      local.tee 6
      i32.const 1
      i32.add
      i32.store offset=1053064
      block ;; label = @1
        block ;; label = @2
          block ;; label = @3
            block ;; label = @4
              block ;; label = @5
                block ;; label = @6
                  block ;; label = @7
                    block ;; label = @8
                      local.get 6
                      i32.const -1
                      i32.gt_s
                      br_if 0 (;@8;)
                      local.get 6
                      i32.const 2147483647
                      i32.and
                      i32.const 2
                      i32.gt_u
                      br_if 2 (;@6;)
                      local.get 5
                      local.get 4
                      i32.store8 offset=64
                      local.get 5
                      local.get 3
                      i32.store offset=60
                      local.get 5
                      local.get 2
                      i32.store offset=56
                      local.get 5
                      i32.const 1051112
                      i32.store offset=52
                      local.get 5
                      i32.const 1049692
                      i32.store offset=48
                      local.get 5
                      i32.const 9
                      i32.store offset=76
                      local.get 5
                      local.get 5
                      i32.const 48
                      i32.add
                      i32.store offset=72
                      local.get 5
                      i32.const 4
                      i32.store8 offset=16
                      local.get 5
                      local.get 5
                      i32.const 104
                      i32.add
                      i32.store offset=24
                      local.get 5
                      i32.const 1
                      i32.store offset=100
                      local.get 5
                      i32.const 2
                      i32.store offset=92
                      local.get 5
                      i32.const 1051180
                      i32.store offset=88
                      local.get 5
                      i32.const 0
                      i32.store offset=80
                      local.get 5
                      local.get 5
                      i32.const 72
                      i32.add
                      i32.store offset=96
                      local.get 5
                      i32.const 16
                      i32.add
                      i32.const 1050216
                      local.get 5
                      i32.const 80
                      i32.add
                      call $_ZN4core3fmt5write17h7365630cdee3db2cE
                      local.set 6
                      local.get 5
                      i32.load8_u offset=16
                      local.set 4
                      local.get 6
                      i32.eqz
                      br_if 1 (;@7;)
                      local.get 4
                      i32.const 255
                      i32.and
                      i32.const 4
                      i32.eq
                      br_if 7 (;@1;)
                      local.get 5
                      i32.load8_u offset=16
                      i32.const 3
                      i32.ne
                      br_if 7 (;@1;)
                      local.get 5
                      i32.load offset=20
                      local.tee 5
                      i32.load
                      local.get 5
                      i32.load offset=4
                      i32.load
                      call_indirect (type $.rodata)
                      block ;; label = @9
                        local.get 5
                        i32.load offset=4
                        local.tee 6
                        i32.const 4
                        i32.add
                        i32.load
                        local.tee 4
                        i32.eqz
                        br_if 0 (;@9;)
                        local.get 5
                        i32.load
                        local.get 4
                        local.get 6
                        i32.const 8
                        i32.add
                        i32.load
                        call $__rust_dealloc
                      end
                      local.get 5
                      i32.const 12
                      i32.const 4
                      call $__rust_dealloc
                      call $_ZN3std3sys4wasi14abort_internal17ha87152b5c18d637bE
                      unreachable
                    end
                    i32.const 0
                    i32.const 0
                    i32.load offset=1053096
                    i32.const 1
                    i32.add
                    local.tee 6
                    i32.store offset=1053096
                    local.get 6
                    i32.const 2
                    i32.gt_u
                    br_if 1 (;@6;)
                    local.get 5
                    local.get 4
                    i32.store8 offset=32
                    local.get 5
                    local.get 3
                    i32.store offset=28
                    local.get 5
                    local.get 2
                    i32.store offset=24
                    local.get 5
                    i32.const 1051112
                    i32.store offset=20
                    local.get 5
                    i32.const 1049692
                    i32.store offset=16
                    i32.const 0
                    i32.load offset=1053048
                    local.tee 3
                    i32.const -1
                    i32.le_s
                    br_if 4 (;@3;)
                    i32.const 0
                    local.get 3
                    i32.const 1
                    i32.add
                    i32.store offset=1053048
                    i32.const 0
                    i32.load offset=1053056
                    local.set 3
                    local.get 5
                    i32.const 8
                    i32.add
                    local.get 0
                    local.get 1
                    i32.load offset=16
                    call_indirect (type 3)
                    local.get 5
                    local.get 5
                    i64.load offset=8
                    i64.store offset=16
                    local.get 3
                    br_if 2 (;@5;)
                    local.get 5
                    i32.const 16
                    i32.add
                    call $_ZN3std9panicking12default_hook17h53dba662f5ef513eE
                    br 3 (;@4;)
                  end
                  local.get 4
                  i32.const 255
                  i32.and
                  i32.const 3
                  i32.ne
                  br_if 5 (;@1;)
                  local.get 5
                  i32.load offset=20
                  local.tee 6
                  i32.load
                  local.get 6
                  i32.load offset=4
                  i32.load
                  call_indirect (type $.rodata)
                  block ;; label = @7
                    local.get 6
                    i32.load offset=4
                    local.tee 4
                    i32.const 4
                    i32.add
                    i32.load
                    local.tee 3
                    i32.eqz
                    br_if 0 (;@7;)
                    local.get 6
                    i32.load
                    local.get 3
                    local.get 4
                    i32.const 8
                    i32.add
                    i32.load
                    call $__rust_dealloc
                  end
                  local.get 5
                  i32.load offset=20
                  i32.const 12
                  i32.const 4
                  call $__rust_dealloc
                  call $_ZN3std3sys4wasi14abort_internal17ha87152b5c18d637bE
                  unreachable
                end
                local.get 5
                i32.const 4
                i32.store8 offset=48
                local.get 5
                local.get 5
                i32.const 104
                i32.add
                i32.store offset=56
                local.get 5
                i32.const 0
                i32.store offset=100
                local.get 5
                i32.const 1049692
                i32.store offset=96
                local.get 5
                i32.const 1
                i32.store offset=92
                local.get 5
                i32.const 1051104
                i32.store offset=88
                local.get 5
                i32.const 0
                i32.store offset=80
                local.get 5
                i32.const 48
                i32.add
                i32.const 1050216
                local.get 5
                i32.const 80
                i32.add
                call $_ZN4core3fmt5write17h7365630cdee3db2cE
                local.set 6
                local.get 5
                i32.load8_u offset=48
                local.set 4
                block ;; label = @6
                  local.get 6
                  i32.eqz
                  br_if 0 (;@6;)
                  local.get 4
                  i32.const 255
                  i32.and
                  i32.const 4
                  i32.eq
                  br_if 5 (;@1;)
                  local.get 5
                  i32.load8_u offset=48
                  i32.const 3
                  i32.ne
                  br_if 5 (;@1;)
                  local.get 5
                  i32.load offset=52
                  local.tee 5
                  i32.load
                  local.get 5
                  i32.load offset=4
                  i32.load
                  call_indirect (type $.rodata)
                  block ;; label = @7
                    local.get 5
                    i32.load offset=4
                    local.tee 6
                    i32.const 4
                    i32.add
                    i32.load
                    local.tee 4
                    i32.eqz
                    br_if 0 (;@7;)
                    local.get 5
                    i32.load
                    local.get 4
                    local.get 6
                    i32.const 8
                    i32.add
                    i32.load
                    call $__rust_dealloc
                  end
                  local.get 5
                  i32.const 12
                  i32.const 4
                  call $__rust_dealloc
                  call $_ZN3std3sys4wasi14abort_internal17ha87152b5c18d637bE
                  unreachable
                end
                local.get 4
                i32.const 255
                i32.and
                i32.const 3
                i32.ne
                br_if 4 (;@1;)
                local.get 5
                i32.load offset=52
                local.tee 6
                i32.load
                local.get 6
                i32.load offset=4
                i32.load
                call_indirect (type $.rodata)
                block ;; label = @6
                  local.get 6
                  i32.load offset=4
                  local.tee 4
                  i32.const 4
                  i32.add
                  i32.load
                  local.tee 3
                  i32.eqz
                  br_if 0 (;@6;)
                  local.get 6
                  i32.load
                  local.get 3
                  local.get 4
                  i32.const 8
                  i32.add
                  i32.load
                  call $__rust_dealloc
                end
                local.get 5
                i32.load offset=52
                i32.const 12
                i32.const 4
                call $__rust_dealloc
                br 4 (;@1;)
              end
              i32.const 0
              i32.load offset=1053056
              local.get 5
              i32.const 16
              i32.add
              i32.const 0
              i32.load offset=1053060
              i32.load offset=20
              call_indirect (type 3)
            end
            i32.const 0
            i32.const 0
            i32.load offset=1053048
            i32.const -1
            i32.add
            i32.store offset=1053048
            block ;; label = @4
              local.get 6
              i32.const 1
              i32.gt_u
              br_if 0 (;@4;)
              local.get 4
              br_if 2 (;@2;)
            end
            block ;; label = @4
              local.get 4
              i32.eqz
              br_if 0 (;@4;)
              local.get 5
              i32.const 4
              i32.store8 offset=48
              local.get 5
              local.get 5
              i32.const 104
              i32.add
              i32.store offset=56
              local.get 5
              i32.const 0
              i32.store offset=100
              local.get 5
              i32.const 1049692
              i32.store offset=96
              local.get 5
              i32.const 1
              i32.store offset=92
              local.get 5
              i32.const 1051296
              i32.store offset=88
              local.get 5
              i32.const 0
              i32.store offset=80
              local.get 5
              i32.const 48
              i32.add
              i32.const 1050216
              local.get 5
              i32.const 80
              i32.add
              call $_ZN4core3fmt5write17h7365630cdee3db2cE
              local.set 6
              local.get 5
              i32.load8_u offset=48
              local.set 4
              block ;; label = @5
                local.get 6
                i32.eqz
                br_if 0 (;@5;)
                local.get 4
                i32.const 255
                i32.and
                i32.const 4
                i32.eq
                br_if 4 (;@1;)
                local.get 5
                i32.load8_u offset=48
                i32.const 3
                i32.ne
                br_if 4 (;@1;)
                local.get 5
                i32.load offset=52
                local.tee 5
                i32.load
                local.get 5
                i32.load offset=4
                i32.load
                call_indirect (type $.rodata)
                block ;; label = @6
                  local.get 5
                  i32.load offset=4
                  local.tee 6
                  i32.const 4
                  i32.add
                  i32.load
                  local.tee 4
                  i32.eqz
                  br_if 0 (;@6;)
                  local.get 5
                  i32.load
                  local.get 4
                  local.get 6
                  i32.const 8
                  i32.add
                  i32.load
                  call $__rust_dealloc
                end
                local.get 5
                i32.const 12
                i32.const 4
                call $__rust_dealloc
                call $_ZN3std3sys4wasi14abort_internal17ha87152b5c18d637bE
                unreachable
              end
              local.get 4
              i32.const 255
              i32.and
              i32.const 3
              i32.ne
              br_if 3 (;@1;)
              local.get 5
              i32.load offset=52
              local.tee 6
              i32.load
              local.get 6
              i32.load offset=4
              i32.load
              call_indirect (type $.rodata)
              block ;; label = @5
                local.get 6
                i32.load offset=4
                local.tee 4
                i32.const 4
                i32.add
                i32.load
                local.tee 3
                i32.eqz
                br_if 0 (;@5;)
                local.get 6
                i32.load
                local.get 3
                local.get 4
                i32.const 8
                i32.add
                i32.load
                call $__rust_dealloc
              end
              local.get 5
              i32.load offset=52
              i32.const 12
              i32.const 4
              call $__rust_dealloc
              call $_ZN3std3sys4wasi14abort_internal17ha87152b5c18d637bE
              unreachable
            end
            local.get 5
            i32.const 4
            i32.store8 offset=48
            local.get 5
            local.get 5
            i32.const 104
            i32.add
            i32.store offset=56
            local.get 5
            i32.const 0
            i32.store offset=100
            local.get 5
            i32.const 1049692
            i32.store offset=96
            local.get 5
            i32.const 1
            i32.store offset=92
            local.get 5
            i32.const 1051244
            i32.store offset=88
            local.get 5
            i32.const 0
            i32.store offset=80
            local.get 5
            i32.const 48
            i32.add
            i32.const 1050216
            local.get 5
            i32.const 80
            i32.add
            call $_ZN4core3fmt5write17h7365630cdee3db2cE
            local.set 6
            local.get 5
            i32.load8_u offset=48
            local.set 4
            block ;; label = @4
              local.get 6
              i32.eqz
              br_if 0 (;@4;)
              local.get 4
              i32.const 255
              i32.and
              i32.const 4
              i32.eq
              br_if 3 (;@1;)
              local.get 5
              i32.load8_u offset=48
              i32.const 3
              i32.ne
              br_if 3 (;@1;)
              local.get 5
              i32.load offset=52
              local.tee 5
              i32.load
              local.get 5
              i32.load offset=4
              i32.load
              call_indirect (type $.rodata)
              block ;; label = @5
                local.get 5
                i32.load offset=4
                local.tee 6
                i32.const 4
                i32.add
                i32.load
                local.tee 4
                i32.eqz
                br_if 0 (;@5;)
                local.get 5
                i32.load
                local.get 4
                local.get 6
                i32.const 8
                i32.add
                i32.load
                call $__rust_dealloc
              end
              local.get 5
              i32.const 12
              i32.const 4
              call $__rust_dealloc
              call $_ZN3std3sys4wasi14abort_internal17ha87152b5c18d637bE
              unreachable
            end
            local.get 4
            i32.const 255
            i32.and
            i32.const 3
            i32.ne
            br_if 2 (;@1;)
            local.get 5
            i32.load offset=52
            local.tee 6
            i32.load
            local.get 6
            i32.load offset=4
            i32.load
            call_indirect (type $.rodata)
            block ;; label = @4
              local.get 6
              i32.load offset=4
              local.tee 4
              i32.const 4
              i32.add
              i32.load
              local.tee 3
              i32.eqz
              br_if 0 (;@4;)
              local.get 6
              i32.load
              local.get 3
              local.get 4
              i32.const 8
              i32.add
              i32.load
              call $__rust_dealloc
            end
            local.get 5
            i32.load offset=52
            i32.const 12
            i32.const 4
            call $__rust_dealloc
            call $_ZN3std3sys4wasi14abort_internal17ha87152b5c18d637bE
            unreachable
          end
          local.get 5
          i32.const 48
          i32.add
          i32.const 12
          i32.add
          i32.const 2
          i32.store
          local.get 5
          i32.const 48
          i32.add
          i32.const 20
          i32.add
          i32.const 1
          i32.store
          local.get 5
          i32.const 80
          i32.add
          i32.const 12
          i32.add
          i32.const 1
          i32.store
          local.get 5
          i32.const 80
          i32.add
          i32.const 20
          i32.add
          i32.const 0
          i32.store
          local.get 5
          i32.const 1049852
          i32.store offset=56
          local.get 5
          i32.const 0
          i32.store offset=48
          local.get 5
          i32.const 10
          i32.store offset=76
          local.get 5
          i32.const 1051576
          i32.store offset=88
          local.get 5
          i32.const 1049692
          i32.store offset=96
          local.get 5
          i32.const 0
          i32.store offset=80
          local.get 5
          local.get 5
          i32.const 72
          i32.add
          i32.store offset=64
          local.get 5
          local.get 5
          i32.const 80
          i32.add
          i32.store offset=72
          local.get 5
          i32.const 40
          i32.add
          local.get 5
          i32.const 104
          i32.add
          local.get 5
          i32.const 48
          i32.add
          call $_ZN3std2io5Write9write_fmt17h0af290cbcfa413c3E
          local.get 5
          i32.const 40
          i32.add
          call $_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17he451de32f2112359E
          call $_ZN3std3sys4wasi14abort_internal17ha87152b5c18d637bE
          unreachable
        end
        local.get 0
        local.get 1
        call $rust_panic
        unreachable
      end
      call $_ZN3std3sys4wasi14abort_internal17ha87152b5c18d637bE
      unreachable
    )
    (func $rust_panic (;164;) (type 3) (param i32 i32)
      (local i32)
      global.get $__stack_pointer
      i32.const 96
      i32.sub
      local.tee 2
      global.set $__stack_pointer
      local.get 2
      local.get 1
      i32.store offset=4
      local.get 2
      local.get 0
      i32.store
      local.get 2
      local.get 2
      call $__rust_start_panic
      i32.store offset=12
      local.get 2
      i32.const 24
      i32.add
      i32.const 12
      i32.add
      i32.const 2
      i32.store
      local.get 2
      i32.const 24
      i32.add
      i32.const 20
      i32.add
      i32.const 1
      i32.store
      local.get 2
      i32.const 56
      i32.add
      i32.const 12
      i32.add
      i32.const 1
      i32.store
      local.get 2
      i32.const 56
      i32.add
      i32.const 20
      i32.add
      i32.const 1
      i32.store
      local.get 2
      i32.const 1049852
      i32.store offset=32
      local.get 2
      i32.const 0
      i32.store offset=24
      local.get 2
      i32.const 10
      i32.store offset=52
      local.get 2
      i32.const 1051336
      i32.store offset=64
      local.get 2
      i32.const 0
      i32.store offset=56
      local.get 2
      i32.const 6
      i32.store offset=84
      local.get 2
      local.get 2
      i32.const 48
      i32.add
      i32.store offset=40
      local.get 2
      local.get 2
      i32.const 56
      i32.add
      i32.store offset=48
      local.get 2
      local.get 2
      i32.const 80
      i32.add
      i32.store offset=72
      local.get 2
      local.get 2
      i32.const 12
      i32.add
      i32.store offset=80
      local.get 2
      i32.const 16
      i32.add
      local.get 2
      i32.const 88
      i32.add
      local.get 2
      i32.const 24
      i32.add
      call $_ZN3std2io5Write9write_fmt17h0af290cbcfa413c3E
      local.get 2
      i32.const 16
      i32.add
      call $_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17he451de32f2112359E
      call $_ZN3std3sys4wasi14abort_internal17ha87152b5c18d637bE
      unreachable
    )
    (func $_ZN64_$LT$std..sys..wasi..stdio..Stderr$u20$as$u20$std..io..Write$GT$5write17hf83e706dcf4ad1dbE (;165;) (type 8) (param i32 i32 i32 i32)
      (local i32)
      global.get $__stack_pointer
      i32.const 32
      i32.sub
      local.tee 4
      global.set $__stack_pointer
      local.get 4
      local.get 3
      i32.store offset=12
      local.get 4
      local.get 2
      i32.store offset=8
      local.get 4
      i32.const 16
      i32.add
      i32.const 2
      local.get 4
      i32.const 8
      i32.add
      i32.const 1
      call $_ZN4wasi13lib_generated8fd_write17hae8ae89e35eb262eE
      block ;; label = @1
        block ;; label = @2
          local.get 4
          i32.load16_u offset=16
          br_if 0 (;@2;)
          local.get 0
          local.get 4
          i32.load offset=20
          i32.store offset=4
          local.get 0
          i32.const 4
          i32.store8
          br 1 (;@1;)
        end
        local.get 4
        local.get 4
        i32.load16_u offset=18
        i32.store16 offset=30
        local.get 0
        local.get 4
        i32.const 30
        i32.add
        call $_ZN4wasi13lib_generated5Errno3raw17h7583c3dc59f4497dE
        i64.extend_i32_u
        i64.const 65535
        i64.and
        i64.const 32
        i64.shl
        i64.store align=4
      end
      local.get 4
      i32.const 32
      i32.add
      global.set $__stack_pointer
    )
    (func $_ZN64_$LT$std..sys..wasi..stdio..Stderr$u20$as$u20$std..io..Write$GT$14write_vectored17h0cb15814ac734b1eE (;166;) (type 8) (param i32 i32 i32 i32)
      (local i32)
      global.get $__stack_pointer
      i32.const 16
      i32.sub
      local.tee 4
      global.set $__stack_pointer
      local.get 4
      i32.const 2
      local.get 2
      local.get 3
      call $_ZN4wasi13lib_generated8fd_write17hae8ae89e35eb262eE
      block ;; label = @1
        block ;; label = @2
          local.get 4
          i32.load16_u
          br_if 0 (;@2;)
          local.get 0
          local.get 4
          i32.load offset=4
          i32.store offset=4
          local.get 0
          i32.const 4
          i32.store8
          br 1 (;@1;)
        end
        local.get 4
        local.get 4
        i32.load16_u offset=2
        i32.store16 offset=14
        local.get 0
        local.get 4
        i32.const 14
        i32.add
        call $_ZN4wasi13lib_generated5Errno3raw17h7583c3dc59f4497dE
        i64.extend_i32_u
        i64.const 65535
        i64.and
        i64.const 32
        i64.shl
        i64.store align=4
      end
      local.get 4
      i32.const 16
      i32.add
      global.set $__stack_pointer
    )
    (func $_ZN64_$LT$std..sys..wasi..stdio..Stderr$u20$as$u20$std..io..Write$GT$17is_write_vectored17hda7eb5785716af6dE (;167;) (type 9) (param i32) (result i32)
      i32.const 1
    )
    (func $_ZN64_$LT$std..sys..wasi..stdio..Stderr$u20$as$u20$std..io..Write$GT$5flush17h99e626e7a1a187fcE (;168;) (type 3) (param i32 i32)
      local.get 0
      i32.const 4
      i32.store8
    )
    (func $_ZN3std5alloc8rust_oom17hb2fcce7da53bcf20E (;169;) (type 3) (param i32 i32)
      (local i32)
      local.get 0
      local.get 1
      i32.const 0
      i32.load offset=1053044
      local.tee 2
      i32.const 11
      local.get 2
      select
      call_indirect (type 3)
      call $_ZN3std7process5abort17h8f9cb50b745bb368E
      unreachable
    )
    (func $__rg_oom (;170;) (type 3) (param i32 i32)
      local.get 0
      local.get 1
      call $_ZN3std5alloc8rust_oom17hb2fcce7da53bcf20E
      unreachable
    )
    (func $__rust_start_panic (;171;) (type 9) (param i32) (result i32)
      unreachable
      unreachable
    )
    (func $_ZN4wasi13lib_generated5Errno3raw17h7583c3dc59f4497dE (;172;) (type 9) (param i32) (result i32)
      local.get 0
      i32.load16_u
    )
    (func $_ZN4wasi13lib_generated8fd_write17hae8ae89e35eb262eE (;173;) (type 8) (param i32 i32 i32 i32)
      (local i32)
      global.get $__stack_pointer
      i32.const 16
      i32.sub
      local.tee 4
      global.set $__stack_pointer
      block ;; label = @1
        block ;; label = @2
          local.get 1
          local.get 2
          local.get 3
          local.get 4
          i32.const 12
          i32.add
          call $_ZN4wasi13lib_generated22wasi_snapshot_preview18fd_write17hb97b2006f57f9505E
          local.tee 3
          br_if 0 (;@2;)
          local.get 0
          local.get 4
          i32.load offset=12
          i32.store offset=4
          i32.const 0
          local.set 3
          br 1 (;@1;)
        end
        local.get 0
        local.get 3
        i32.store16 offset=2
        i32.const 1
        local.set 3
      end
      local.get 0
      local.get 3
      i32.store16
      local.get 4
      i32.const 16
      i32.add
      global.set $__stack_pointer
    )
    (func $malloc (;174;) (type 9) (param i32) (result i32)
      local.get 0
      call $dlmalloc
    )
    (func $dlmalloc (;175;) (type 9) (param i32) (result i32)
      (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
      global.get $__stack_pointer
      i32.const 16
      i32.sub
      local.tee 1
      global.set $__stack_pointer
      block ;; label = @1
        i32.const 0
        i32.load offset=1053124
        local.tee 2
        br_if 0 (;@1;)
        block ;; label = @2
          block ;; label = @3
            i32.const 0
            i32.load offset=1053572
            local.tee 3
            i32.eqz
            br_if 0 (;@3;)
            i32.const 0
            i32.load offset=1053576
            local.set 4
            br 1 (;@2;)
          end
          i32.const 0
          i64.const -1
          i64.store offset=1053584 align=4
          i32.const 0
          i64.const 281474976776192
          i64.store offset=1053576 align=4
          i32.const 0
          local.get 1
          i32.const 8
          i32.add
          i32.const -16
          i32.and
          i32.const 1431655768
          i32.xor
          local.tee 3
          i32.store offset=1053572
          i32.const 0
          i32.const 0
          i32.store offset=1053592
          i32.const 0
          i32.const 0
          i32.store offset=1053544
          i32.const 65536
          local.set 4
        end
        i32.const 0
        local.set 2
        i32.const 0
        i32.const 1053616
        local.get 4
        i32.add
        i32.const -1
        i32.add
        i32.const 0
        local.get 4
        i32.sub
        i32.and
        i32.const 0
        select
        i32.const 1053616
        i32.sub
        local.tee 5
        i32.const 89
        i32.lt_u
        br_if 0 (;@1;)
        i32.const 0
        local.set 4
        i32.const 0
        local.get 5
        i32.store offset=1053552
        i32.const 0
        i32.const 1053616
        i32.store offset=1053548
        i32.const 0
        i32.const 1053616
        i32.store offset=1053116
        i32.const 0
        local.get 3
        i32.store offset=1053136
        i32.const 0
        i32.const -1
        i32.store offset=1053132
        loop ;; label = @2
          local.get 4
          i32.const 1053160
          i32.add
          local.get 4
          i32.const 1053148
          i32.add
          local.tee 3
          i32.store
          local.get 3
          local.get 4
          i32.const 1053140
          i32.add
          local.tee 6
          i32.store
          local.get 4
          i32.const 1053152
          i32.add
          local.get 6
          i32.store
          local.get 4
          i32.const 1053168
          i32.add
          local.get 4
          i32.const 1053156
          i32.add
          local.tee 6
          i32.store
          local.get 6
          local.get 3
          i32.store
          local.get 4
          i32.const 1053176
          i32.add
          local.get 4
          i32.const 1053164
          i32.add
          local.tee 3
          i32.store
          local.get 3
          local.get 6
          i32.store
          local.get 4
          i32.const 1053172
          i32.add
          local.get 3
          i32.store
          local.get 4
          i32.const 32
          i32.add
          local.tee 4
          i32.const 256
          i32.ne
          br_if 0 (;@2;)
        end
        i32.const 1053616
        i32.const -8
        i32.const 1053616
        i32.sub
        i32.const 15
        i32.and
        i32.const 0
        i32.const 1053616
        i32.const 8
        i32.add
        i32.const 15
        i32.and
        select
        local.tee 4
        i32.add
        local.tee 2
        i32.const 4
        i32.add
        local.get 5
        i32.const -56
        i32.add
        local.tee 3
        local.get 4
        i32.sub
        local.tee 4
        i32.const 1
        i32.or
        i32.store
        i32.const 0
        i32.const 0
        i32.load offset=1053588
        i32.store offset=1053128
        i32.const 0
        local.get 4
        i32.store offset=1053112
        i32.const 0
        local.get 2
        i32.store offset=1053124
        i32.const 1053616
        local.get 3
        i32.add
        i32.const 56
        i32.store offset=4
      end
      block ;; label = @1
        block ;; label = @2
          block ;; label = @3
            block ;; label = @4
              block ;; label = @5
                block ;; label = @6
                  block ;; label = @7
                    block ;; label = @8
                      block ;; label = @9
                        block ;; label = @10
                          block ;; label = @11
                            block ;; label = @12
                              local.get 0
                              i32.const 236
                              i32.gt_u
                              br_if 0 (;@12;)
                              block ;; label = @13
                                i32.const 0
                                i32.load offset=1053100
                                local.tee 7
                                i32.const 16
                                local.get 0
                                i32.const 19
                                i32.add
                                i32.const -16
                                i32.and
                                local.get 0
                                i32.const 11
                                i32.lt_u
                                select
                                local.tee 5
                                i32.const 3
                                i32.shr_u
                                local.tee 3
                                i32.shr_u
                                local.tee 4
                                i32.const 3
                                i32.and
                                i32.eqz
                                br_if 0 (;@13;)
                                block ;; label = @14
                                  block ;; label = @15
                                    local.get 4
                                    i32.const 1
                                    i32.and
                                    local.get 3
                                    i32.or
                                    i32.const 1
                                    i32.xor
                                    local.tee 6
                                    i32.const 3
                                    i32.shl
                                    local.tee 3
                                    i32.const 1053140
                                    i32.add
                                    local.tee 4
                                    local.get 3
                                    i32.const 1053148
                                    i32.add
                                    i32.load
                                    local.tee 3
                                    i32.load offset=8
                                    local.tee 5
                                    i32.ne
                                    br_if 0 (;@15;)
                                    i32.const 0
                                    local.get 7
                                    i32.const -2
                                    local.get 6
                                    i32.rotl
                                    i32.and
                                    i32.store offset=1053100
                                    br 1 (;@14;)
                                  end
                                  local.get 4
                                  local.get 5
                                  i32.store offset=8
                                  local.get 5
                                  local.get 4
                                  i32.store offset=12
                                end
                                local.get 3
                                i32.const 8
                                i32.add
                                local.set 4
                                local.get 3
                                local.get 6
                                i32.const 3
                                i32.shl
                                local.tee 6
                                i32.const 3
                                i32.or
                                i32.store offset=4
                                local.get 3
                                local.get 6
                                i32.add
                                local.tee 3
                                local.get 3
                                i32.load offset=4
                                i32.const 1
                                i32.or
                                i32.store offset=4
                                br 12 (;@1;)
                              end
                              local.get 5
                              i32.const 0
                              i32.load offset=1053108
                              local.tee 8
                              i32.le_u
                              br_if 1 (;@11;)
                              block ;; label = @13
                                local.get 4
                                i32.eqz
                                br_if 0 (;@13;)
                                block ;; label = @14
                                  block ;; label = @15
                                    local.get 4
                                    local.get 3
                                    i32.shl
                                    i32.const 2
                                    local.get 3
                                    i32.shl
                                    local.tee 4
                                    i32.const 0
                                    local.get 4
                                    i32.sub
                                    i32.or
                                    i32.and
                                    local.tee 4
                                    i32.const 0
                                    local.get 4
                                    i32.sub
                                    i32.and
                                    i32.const -1
                                    i32.add
                                    local.tee 4
                                    local.get 4
                                    i32.const 12
                                    i32.shr_u
                                    i32.const 16
                                    i32.and
                                    local.tee 4
                                    i32.shr_u
                                    local.tee 3
                                    i32.const 5
                                    i32.shr_u
                                    i32.const 8
                                    i32.and
                                    local.tee 6
                                    local.get 4
                                    i32.or
                                    local.get 3
                                    local.get 6
                                    i32.shr_u
                                    local.tee 4
                                    i32.const 2
                                    i32.shr_u
                                    i32.const 4
                                    i32.and
                                    local.tee 3
                                    i32.or
                                    local.get 4
                                    local.get 3
                                    i32.shr_u
                                    local.tee 4
                                    i32.const 1
                                    i32.shr_u
                                    i32.const 2
                                    i32.and
                                    local.tee 3
                                    i32.or
                                    local.get 4
                                    local.get 3
                                    i32.shr_u
                                    local.tee 4
                                    i32.const 1
                                    i32.shr_u
                                    i32.const 1
                                    i32.and
                                    local.tee 3
                                    i32.or
                                    local.get 4
                                    local.get 3
                                    i32.shr_u
                                    i32.add
                                    local.tee 3
                                    i32.const 3
                                    i32.shl
                                    local.tee 4
                                    i32.const 1053140
                                    i32.add
                                    local.tee 6
                                    local.get 4
                                    i32.const 1053148
                                    i32.add
                                    i32.load
                                    local.tee 4
                                    i32.load offset=8
                                    local.tee 0
                                    i32.ne
                                    br_if 0 (;@15;)
                                    i32.const 0
                                    local.get 7
                                    i32.const -2
                                    local.get 3
                                    i32.rotl
                                    i32.and
                                    local.tee 7
                                    i32.store offset=1053100
                                    br 1 (;@14;)
                                  end
                                  local.get 6
                                  local.get 0
                                  i32.store offset=8
                                  local.get 0
                                  local.get 6
                                  i32.store offset=12
                                end
                                local.get 4
                                local.get 5
                                i32.const 3
                                i32.or
                                i32.store offset=4
                                local.get 4
                                local.get 3
                                i32.const 3
                                i32.shl
                                local.tee 3
                                i32.add
                                local.get 3
                                local.get 5
                                i32.sub
                                local.tee 6
                                i32.store
                                local.get 4
                                local.get 5
                                i32.add
                                local.tee 0
                                local.get 6
                                i32.const 1
                                i32.or
                                i32.store offset=4
                                block ;; label = @14
                                  local.get 8
                                  i32.eqz
                                  br_if 0 (;@14;)
                                  local.get 8
                                  i32.const -8
                                  i32.and
                                  i32.const 1053140
                                  i32.add
                                  local.set 5
                                  i32.const 0
                                  i32.load offset=1053120
                                  local.set 3
                                  block ;; label = @15
                                    block ;; label = @16
                                      local.get 7
                                      i32.const 1
                                      local.get 8
                                      i32.const 3
                                      i32.shr_u
                                      i32.shl
                                      local.tee 9
                                      i32.and
                                      br_if 0 (;@16;)
                                      i32.const 0
                                      local.get 7
                                      local.get 9
                                      i32.or
                                      i32.store offset=1053100
                                      local.get 5
                                      local.set 9
                                      br 1 (;@15;)
                                    end
                                    local.get 5
                                    i32.load offset=8
                                    local.set 9
                                  end
                                  local.get 9
                                  local.get 3
                                  i32.store offset=12
                                  local.get 5
                                  local.get 3
                                  i32.store offset=8
                                  local.get 3
                                  local.get 5
                                  i32.store offset=12
                                  local.get 3
                                  local.get 9
                                  i32.store offset=8
                                end
                                local.get 4
                                i32.const 8
                                i32.add
                                local.set 4
                                i32.const 0
                                local.get 0
                                i32.store offset=1053120
                                i32.const 0
                                local.get 6
                                i32.store offset=1053108
                                br 12 (;@1;)
                              end
                              i32.const 0
                              i32.load offset=1053104
                              local.tee 10
                              i32.eqz
                              br_if 1 (;@11;)
                              local.get 10
                              i32.const 0
                              local.get 10
                              i32.sub
                              i32.and
                              i32.const -1
                              i32.add
                              local.tee 4
                              local.get 4
                              i32.const 12
                              i32.shr_u
                              i32.const 16
                              i32.and
                              local.tee 4
                              i32.shr_u
                              local.tee 3
                              i32.const 5
                              i32.shr_u
                              i32.const 8
                              i32.and
                              local.tee 6
                              local.get 4
                              i32.or
                              local.get 3
                              local.get 6
                              i32.shr_u
                              local.tee 4
                              i32.const 2
                              i32.shr_u
                              i32.const 4
                              i32.and
                              local.tee 3
                              i32.or
                              local.get 4
                              local.get 3
                              i32.shr_u
                              local.tee 4
                              i32.const 1
                              i32.shr_u
                              i32.const 2
                              i32.and
                              local.tee 3
                              i32.or
                              local.get 4
                              local.get 3
                              i32.shr_u
                              local.tee 4
                              i32.const 1
                              i32.shr_u
                              i32.const 1
                              i32.and
                              local.tee 3
                              i32.or
                              local.get 4
                              local.get 3
                              i32.shr_u
                              i32.add
                              i32.const 2
                              i32.shl
                              i32.const 1053404
                              i32.add
                              i32.load
                              local.tee 0
                              i32.load offset=4
                              i32.const -8
                              i32.and
                              local.get 5
                              i32.sub
                              local.set 3
                              local.get 0
                              local.set 6
                              block ;; label = @13
                                loop ;; label = @14
                                  block ;; label = @15
                                    local.get 6
                                    i32.load offset=16
                                    local.tee 4
                                    br_if 0 (;@15;)
                                    local.get 6
                                    i32.const 20
                                    i32.add
                                    i32.load
                                    local.tee 4
                                    i32.eqz
                                    br_if 2 (;@13;)
                                  end
                                  local.get 4
                                  i32.load offset=4
                                  i32.const -8
                                  i32.and
                                  local.get 5
                                  i32.sub
                                  local.tee 6
                                  local.get 3
                                  local.get 6
                                  local.get 3
                                  i32.lt_u
                                  local.tee 6
                                  select
                                  local.set 3
                                  local.get 4
                                  local.get 0
                                  local.get 6
                                  select
                                  local.set 0
                                  local.get 4
                                  local.set 6
                                  br 0 (;@14;)
                                end
                              end
                              local.get 0
                              i32.load offset=24
                              local.set 11
                              block ;; label = @13
                                local.get 0
                                i32.load offset=12
                                local.tee 9
                                local.get 0
                                i32.eq
                                br_if 0 (;@13;)
                                local.get 0
                                i32.load offset=8
                                local.tee 4
                                i32.const 0
                                i32.load offset=1053116
                                i32.lt_u
                                drop
                                local.get 9
                                local.get 4
                                i32.store offset=8
                                local.get 4
                                local.get 9
                                i32.store offset=12
                                br 11 (;@2;)
                              end
                              block ;; label = @13
                                local.get 0
                                i32.const 20
                                i32.add
                                local.tee 6
                                i32.load
                                local.tee 4
                                br_if 0 (;@13;)
                                local.get 0
                                i32.load offset=16
                                local.tee 4
                                i32.eqz
                                br_if 3 (;@10;)
                                local.get 0
                                i32.const 16
                                i32.add
                                local.set 6
                              end
                              loop ;; label = @13
                                local.get 6
                                local.set 2
                                local.get 4
                                local.tee 9
                                i32.const 20
                                i32.add
                                local.tee 6
                                i32.load
                                local.tee 4
                                br_if 0 (;@13;)
                                local.get 9
                                i32.const 16
                                i32.add
                                local.set 6
                                local.get 9
                                i32.load offset=16
                                local.tee 4
                                br_if 0 (;@13;)
                              end
                              local.get 2
                              i32.const 0
                              i32.store
                              br 10 (;@2;)
                            end
                            i32.const -1
                            local.set 5
                            local.get 0
                            i32.const -65
                            i32.gt_u
                            br_if 0 (;@11;)
                            local.get 0
                            i32.const 19
                            i32.add
                            local.tee 4
                            i32.const -16
                            i32.and
                            local.set 5
                            i32.const 0
                            i32.load offset=1053104
                            local.tee 10
                            i32.eqz
                            br_if 0 (;@11;)
                            i32.const 0
                            local.set 8
                            block ;; label = @12
                              local.get 5
                              i32.const 256
                              i32.lt_u
                              br_if 0 (;@12;)
                              i32.const 31
                              local.set 8
                              local.get 5
                              i32.const 16777215
                              i32.gt_u
                              br_if 0 (;@12;)
                              local.get 4
                              i32.const 8
                              i32.shr_u
                              local.tee 4
                              local.get 4
                              i32.const 1048320
                              i32.add
                              i32.const 16
                              i32.shr_u
                              i32.const 8
                              i32.and
                              local.tee 4
                              i32.shl
                              local.tee 3
                              local.get 3
                              i32.const 520192
                              i32.add
                              i32.const 16
                              i32.shr_u
                              i32.const 4
                              i32.and
                              local.tee 3
                              i32.shl
                              local.tee 6
                              local.get 6
                              i32.const 245760
                              i32.add
                              i32.const 16
                              i32.shr_u
                              i32.const 2
                              i32.and
                              local.tee 6
                              i32.shl
                              i32.const 15
                              i32.shr_u
                              local.get 4
                              local.get 3
                              i32.or
                              local.get 6
                              i32.or
                              i32.sub
                              local.tee 4
                              i32.const 1
                              i32.shl
                              local.get 5
                              local.get 4
                              i32.const 21
                              i32.add
                              i32.shr_u
                              i32.const 1
                              i32.and
                              i32.or
                              i32.const 28
                              i32.add
                              local.set 8
                            end
                            i32.const 0
                            local.get 5
                            i32.sub
                            local.set 3
                            block ;; label = @12
                              block ;; label = @13
                                block ;; label = @14
                                  block ;; label = @15
                                    local.get 8
                                    i32.const 2
                                    i32.shl
                                    i32.const 1053404
                                    i32.add
                                    i32.load
                                    local.tee 6
                                    br_if 0 (;@15;)
                                    i32.const 0
                                    local.set 4
                                    i32.const 0
                                    local.set 9
                                    br 1 (;@14;)
                                  end
                                  i32.const 0
                                  local.set 4
                                  local.get 5
                                  i32.const 0
                                  i32.const 25
                                  local.get 8
                                  i32.const 1
                                  i32.shr_u
                                  i32.sub
                                  local.get 8
                                  i32.const 31
                                  i32.eq
                                  select
                                  i32.shl
                                  local.set 0
                                  i32.const 0
                                  local.set 9
                                  loop ;; label = @15
                                    block ;; label = @16
                                      local.get 6
                                      i32.load offset=4
                                      i32.const -8
                                      i32.and
                                      local.get 5
                                      i32.sub
                                      local.tee 7
                                      local.get 3
                                      i32.ge_u
                                      br_if 0 (;@16;)
                                      local.get 7
                                      local.set 3
                                      local.get 6
                                      local.set 9
                                      local.get 7
                                      br_if 0 (;@16;)
                                      i32.const 0
                                      local.set 3
                                      local.get 6
                                      local.set 9
                                      local.get 6
                                      local.set 4
                                      br 3 (;@13;)
                                    end
                                    local.get 4
                                    local.get 6
                                    i32.const 20
                                    i32.add
                                    i32.load
                                    local.tee 7
                                    local.get 7
                                    local.get 6
                                    local.get 0
                                    i32.const 29
                                    i32.shr_u
                                    i32.const 4
                                    i32.and
                                    i32.add
                                    i32.const 16
                                    i32.add
                                    i32.load
                                    local.tee 6
                                    i32.eq
                                    select
                                    local.get 4
                                    local.get 7
                                    select
                                    local.set 4
                                    local.get 0
                                    i32.const 1
                                    i32.shl
                                    local.set 0
                                    local.get 6
                                    br_if 0 (;@15;)
                                  end
                                end
                                block ;; label = @14
                                  local.get 4
                                  local.get 9
                                  i32.or
                                  br_if 0 (;@14;)
                                  i32.const 0
                                  local.set 9
                                  i32.const 2
                                  local.get 8
                                  i32.shl
                                  local.tee 4
                                  i32.const 0
                                  local.get 4
                                  i32.sub
                                  i32.or
                                  local.get 10
                                  i32.and
                                  local.tee 4
                                  i32.eqz
                                  br_if 3 (;@11;)
                                  local.get 4
                                  i32.const 0
                                  local.get 4
                                  i32.sub
                                  i32.and
                                  i32.const -1
                                  i32.add
                                  local.tee 4
                                  local.get 4
                                  i32.const 12
                                  i32.shr_u
                                  i32.const 16
                                  i32.and
                                  local.tee 4
                                  i32.shr_u
                                  local.tee 6
                                  i32.const 5
                                  i32.shr_u
                                  i32.const 8
                                  i32.and
                                  local.tee 0
                                  local.get 4
                                  i32.or
                                  local.get 6
                                  local.get 0
                                  i32.shr_u
                                  local.tee 4
                                  i32.const 2
                                  i32.shr_u
                                  i32.const 4
                                  i32.and
                                  local.tee 6
                                  i32.or
                                  local.get 4
                                  local.get 6
                                  i32.shr_u
                                  local.tee 4
                                  i32.const 1
                                  i32.shr_u
                                  i32.const 2
                                  i32.and
                                  local.tee 6
                                  i32.or
                                  local.get 4
                                  local.get 6
                                  i32.shr_u
                                  local.tee 4
                                  i32.const 1
                                  i32.shr_u
                                  i32.const 1
                                  i32.and
                                  local.tee 6
                                  i32.or
                                  local.get 4
                                  local.get 6
                                  i32.shr_u
                                  i32.add
                                  i32.const 2
                                  i32.shl
                                  i32.const 1053404
                                  i32.add
                                  i32.load
                                  local.set 4
                                end
                                local.get 4
                                i32.eqz
                                br_if 1 (;@12;)
                              end
                              loop ;; label = @13
                                local.get 4
                                i32.load offset=4
                                i32.const -8
                                i32.and
                                local.get 5
                                i32.sub
                                local.tee 7
                                local.get 3
                                i32.lt_u
                                local.set 0
                                block ;; label = @14
                                  local.get 4
                                  i32.load offset=16
                                  local.tee 6
                                  br_if 0 (;@14;)
                                  local.get 4
                                  i32.const 20
                                  i32.add
                                  i32.load
                                  local.set 6
                                end
                                local.get 7
                                local.get 3
                                local.get 0
                                select
                                local.set 3
                                local.get 4
                                local.get 9
                                local.get 0
                                select
                                local.set 9
                                local.get 6
                                local.set 4
                                local.get 6
                                br_if 0 (;@13;)
                              end
                            end
                            local.get 9
                            i32.eqz
                            br_if 0 (;@11;)
                            local.get 3
                            i32.const 0
                            i32.load offset=1053108
                            local.get 5
                            i32.sub
                            i32.ge_u
                            br_if 0 (;@11;)
                            local.get 9
                            i32.load offset=24
                            local.set 2
                            block ;; label = @12
                              local.get 9
                              i32.load offset=12
                              local.tee 0
                              local.get 9
                              i32.eq
                              br_if 0 (;@12;)
                              local.get 9
                              i32.load offset=8
                              local.tee 4
                              i32.const 0
                              i32.load offset=1053116
                              i32.lt_u
                              drop
                              local.get 0
                              local.get 4
                              i32.store offset=8
                              local.get 4
                              local.get 0
                              i32.store offset=12
                              br 9 (;@3;)
                            end
                            block ;; label = @12
                              local.get 9
                              i32.const 20
                              i32.add
                              local.tee 6
                              i32.load
                              local.tee 4
                              br_if 0 (;@12;)
                              local.get 9
                              i32.load offset=16
                              local.tee 4
                              i32.eqz
                              br_if 3 (;@9;)
                              local.get 9
                              i32.const 16
                              i32.add
                              local.set 6
                            end
                            loop ;; label = @12
                              local.get 6
                              local.set 7
                              local.get 4
                              local.tee 0
                              i32.const 20
                              i32.add
                              local.tee 6
                              i32.load
                              local.tee 4
                              br_if 0 (;@12;)
                              local.get 0
                              i32.const 16
                              i32.add
                              local.set 6
                              local.get 0
                              i32.load offset=16
                              local.tee 4
                              br_if 0 (;@12;)
                            end
                            local.get 7
                            i32.const 0
                            i32.store
                            br 8 (;@3;)
                          end
                          block ;; label = @11
                            i32.const 0
                            i32.load offset=1053108
                            local.tee 4
                            local.get 5
                            i32.lt_u
                            br_if 0 (;@11;)
                            i32.const 0
                            i32.load offset=1053120
                            local.set 3
                            block ;; label = @12
                              block ;; label = @13
                                local.get 4
                                local.get 5
                                i32.sub
                                local.tee 6
                                i32.const 16
                                i32.lt_u
                                br_if 0 (;@13;)
                                local.get 3
                                local.get 5
                                i32.add
                                local.tee 0
                                local.get 6
                                i32.const 1
                                i32.or
                                i32.store offset=4
                                i32.const 0
                                local.get 6
                                i32.store offset=1053108
                                i32.const 0
                                local.get 0
                                i32.store offset=1053120
                                local.get 3
                                local.get 4
                                i32.add
                                local.get 6
                                i32.store
                                local.get 3
                                local.get 5
                                i32.const 3
                                i32.or
                                i32.store offset=4
                                br 1 (;@12;)
                              end
                              local.get 3
                              local.get 4
                              i32.const 3
                              i32.or
                              i32.store offset=4
                              local.get 3
                              local.get 4
                              i32.add
                              local.tee 4
                              local.get 4
                              i32.load offset=4
                              i32.const 1
                              i32.or
                              i32.store offset=4
                              i32.const 0
                              i32.const 0
                              i32.store offset=1053120
                              i32.const 0
                              i32.const 0
                              i32.store offset=1053108
                            end
                            local.get 3
                            i32.const 8
                            i32.add
                            local.set 4
                            br 10 (;@1;)
                          end
                          block ;; label = @11
                            i32.const 0
                            i32.load offset=1053112
                            local.tee 6
                            local.get 5
                            i32.le_u
                            br_if 0 (;@11;)
                            local.get 2
                            local.get 5
                            i32.add
                            local.tee 4
                            local.get 6
                            local.get 5
                            i32.sub
                            local.tee 3
                            i32.const 1
                            i32.or
                            i32.store offset=4
                            i32.const 0
                            local.get 4
                            i32.store offset=1053124
                            i32.const 0
                            local.get 3
                            i32.store offset=1053112
                            local.get 2
                            local.get 5
                            i32.const 3
                            i32.or
                            i32.store offset=4
                            local.get 2
                            i32.const 8
                            i32.add
                            local.set 4
                            br 10 (;@1;)
                          end
                          block ;; label = @11
                            block ;; label = @12
                              i32.const 0
                              i32.load offset=1053572
                              i32.eqz
                              br_if 0 (;@12;)
                              i32.const 0
                              i32.load offset=1053580
                              local.set 3
                              br 1 (;@11;)
                            end
                            i32.const 0
                            i64.const -1
                            i64.store offset=1053584 align=4
                            i32.const 0
                            i64.const 281474976776192
                            i64.store offset=1053576 align=4
                            i32.const 0
                            local.get 1
                            i32.const 12
                            i32.add
                            i32.const -16
                            i32.and
                            i32.const 1431655768
                            i32.xor
                            i32.store offset=1053572
                            i32.const 0
                            i32.const 0
                            i32.store offset=1053592
                            i32.const 0
                            i32.const 0
                            i32.store offset=1053544
                            i32.const 65536
                            local.set 3
                          end
                          i32.const 0
                          local.set 4
                          block ;; label = @11
                            local.get 3
                            local.get 5
                            i32.const 71
                            i32.add
                            local.tee 8
                            i32.add
                            local.tee 0
                            i32.const 0
                            local.get 3
                            i32.sub
                            local.tee 7
                            i32.and
                            local.tee 9
                            local.get 5
                            i32.gt_u
                            br_if 0 (;@11;)
                            i32.const 0
                            i32.const 48
                            i32.store offset=1053596
                            br 10 (;@1;)
                          end
                          block ;; label = @11
                            i32.const 0
                            i32.load offset=1053540
                            local.tee 4
                            i32.eqz
                            br_if 0 (;@11;)
                            block ;; label = @12
                              i32.const 0
                              i32.load offset=1053532
                              local.tee 3
                              local.get 9
                              i32.add
                              local.tee 10
                              local.get 3
                              i32.le_u
                              br_if 0 (;@12;)
                              local.get 10
                              local.get 4
                              i32.le_u
                              br_if 1 (;@11;)
                            end
                            i32.const 0
                            local.set 4
                            i32.const 0
                            i32.const 48
                            i32.store offset=1053596
                            br 10 (;@1;)
                          end
                          i32.const 0
                          i32.load8_u offset=1053544
                          i32.const 4
                          i32.and
                          br_if 4 (;@6;)
                          block ;; label = @11
                            block ;; label = @12
                              block ;; label = @13
                                local.get 2
                                i32.eqz
                                br_if 0 (;@13;)
                                i32.const 1053548
                                local.set 4
                                loop ;; label = @14
                                  block ;; label = @15
                                    local.get 4
                                    i32.load
                                    local.tee 3
                                    local.get 2
                                    i32.gt_u
                                    br_if 0 (;@15;)
                                    local.get 3
                                    local.get 4
                                    i32.load offset=4
                                    i32.add
                                    local.get 2
                                    i32.gt_u
                                    br_if 3 (;@12;)
                                  end
                                  local.get 4
                                  i32.load offset=8
                                  local.tee 4
                                  br_if 0 (;@14;)
                                end
                              end
                              i32.const 0
                              call $sbrk
                              local.tee 0
                              i32.const -1
                              i32.eq
                              br_if 5 (;@7;)
                              local.get 9
                              local.set 7
                              block ;; label = @13
                                i32.const 0
                                i32.load offset=1053576
                                local.tee 4
                                i32.const -1
                                i32.add
                                local.tee 3
                                local.get 0
                                i32.and
                                i32.eqz
                                br_if 0 (;@13;)
                                local.get 9
                                local.get 0
                                i32.sub
                                local.get 3
                                local.get 0
                                i32.add
                                i32.const 0
                                local.get 4
                                i32.sub
                                i32.and
                                i32.add
                                local.set 7
                              end
                              local.get 7
                              local.get 5
                              i32.le_u
                              br_if 5 (;@7;)
                              local.get 7
                              i32.const 2147483646
                              i32.gt_u
                              br_if 5 (;@7;)
                              block ;; label = @13
                                i32.const 0
                                i32.load offset=1053540
                                local.tee 4
                                i32.eqz
                                br_if 0 (;@13;)
                                i32.const 0
                                i32.load offset=1053532
                                local.tee 3
                                local.get 7
                                i32.add
                                local.tee 6
                                local.get 3
                                i32.le_u
                                br_if 6 (;@7;)
                                local.get 6
                                local.get 4
                                i32.gt_u
                                br_if 6 (;@7;)
                              end
                              local.get 7
                              call $sbrk
                              local.tee 4
                              local.get 0
                              i32.ne
                              br_if 1 (;@11;)
                              br 7 (;@5;)
                            end
                            local.get 0
                            local.get 6
                            i32.sub
                            local.get 7
                            i32.and
                            local.tee 7
                            i32.const 2147483646
                            i32.gt_u
                            br_if 4 (;@7;)
                            local.get 7
                            call $sbrk
                            local.tee 0
                            local.get 4
                            i32.load
                            local.get 4
                            i32.load offset=4
                            i32.add
                            i32.eq
                            br_if 3 (;@8;)
                            local.get 0
                            local.set 4
                          end
                          block ;; label = @11
                            local.get 4
                            i32.const -1
                            i32.eq
                            br_if 0 (;@11;)
                            local.get 5
                            i32.const 72
                            i32.add
                            local.get 7
                            i32.le_u
                            br_if 0 (;@11;)
                            block ;; label = @12
                              local.get 8
                              local.get 7
                              i32.sub
                              i32.const 0
                              i32.load offset=1053580
                              local.tee 3
                              i32.add
                              i32.const 0
                              local.get 3
                              i32.sub
                              i32.and
                              local.tee 3
                              i32.const 2147483646
                              i32.le_u
                              br_if 0 (;@12;)
                              local.get 4
                              local.set 0
                              br 7 (;@5;)
                            end
                            block ;; label = @12
                              local.get 3
                              call $sbrk
                              i32.const -1
                              i32.eq
                              br_if 0 (;@12;)
                              local.get 3
                              local.get 7
                              i32.add
                              local.set 7
                              local.get 4
                              local.set 0
                              br 7 (;@5;)
                            end
                            i32.const 0
                            local.get 7
                            i32.sub
                            call $sbrk
                            drop
                            br 4 (;@7;)
                          end
                          local.get 4
                          local.set 0
                          local.get 4
                          i32.const -1
                          i32.ne
                          br_if 5 (;@5;)
                          br 3 (;@7;)
                        end
                        i32.const 0
                        local.set 9
                        br 7 (;@2;)
                      end
                      i32.const 0
                      local.set 0
                      br 5 (;@3;)
                    end
                    local.get 0
                    i32.const -1
                    i32.ne
                    br_if 2 (;@5;)
                  end
                  i32.const 0
                  i32.const 0
                  i32.load offset=1053544
                  i32.const 4
                  i32.or
                  i32.store offset=1053544
                end
                local.get 9
                i32.const 2147483646
                i32.gt_u
                br_if 1 (;@4;)
                local.get 9
                call $sbrk
                local.set 0
                i32.const 0
                call $sbrk
                local.set 4
                local.get 0
                i32.const -1
                i32.eq
                br_if 1 (;@4;)
                local.get 4
                i32.const -1
                i32.eq
                br_if 1 (;@4;)
                local.get 0
                local.get 4
                i32.ge_u
                br_if 1 (;@4;)
                local.get 4
                local.get 0
                i32.sub
                local.tee 7
                local.get 5
                i32.const 56
                i32.add
                i32.le_u
                br_if 1 (;@4;)
              end
              i32.const 0
              i32.const 0
              i32.load offset=1053532
              local.get 7
              i32.add
              local.tee 4
              i32.store offset=1053532
              block ;; label = @5
                local.get 4
                i32.const 0
                i32.load offset=1053536
                i32.le_u
                br_if 0 (;@5;)
                i32.const 0
                local.get 4
                i32.store offset=1053536
              end
              block ;; label = @5
                block ;; label = @6
                  block ;; label = @7
                    block ;; label = @8
                      i32.const 0
                      i32.load offset=1053124
                      local.tee 3
                      i32.eqz
                      br_if 0 (;@8;)
                      i32.const 1053548
                      local.set 4
                      loop ;; label = @9
                        local.get 0
                        local.get 4
                        i32.load
                        local.tee 6
                        local.get 4
                        i32.load offset=4
                        local.tee 9
                        i32.add
                        i32.eq
                        br_if 2 (;@7;)
                        local.get 4
                        i32.load offset=8
                        local.tee 4
                        br_if 0 (;@9;)
                        br 3 (;@6;)
                      end
                    end
                    block ;; label = @8
                      block ;; label = @9
                        i32.const 0
                        i32.load offset=1053116
                        local.tee 4
                        i32.eqz
                        br_if 0 (;@9;)
                        local.get 0
                        local.get 4
                        i32.ge_u
                        br_if 1 (;@8;)
                      end
                      i32.const 0
                      local.get 0
                      i32.store offset=1053116
                    end
                    i32.const 0
                    local.set 4
                    i32.const 0
                    local.get 7
                    i32.store offset=1053552
                    i32.const 0
                    local.get 0
                    i32.store offset=1053548
                    i32.const 0
                    i32.const -1
                    i32.store offset=1053132
                    i32.const 0
                    i32.const 0
                    i32.load offset=1053572
                    i32.store offset=1053136
                    i32.const 0
                    i32.const 0
                    i32.store offset=1053560
                    loop ;; label = @8
                      local.get 4
                      i32.const 1053160
                      i32.add
                      local.get 4
                      i32.const 1053148
                      i32.add
                      local.tee 3
                      i32.store
                      local.get 3
                      local.get 4
                      i32.const 1053140
                      i32.add
                      local.tee 6
                      i32.store
                      local.get 4
                      i32.const 1053152
                      i32.add
                      local.get 6
                      i32.store
                      local.get 4
                      i32.const 1053168
                      i32.add
                      local.get 4
                      i32.const 1053156
                      i32.add
                      local.tee 6
                      i32.store
                      local.get 6
                      local.get 3
                      i32.store
                      local.get 4
                      i32.const 1053176
                      i32.add
                      local.get 4
                      i32.const 1053164
                      i32.add
                      local.tee 3
                      i32.store
                      local.get 3
                      local.get 6
                      i32.store
                      local.get 4
                      i32.const 1053172
                      i32.add
                      local.get 3
                      i32.store
                      local.get 4
                      i32.const 32
                      i32.add
                      local.tee 4
                      i32.const 256
                      i32.ne
                      br_if 0 (;@8;)
                    end
                    local.get 0
                    i32.const -8
                    local.get 0
                    i32.sub
                    i32.const 15
                    i32.and
                    i32.const 0
                    local.get 0
                    i32.const 8
                    i32.add
                    i32.const 15
                    i32.and
                    select
                    local.tee 4
                    i32.add
                    local.tee 3
                    local.get 7
                    i32.const -56
                    i32.add
                    local.tee 6
                    local.get 4
                    i32.sub
                    local.tee 4
                    i32.const 1
                    i32.or
                    i32.store offset=4
                    i32.const 0
                    i32.const 0
                    i32.load offset=1053588
                    i32.store offset=1053128
                    i32.const 0
                    local.get 4
                    i32.store offset=1053112
                    i32.const 0
                    local.get 3
                    i32.store offset=1053124
                    local.get 0
                    local.get 6
                    i32.add
                    i32.const 56
                    i32.store offset=4
                    br 2 (;@5;)
                  end
                  local.get 4
                  i32.load8_u offset=12
                  i32.const 8
                  i32.and
                  br_if 0 (;@6;)
                  local.get 3
                  local.get 6
                  i32.lt_u
                  br_if 0 (;@6;)
                  local.get 3
                  local.get 0
                  i32.ge_u
                  br_if 0 (;@6;)
                  local.get 3
                  i32.const -8
                  local.get 3
                  i32.sub
                  i32.const 15
                  i32.and
                  i32.const 0
                  local.get 3
                  i32.const 8
                  i32.add
                  i32.const 15
                  i32.and
                  select
                  local.tee 6
                  i32.add
                  local.tee 0
                  i32.const 0
                  i32.load offset=1053112
                  local.get 7
                  i32.add
                  local.tee 2
                  local.get 6
                  i32.sub
                  local.tee 6
                  i32.const 1
                  i32.or
                  i32.store offset=4
                  local.get 4
                  local.get 9
                  local.get 7
                  i32.add
                  i32.store offset=4
                  i32.const 0
                  i32.const 0
                  i32.load offset=1053588
                  i32.store offset=1053128
                  i32.const 0
                  local.get 6
                  i32.store offset=1053112
                  i32.const 0
                  local.get 0
                  i32.store offset=1053124
                  local.get 3
                  local.get 2
                  i32.add
                  i32.const 56
                  i32.store offset=4
                  br 1 (;@5;)
                end
                block ;; label = @6
                  local.get 0
                  i32.const 0
                  i32.load offset=1053116
                  local.tee 9
                  i32.ge_u
                  br_if 0 (;@6;)
                  i32.const 0
                  local.get 0
                  i32.store offset=1053116
                  local.get 0
                  local.set 9
                end
                local.get 0
                local.get 7
                i32.add
                local.set 6
                i32.const 1053548
                local.set 4
                block ;; label = @6
                  block ;; label = @7
                    block ;; label = @8
                      block ;; label = @9
                        block ;; label = @10
                          block ;; label = @11
                            block ;; label = @12
                              loop ;; label = @13
                                local.get 4
                                i32.load
                                local.get 6
                                i32.eq
                                br_if 1 (;@12;)
                                local.get 4
                                i32.load offset=8
                                local.tee 4
                                br_if 0 (;@13;)
                                br 2 (;@11;)
                              end
                            end
                            local.get 4
                            i32.load8_u offset=12
                            i32.const 8
                            i32.and
                            i32.eqz
                            br_if 1 (;@10;)
                          end
                          i32.const 1053548
                          local.set 4
                          loop ;; label = @11
                            block ;; label = @12
                              local.get 4
                              i32.load
                              local.tee 6
                              local.get 3
                              i32.gt_u
                              br_if 0 (;@12;)
                              local.get 6
                              local.get 4
                              i32.load offset=4
                              i32.add
                              local.tee 6
                              local.get 3
                              i32.gt_u
                              br_if 3 (;@9;)
                            end
                            local.get 4
                            i32.load offset=8
                            local.set 4
                            br 0 (;@11;)
                          end
                        end
                        local.get 4
                        local.get 0
                        i32.store
                        local.get 4
                        local.get 4
                        i32.load offset=4
                        local.get 7
                        i32.add
                        i32.store offset=4
                        local.get 0
                        i32.const -8
                        local.get 0
                        i32.sub
                        i32.const 15
                        i32.and
                        i32.const 0
                        local.get 0
                        i32.const 8
                        i32.add
                        i32.const 15
                        i32.and
                        select
                        i32.add
                        local.tee 2
                        local.get 5
                        i32.const 3
                        i32.or
                        i32.store offset=4
                        local.get 6
                        i32.const -8
                        local.get 6
                        i32.sub
                        i32.const 15
                        i32.and
                        i32.const 0
                        local.get 6
                        i32.const 8
                        i32.add
                        i32.const 15
                        i32.and
                        select
                        i32.add
                        local.tee 7
                        local.get 2
                        local.get 5
                        i32.add
                        local.tee 5
                        i32.sub
                        local.set 4
                        block ;; label = @10
                          local.get 7
                          local.get 3
                          i32.ne
                          br_if 0 (;@10;)
                          i32.const 0
                          local.get 5
                          i32.store offset=1053124
                          i32.const 0
                          i32.const 0
                          i32.load offset=1053112
                          local.get 4
                          i32.add
                          local.tee 4
                          i32.store offset=1053112
                          local.get 5
                          local.get 4
                          i32.const 1
                          i32.or
                          i32.store offset=4
                          br 3 (;@7;)
                        end
                        block ;; label = @10
                          local.get 7
                          i32.const 0
                          i32.load offset=1053120
                          i32.ne
                          br_if 0 (;@10;)
                          i32.const 0
                          local.get 5
                          i32.store offset=1053120
                          i32.const 0
                          i32.const 0
                          i32.load offset=1053108
                          local.get 4
                          i32.add
                          local.tee 4
                          i32.store offset=1053108
                          local.get 5
                          local.get 4
                          i32.const 1
                          i32.or
                          i32.store offset=4
                          local.get 5
                          local.get 4
                          i32.add
                          local.get 4
                          i32.store
                          br 3 (;@7;)
                        end
                        block ;; label = @10
                          local.get 7
                          i32.load offset=4
                          local.tee 3
                          i32.const 3
                          i32.and
                          i32.const 1
                          i32.ne
                          br_if 0 (;@10;)
                          local.get 3
                          i32.const -8
                          i32.and
                          local.set 8
                          block ;; label = @11
                            block ;; label = @12
                              local.get 3
                              i32.const 255
                              i32.gt_u
                              br_if 0 (;@12;)
                              local.get 7
                              i32.load offset=8
                              local.tee 6
                              local.get 3
                              i32.const 3
                              i32.shr_u
                              local.tee 9
                              i32.const 3
                              i32.shl
                              i32.const 1053140
                              i32.add
                              local.tee 0
                              i32.eq
                              drop
                              block ;; label = @13
                                local.get 7
                                i32.load offset=12
                                local.tee 3
                                local.get 6
                                i32.ne
                                br_if 0 (;@13;)
                                i32.const 0
                                i32.const 0
                                i32.load offset=1053100
                                i32.const -2
                                local.get 9
                                i32.rotl
                                i32.and
                                i32.store offset=1053100
                                br 2 (;@11;)
                              end
                              local.get 3
                              local.get 0
                              i32.eq
                              drop
                              local.get 3
                              local.get 6
                              i32.store offset=8
                              local.get 6
                              local.get 3
                              i32.store offset=12
                              br 1 (;@11;)
                            end
                            local.get 7
                            i32.load offset=24
                            local.set 10
                            block ;; label = @12
                              block ;; label = @13
                                local.get 7
                                i32.load offset=12
                                local.tee 0
                                local.get 7
                                i32.eq
                                br_if 0 (;@13;)
                                local.get 7
                                i32.load offset=8
                                local.tee 3
                                local.get 9
                                i32.lt_u
                                drop
                                local.get 0
                                local.get 3
                                i32.store offset=8
                                local.get 3
                                local.get 0
                                i32.store offset=12
                                br 1 (;@12;)
                              end
                              block ;; label = @13
                                local.get 7
                                i32.const 20
                                i32.add
                                local.tee 3
                                i32.load
                                local.tee 6
                                br_if 0 (;@13;)
                                local.get 7
                                i32.const 16
                                i32.add
                                local.tee 3
                                i32.load
                                local.tee 6
                                br_if 0 (;@13;)
                                i32.const 0
                                local.set 0
                                br 1 (;@12;)
                              end
                              loop ;; label = @13
                                local.get 3
                                local.set 9
                                local.get 6
                                local.tee 0
                                i32.const 20
                                i32.add
                                local.tee 3
                                i32.load
                                local.tee 6
                                br_if 0 (;@13;)
                                local.get 0
                                i32.const 16
                                i32.add
                                local.set 3
                                local.get 0
                                i32.load offset=16
                                local.tee 6
                                br_if 0 (;@13;)
                              end
                              local.get 9
                              i32.const 0
                              i32.store
                            end
                            local.get 10
                            i32.eqz
                            br_if 0 (;@11;)
                            block ;; label = @12
                              block ;; label = @13
                                local.get 7
                                local.get 7
                                i32.load offset=28
                                local.tee 6
                                i32.const 2
                                i32.shl
                                i32.const 1053404
                                i32.add
                                local.tee 3
                                i32.load
                                i32.ne
                                br_if 0 (;@13;)
                                local.get 3
                                local.get 0
                                i32.store
                                local.get 0
                                br_if 1 (;@12;)
                                i32.const 0
                                i32.const 0
                                i32.load offset=1053104
                                i32.const -2
                                local.get 6
                                i32.rotl
                                i32.and
                                i32.store offset=1053104
                                br 2 (;@11;)
                              end
                              local.get 10
                              i32.const 16
                              i32.const 20
                              local.get 10
                              i32.load offset=16
                              local.get 7
                              i32.eq
                              select
                              i32.add
                              local.get 0
                              i32.store
                              local.get 0
                              i32.eqz
                              br_if 1 (;@11;)
                            end
                            local.get 0
                            local.get 10
                            i32.store offset=24
                            block ;; label = @12
                              local.get 7
                              i32.load offset=16
                              local.tee 3
                              i32.eqz
                              br_if 0 (;@12;)
                              local.get 0
                              local.get 3
                              i32.store offset=16
                              local.get 3
                              local.get 0
                              i32.store offset=24
                            end
                            local.get 7
                            i32.load offset=20
                            local.tee 3
                            i32.eqz
                            br_if 0 (;@11;)
                            local.get 0
                            i32.const 20
                            i32.add
                            local.get 3
                            i32.store
                            local.get 3
                            local.get 0
                            i32.store offset=24
                          end
                          local.get 8
                          local.get 4
                          i32.add
                          local.set 4
                          local.get 7
                          local.get 8
                          i32.add
                          local.tee 7
                          i32.load offset=4
                          local.set 3
                        end
                        local.get 7
                        local.get 3
                        i32.const -2
                        i32.and
                        i32.store offset=4
                        local.get 5
                        local.get 4
                        i32.add
                        local.get 4
                        i32.store
                        local.get 5
                        local.get 4
                        i32.const 1
                        i32.or
                        i32.store offset=4
                        block ;; label = @10
                          local.get 4
                          i32.const 255
                          i32.gt_u
                          br_if 0 (;@10;)
                          local.get 4
                          i32.const -8
                          i32.and
                          i32.const 1053140
                          i32.add
                          local.set 3
                          block ;; label = @11
                            block ;; label = @12
                              i32.const 0
                              i32.load offset=1053100
                              local.tee 6
                              i32.const 1
                              local.get 4
                              i32.const 3
                              i32.shr_u
                              i32.shl
                              local.tee 4
                              i32.and
                              br_if 0 (;@12;)
                              i32.const 0
                              local.get 6
                              local.get 4
                              i32.or
                              i32.store offset=1053100
                              local.get 3
                              local.set 4
                              br 1 (;@11;)
                            end
                            local.get 3
                            i32.load offset=8
                            local.set 4
                          end
                          local.get 4
                          local.get 5
                          i32.store offset=12
                          local.get 3
                          local.get 5
                          i32.store offset=8
                          local.get 5
                          local.get 3
                          i32.store offset=12
                          local.get 5
                          local.get 4
                          i32.store offset=8
                          br 3 (;@7;)
                        end
                        i32.const 31
                        local.set 3
                        block ;; label = @10
                          local.get 4
                          i32.const 16777215
                          i32.gt_u
                          br_if 0 (;@10;)
                          local.get 4
                          i32.const 8
                          i32.shr_u
                          local.tee 3
                          local.get 3
                          i32.const 1048320
                          i32.add
                          i32.const 16
                          i32.shr_u
                          i32.const 8
                          i32.and
                          local.tee 3
                          i32.shl
                          local.tee 6
                          local.get 6
                          i32.const 520192
                          i32.add
                          i32.const 16
                          i32.shr_u
                          i32.const 4
                          i32.and
                          local.tee 6
                          i32.shl
                          local.tee 0
                          local.get 0
                          i32.const 245760
                          i32.add
                          i32.const 16
                          i32.shr_u
                          i32.const 2
                          i32.and
                          local.tee 0
                          i32.shl
                          i32.const 15
                          i32.shr_u
                          local.get 3
                          local.get 6
                          i32.or
                          local.get 0
                          i32.or
                          i32.sub
                          local.tee 3
                          i32.const 1
                          i32.shl
                          local.get 4
                          local.get 3
                          i32.const 21
                          i32.add
                          i32.shr_u
                          i32.const 1
                          i32.and
                          i32.or
                          i32.const 28
                          i32.add
                          local.set 3
                        end
                        local.get 5
                        local.get 3
                        i32.store offset=28
                        local.get 5
                        i64.const 0
                        i64.store offset=16 align=4
                        local.get 3
                        i32.const 2
                        i32.shl
                        i32.const 1053404
                        i32.add
                        local.set 6
                        block ;; label = @10
                          i32.const 0
                          i32.load offset=1053104
                          local.tee 0
                          i32.const 1
                          local.get 3
                          i32.shl
                          local.tee 9
                          i32.and
                          br_if 0 (;@10;)
                          local.get 6
                          local.get 5
                          i32.store
                          i32.const 0
                          local.get 0
                          local.get 9
                          i32.or
                          i32.store offset=1053104
                          local.get 5
                          local.get 6
                          i32.store offset=24
                          local.get 5
                          local.get 5
                          i32.store offset=8
                          local.get 5
                          local.get 5
                          i32.store offset=12
                          br 3 (;@7;)
                        end
                        local.get 4
                        i32.const 0
                        i32.const 25
                        local.get 3
                        i32.const 1
                        i32.shr_u
                        i32.sub
                        local.get 3
                        i32.const 31
                        i32.eq
                        select
                        i32.shl
                        local.set 3
                        local.get 6
                        i32.load
                        local.set 0
                        loop ;; label = @10
                          local.get 0
                          local.tee 6
                          i32.load offset=4
                          i32.const -8
                          i32.and
                          local.get 4
                          i32.eq
                          br_if 2 (;@8;)
                          local.get 3
                          i32.const 29
                          i32.shr_u
                          local.set 0
                          local.get 3
                          i32.const 1
                          i32.shl
                          local.set 3
                          local.get 6
                          local.get 0
                          i32.const 4
                          i32.and
                          i32.add
                          i32.const 16
                          i32.add
                          local.tee 9
                          i32.load
                          local.tee 0
                          br_if 0 (;@10;)
                        end
                        local.get 9
                        local.get 5
                        i32.store
                        local.get 5
                        local.get 6
                        i32.store offset=24
                        local.get 5
                        local.get 5
                        i32.store offset=12
                        local.get 5
                        local.get 5
                        i32.store offset=8
                        br 2 (;@7;)
                      end
                      local.get 0
                      i32.const -8
                      local.get 0
                      i32.sub
                      i32.const 15
                      i32.and
                      i32.const 0
                      local.get 0
                      i32.const 8
                      i32.add
                      i32.const 15
                      i32.and
                      select
                      local.tee 4
                      i32.add
                      local.tee 2
                      local.get 7
                      i32.const -56
                      i32.add
                      local.tee 9
                      local.get 4
                      i32.sub
                      local.tee 4
                      i32.const 1
                      i32.or
                      i32.store offset=4
                      local.get 0
                      local.get 9
                      i32.add
                      i32.const 56
                      i32.store offset=4
                      local.get 3
                      local.get 6
                      i32.const 55
                      local.get 6
                      i32.sub
                      i32.const 15
                      i32.and
                      i32.const 0
                      local.get 6
                      i32.const -55
                      i32.add
                      i32.const 15
                      i32.and
                      select
                      i32.add
                      i32.const -63
                      i32.add
                      local.tee 9
                      local.get 9
                      local.get 3
                      i32.const 16
                      i32.add
                      i32.lt_u
                      select
                      local.tee 9
                      i32.const 35
                      i32.store offset=4
                      i32.const 0
                      i32.const 0
                      i32.load offset=1053588
                      i32.store offset=1053128
                      i32.const 0
                      local.get 4
                      i32.store offset=1053112
                      i32.const 0
                      local.get 2
                      i32.store offset=1053124
                      local.get 9
                      i32.const 16
                      i32.add
                      i32.const 0
                      i64.load offset=1053556 align=4
                      i64.store align=4
                      local.get 9
                      i32.const 0
                      i64.load offset=1053548 align=4
                      i64.store offset=8 align=4
                      i32.const 0
                      local.get 9
                      i32.const 8
                      i32.add
                      i32.store offset=1053556
                      i32.const 0
                      local.get 7
                      i32.store offset=1053552
                      i32.const 0
                      local.get 0
                      i32.store offset=1053548
                      i32.const 0
                      i32.const 0
                      i32.store offset=1053560
                      local.get 9
                      i32.const 36
                      i32.add
                      local.set 4
                      loop ;; label = @9
                        local.get 4
                        i32.const 7
                        i32.store
                        local.get 4
                        i32.const 4
                        i32.add
                        local.tee 4
                        local.get 6
                        i32.lt_u
                        br_if 0 (;@9;)
                      end
                      local.get 9
                      local.get 3
                      i32.eq
                      br_if 3 (;@5;)
                      local.get 9
                      local.get 9
                      i32.load offset=4
                      i32.const -2
                      i32.and
                      i32.store offset=4
                      local.get 9
                      local.get 9
                      local.get 3
                      i32.sub
                      local.tee 0
                      i32.store
                      local.get 3
                      local.get 0
                      i32.const 1
                      i32.or
                      i32.store offset=4
                      block ;; label = @9
                        local.get 0
                        i32.const 255
                        i32.gt_u
                        br_if 0 (;@9;)
                        local.get 0
                        i32.const -8
                        i32.and
                        i32.const 1053140
                        i32.add
                        local.set 4
                        block ;; label = @10
                          block ;; label = @11
                            i32.const 0
                            i32.load offset=1053100
                            local.tee 6
                            i32.const 1
                            local.get 0
                            i32.const 3
                            i32.shr_u
                            i32.shl
                            local.tee 0
                            i32.and
                            br_if 0 (;@11;)
                            i32.const 0
                            local.get 6
                            local.get 0
                            i32.or
                            i32.store offset=1053100
                            local.get 4
                            local.set 6
                            br 1 (;@10;)
                          end
                          local.get 4
                          i32.load offset=8
                          local.set 6
                        end
                        local.get 6
                        local.get 3
                        i32.store offset=12
                        local.get 4
                        local.get 3
                        i32.store offset=8
                        local.get 3
                        local.get 4
                        i32.store offset=12
                        local.get 3
                        local.get 6
                        i32.store offset=8
                        br 4 (;@5;)
                      end
                      i32.const 31
                      local.set 4
                      block ;; label = @9
                        local.get 0
                        i32.const 16777215
                        i32.gt_u
                        br_if 0 (;@9;)
                        local.get 0
                        i32.const 8
                        i32.shr_u
                        local.tee 4
                        local.get 4
                        i32.const 1048320
                        i32.add
                        i32.const 16
                        i32.shr_u
                        i32.const 8
                        i32.and
                        local.tee 4
                        i32.shl
                        local.tee 6
                        local.get 6
                        i32.const 520192
                        i32.add
                        i32.const 16
                        i32.shr_u
                        i32.const 4
                        i32.and
                        local.tee 6
                        i32.shl
                        local.tee 9
                        local.get 9
                        i32.const 245760
                        i32.add
                        i32.const 16
                        i32.shr_u
                        i32.const 2
                        i32.and
                        local.tee 9
                        i32.shl
                        i32.const 15
                        i32.shr_u
                        local.get 4
                        local.get 6
                        i32.or
                        local.get 9
                        i32.or
                        i32.sub
                        local.tee 4
                        i32.const 1
                        i32.shl
                        local.get 0
                        local.get 4
                        i32.const 21
                        i32.add
                        i32.shr_u
                        i32.const 1
                        i32.and
                        i32.or
                        i32.const 28
                        i32.add
                        local.set 4
                      end
                      local.get 3
                      local.get 4
                      i32.store offset=28
                      local.get 3
                      i64.const 0
                      i64.store offset=16 align=4
                      local.get 4
                      i32.const 2
                      i32.shl
                      i32.const 1053404
                      i32.add
                      local.set 6
                      block ;; label = @9
                        i32.const 0
                        i32.load offset=1053104
                        local.tee 9
                        i32.const 1
                        local.get 4
                        i32.shl
                        local.tee 7
                        i32.and
                        br_if 0 (;@9;)
                        local.get 6
                        local.get 3
                        i32.store
                        i32.const 0
                        local.get 9
                        local.get 7
                        i32.or
                        i32.store offset=1053104
                        local.get 3
                        local.get 6
                        i32.store offset=24
                        local.get 3
                        local.get 3
                        i32.store offset=8
                        local.get 3
                        local.get 3
                        i32.store offset=12
                        br 4 (;@5;)
                      end
                      local.get 0
                      i32.const 0
                      i32.const 25
                      local.get 4
                      i32.const 1
                      i32.shr_u
                      i32.sub
                      local.get 4
                      i32.const 31
                      i32.eq
                      select
                      i32.shl
                      local.set 4
                      local.get 6
                      i32.load
                      local.set 9
                      loop ;; label = @9
                        local.get 9
                        local.tee 6
                        i32.load offset=4
                        i32.const -8
                        i32.and
                        local.get 0
                        i32.eq
                        br_if 3 (;@6;)
                        local.get 4
                        i32.const 29
                        i32.shr_u
                        local.set 9
                        local.get 4
                        i32.const 1
                        i32.shl
                        local.set 4
                        local.get 6
                        local.get 9
                        i32.const 4
                        i32.and
                        i32.add
                        i32.const 16
                        i32.add
                        local.tee 7
                        i32.load
                        local.tee 9
                        br_if 0 (;@9;)
                      end
                      local.get 7
                      local.get 3
                      i32.store
                      local.get 3
                      local.get 6
                      i32.store offset=24
                      local.get 3
                      local.get 3
                      i32.store offset=12
                      local.get 3
                      local.get 3
                      i32.store offset=8
                      br 3 (;@5;)
                    end
                    local.get 6
                    i32.load offset=8
                    local.tee 4
                    local.get 5
                    i32.store offset=12
                    local.get 6
                    local.get 5
                    i32.store offset=8
                    local.get 5
                    i32.const 0
                    i32.store offset=24
                    local.get 5
                    local.get 6
                    i32.store offset=12
                    local.get 5
                    local.get 4
                    i32.store offset=8
                  end
                  local.get 2
                  i32.const 8
                  i32.add
                  local.set 4
                  br 5 (;@1;)
                end
                local.get 6
                i32.load offset=8
                local.tee 4
                local.get 3
                i32.store offset=12
                local.get 6
                local.get 3
                i32.store offset=8
                local.get 3
                i32.const 0
                i32.store offset=24
                local.get 3
                local.get 6
                i32.store offset=12
                local.get 3
                local.get 4
                i32.store offset=8
              end
              i32.const 0
              i32.load offset=1053112
              local.tee 4
              local.get 5
              i32.le_u
              br_if 0 (;@4;)
              i32.const 0
              i32.load offset=1053124
              local.tee 3
              local.get 5
              i32.add
              local.tee 6
              local.get 4
              local.get 5
              i32.sub
              local.tee 4
              i32.const 1
              i32.or
              i32.store offset=4
              i32.const 0
              local.get 4
              i32.store offset=1053112
              i32.const 0
              local.get 6
              i32.store offset=1053124
              local.get 3
              local.get 5
              i32.const 3
              i32.or
              i32.store offset=4
              local.get 3
              i32.const 8
              i32.add
              local.set 4
              br 3 (;@1;)
            end
            i32.const 0
            local.set 4
            i32.const 0
            i32.const 48
            i32.store offset=1053596
            br 2 (;@1;)
          end
          block ;; label = @3
            local.get 2
            i32.eqz
            br_if 0 (;@3;)
            block ;; label = @4
              block ;; label = @5
                local.get 9
                local.get 9
                i32.load offset=28
                local.tee 6
                i32.const 2
                i32.shl
                i32.const 1053404
                i32.add
                local.tee 4
                i32.load
                i32.ne
                br_if 0 (;@5;)
                local.get 4
                local.get 0
                i32.store
                local.get 0
                br_if 1 (;@4;)
                i32.const 0
                local.get 10
                i32.const -2
                local.get 6
                i32.rotl
                i32.and
                local.tee 10
                i32.store offset=1053104
                br 2 (;@3;)
              end
              local.get 2
              i32.const 16
              i32.const 20
              local.get 2
              i32.load offset=16
              local.get 9
              i32.eq
              select
              i32.add
              local.get 0
              i32.store
              local.get 0
              i32.eqz
              br_if 1 (;@3;)
            end
            local.get 0
            local.get 2
            i32.store offset=24
            block ;; label = @4
              local.get 9
              i32.load offset=16
              local.tee 4
              i32.eqz
              br_if 0 (;@4;)
              local.get 0
              local.get 4
              i32.store offset=16
              local.get 4
              local.get 0
              i32.store offset=24
            end
            local.get 9
            i32.const 20
            i32.add
            i32.load
            local.tee 4
            i32.eqz
            br_if 0 (;@3;)
            local.get 0
            i32.const 20
            i32.add
            local.get 4
            i32.store
            local.get 4
            local.get 0
            i32.store offset=24
          end
          block ;; label = @3
            block ;; label = @4
              local.get 3
              i32.const 15
              i32.gt_u
              br_if 0 (;@4;)
              local.get 9
              local.get 3
              local.get 5
              i32.add
              local.tee 4
              i32.const 3
              i32.or
              i32.store offset=4
              local.get 9
              local.get 4
              i32.add
              local.tee 4
              local.get 4
              i32.load offset=4
              i32.const 1
              i32.or
              i32.store offset=4
              br 1 (;@3;)
            end
            local.get 9
            local.get 5
            i32.add
            local.tee 0
            local.get 3
            i32.const 1
            i32.or
            i32.store offset=4
            local.get 9
            local.get 5
            i32.const 3
            i32.or
            i32.store offset=4
            local.get 0
            local.get 3
            i32.add
            local.get 3
            i32.store
            block ;; label = @4
              local.get 3
              i32.const 255
              i32.gt_u
              br_if 0 (;@4;)
              local.get 3
              i32.const -8
              i32.and
              i32.const 1053140
              i32.add
              local.set 4
              block ;; label = @5
                block ;; label = @6
                  i32.const 0
                  i32.load offset=1053100
                  local.tee 6
                  i32.const 1
                  local.get 3
                  i32.const 3
                  i32.shr_u
                  i32.shl
                  local.tee 3
                  i32.and
                  br_if 0 (;@6;)
                  i32.const 0
                  local.get 6
                  local.get 3
                  i32.or
                  i32.store offset=1053100
                  local.get 4
                  local.set 3
                  br 1 (;@5;)
                end
                local.get 4
                i32.load offset=8
                local.set 3
              end
              local.get 3
              local.get 0
              i32.store offset=12
              local.get 4
              local.get 0
              i32.store offset=8
              local.get 0
              local.get 4
              i32.store offset=12
              local.get 0
              local.get 3
              i32.store offset=8
              br 1 (;@3;)
            end
            i32.const 31
            local.set 4
            block ;; label = @4
              local.get 3
              i32.const 16777215
              i32.gt_u
              br_if 0 (;@4;)
              local.get 3
              i32.const 8
              i32.shr_u
              local.tee 4
              local.get 4
              i32.const 1048320
              i32.add
              i32.const 16
              i32.shr_u
              i32.const 8
              i32.and
              local.tee 4
              i32.shl
              local.tee 6
              local.get 6
              i32.const 520192
              i32.add
              i32.const 16
              i32.shr_u
              i32.const 4
              i32.and
              local.tee 6
              i32.shl
              local.tee 5
              local.get 5
              i32.const 245760
              i32.add
              i32.const 16
              i32.shr_u
              i32.const 2
              i32.and
              local.tee 5
              i32.shl
              i32.const 15
              i32.shr_u
              local.get 4
              local.get 6
              i32.or
              local.get 5
              i32.or
              i32.sub
              local.tee 4
              i32.const 1
              i32.shl
              local.get 3
              local.get 4
              i32.const 21
              i32.add
              i32.shr_u
              i32.const 1
              i32.and
              i32.or
              i32.const 28
              i32.add
              local.set 4
            end
            local.get 0
            local.get 4
            i32.store offset=28
            local.get 0
            i64.const 0
            i64.store offset=16 align=4
            local.get 4
            i32.const 2
            i32.shl
            i32.const 1053404
            i32.add
            local.set 6
            block ;; label = @4
              local.get 10
              i32.const 1
              local.get 4
              i32.shl
              local.tee 5
              i32.and
              br_if 0 (;@4;)
              local.get 6
              local.get 0
              i32.store
              i32.const 0
              local.get 10
              local.get 5
              i32.or
              i32.store offset=1053104
              local.get 0
              local.get 6
              i32.store offset=24
              local.get 0
              local.get 0
              i32.store offset=8
              local.get 0
              local.get 0
              i32.store offset=12
              br 1 (;@3;)
            end
            local.get 3
            i32.const 0
            i32.const 25
            local.get 4
            i32.const 1
            i32.shr_u
            i32.sub
            local.get 4
            i32.const 31
            i32.eq
            select
            i32.shl
            local.set 4
            local.get 6
            i32.load
            local.set 5
            block ;; label = @4
              loop ;; label = @5
                local.get 5
                local.tee 6
                i32.load offset=4
                i32.const -8
                i32.and
                local.get 3
                i32.eq
                br_if 1 (;@4;)
                local.get 4
                i32.const 29
                i32.shr_u
                local.set 5
                local.get 4
                i32.const 1
                i32.shl
                local.set 4
                local.get 6
                local.get 5
                i32.const 4
                i32.and
                i32.add
                i32.const 16
                i32.add
                local.tee 7
                i32.load
                local.tee 5
                br_if 0 (;@5;)
              end
              local.get 7
              local.get 0
              i32.store
              local.get 0
              local.get 6
              i32.store offset=24
              local.get 0
              local.get 0
              i32.store offset=12
              local.get 0
              local.get 0
              i32.store offset=8
              br 1 (;@3;)
            end
            local.get 6
            i32.load offset=8
            local.tee 4
            local.get 0
            i32.store offset=12
            local.get 6
            local.get 0
            i32.store offset=8
            local.get 0
            i32.const 0
            i32.store offset=24
            local.get 0
            local.get 6
            i32.store offset=12
            local.get 0
            local.get 4
            i32.store offset=8
          end
          local.get 9
          i32.const 8
          i32.add
          local.set 4
          br 1 (;@1;)
        end
        block ;; label = @2
          local.get 11
          i32.eqz
          br_if 0 (;@2;)
          block ;; label = @3
            block ;; label = @4
              local.get 0
              local.get 0
              i32.load offset=28
              local.tee 6
              i32.const 2
              i32.shl
              i32.const 1053404
              i32.add
              local.tee 4
              i32.load
              i32.ne
              br_if 0 (;@4;)
              local.get 4
              local.get 9
              i32.store
              local.get 9
              br_if 1 (;@3;)
              i32.const 0
              local.get 10
              i32.const -2
              local.get 6
              i32.rotl
              i32.and
              i32.store offset=1053104
              br 2 (;@2;)
            end
            local.get 11
            i32.const 16
            i32.const 20
            local.get 11
            i32.load offset=16
            local.get 0
            i32.eq
            select
            i32.add
            local.get 9
            i32.store
            local.get 9
            i32.eqz
            br_if 1 (;@2;)
          end
          local.get 9
          local.get 11
          i32.store offset=24
          block ;; label = @3
            local.get 0
            i32.load offset=16
            local.tee 4
            i32.eqz
            br_if 0 (;@3;)
            local.get 9
            local.get 4
            i32.store offset=16
            local.get 4
            local.get 9
            i32.store offset=24
          end
          local.get 0
          i32.const 20
          i32.add
          i32.load
          local.tee 4
          i32.eqz
          br_if 0 (;@2;)
          local.get 9
          i32.const 20
          i32.add
          local.get 4
          i32.store
          local.get 4
          local.get 9
          i32.store offset=24
        end
        block ;; label = @2
          block ;; label = @3
            local.get 3
            i32.const 15
            i32.gt_u
            br_if 0 (;@3;)
            local.get 0
            local.get 3
            local.get 5
            i32.add
            local.tee 4
            i32.const 3
            i32.or
            i32.store offset=4
            local.get 0
            local.get 4
            i32.add
            local.tee 4
            local.get 4
            i32.load offset=4
            i32.const 1
            i32.or
            i32.store offset=4
            br 1 (;@2;)
          end
          local.get 0
          local.get 5
          i32.add
          local.tee 6
          local.get 3
          i32.const 1
          i32.or
          i32.store offset=4
          local.get 0
          local.get 5
          i32.const 3
          i32.or
          i32.store offset=4
          local.get 6
          local.get 3
          i32.add
          local.get 3
          i32.store
          block ;; label = @3
            local.get 8
            i32.eqz
            br_if 0 (;@3;)
            local.get 8
            i32.const -8
            i32.and
            i32.const 1053140
            i32.add
            local.set 5
            i32.const 0
            i32.load offset=1053120
            local.set 4
            block ;; label = @4
              block ;; label = @5
                i32.const 1
                local.get 8
                i32.const 3
                i32.shr_u
                i32.shl
                local.tee 9
                local.get 7
                i32.and
                br_if 0 (;@5;)
                i32.const 0
                local.get 9
                local.get 7
                i32.or
                i32.store offset=1053100
                local.get 5
                local.set 9
                br 1 (;@4;)
              end
              local.get 5
              i32.load offset=8
              local.set 9
            end
            local.get 9
            local.get 4
            i32.store offset=12
            local.get 5
            local.get 4
            i32.store offset=8
            local.get 4
            local.get 5
            i32.store offset=12
            local.get 4
            local.get 9
            i32.store offset=8
          end
          i32.const 0
          local.get 6
          i32.store offset=1053120
          i32.const 0
          local.get 3
          i32.store offset=1053108
        end
        local.get 0
        i32.const 8
        i32.add
        local.set 4
      end
      local.get 1
      i32.const 16
      i32.add
      global.set $__stack_pointer
      local.get 4
    )
    (func $free (;176;) (type $.rodata) (param i32)
      local.get 0
      call $dlfree
    )
    (func $dlfree (;177;) (type $.rodata) (param i32)
      (local i32 i32 i32 i32 i32 i32 i32)
      block ;; label = @1
        local.get 0
        i32.eqz
        br_if 0 (;@1;)
        local.get 0
        i32.const -8
        i32.add
        local.tee 1
        local.get 0
        i32.const -4
        i32.add
        i32.load
        local.tee 2
        i32.const -8
        i32.and
        local.tee 0
        i32.add
        local.set 3
        block ;; label = @2
          local.get 2
          i32.const 1
          i32.and
          br_if 0 (;@2;)
          local.get 2
          i32.const 3
          i32.and
          i32.eqz
          br_if 1 (;@1;)
          local.get 1
          local.get 1
          i32.load
          local.tee 2
          i32.sub
          local.tee 1
          i32.const 0
          i32.load offset=1053116
          local.tee 4
          i32.lt_u
          br_if 1 (;@1;)
          local.get 2
          local.get 0
          i32.add
          local.set 0
          block ;; label = @3
            local.get 1
            i32.const 0
            i32.load offset=1053120
            i32.eq
            br_if 0 (;@3;)
            block ;; label = @4
              local.get 2
              i32.const 255
              i32.gt_u
              br_if 0 (;@4;)
              local.get 1
              i32.load offset=8
              local.tee 4
              local.get 2
              i32.const 3
              i32.shr_u
              local.tee 5
              i32.const 3
              i32.shl
              i32.const 1053140
              i32.add
              local.tee 6
              i32.eq
              drop
              block ;; label = @5
                local.get 1
                i32.load offset=12
                local.tee 2
                local.get 4
                i32.ne
                br_if 0 (;@5;)
                i32.const 0
                i32.const 0
                i32.load offset=1053100
                i32.const -2
                local.get 5
                i32.rotl
                i32.and
                i32.store offset=1053100
                br 3 (;@2;)
              end
              local.get 2
              local.get 6
              i32.eq
              drop
              local.get 2
              local.get 4
              i32.store offset=8
              local.get 4
              local.get 2
              i32.store offset=12
              br 2 (;@2;)
            end
            local.get 1
            i32.load offset=24
            local.set 7
            block ;; label = @4
              block ;; label = @5
                local.get 1
                i32.load offset=12
                local.tee 6
                local.get 1
                i32.eq
                br_if 0 (;@5;)
                local.get 1
                i32.load offset=8
                local.tee 2
                local.get 4
                i32.lt_u
                drop
                local.get 6
                local.get 2
                i32.store offset=8
                local.get 2
                local.get 6
                i32.store offset=12
                br 1 (;@4;)
              end
              block ;; label = @5
                local.get 1
                i32.const 20
                i32.add
                local.tee 2
                i32.load
                local.tee 4
                br_if 0 (;@5;)
                local.get 1
                i32.const 16
                i32.add
                local.tee 2
                i32.load
                local.tee 4
                br_if 0 (;@5;)
                i32.const 0
                local.set 6
                br 1 (;@4;)
              end
              loop ;; label = @5
                local.get 2
                local.set 5
                local.get 4
                local.tee 6
                i32.const 20
                i32.add
                local.tee 2
                i32.load
                local.tee 4
                br_if 0 (;@5;)
                local.get 6
                i32.const 16
                i32.add
                local.set 2
                local.get 6
                i32.load offset=16
                local.tee 4
                br_if 0 (;@5;)
              end
              local.get 5
              i32.const 0
              i32.store
            end
            local.get 7
            i32.eqz
            br_if 1 (;@2;)
            block ;; label = @4
              block ;; label = @5
                local.get 1
                local.get 1
                i32.load offset=28
                local.tee 4
                i32.const 2
                i32.shl
                i32.const 1053404
                i32.add
                local.tee 2
                i32.load
                i32.ne
                br_if 0 (;@5;)
                local.get 2
                local.get 6
                i32.store
                local.get 6
                br_if 1 (;@4;)
                i32.const 0
                i32.const 0
                i32.load offset=1053104
                i32.const -2
                local.get 4
                i32.rotl
                i32.and
                i32.store offset=1053104
                br 3 (;@2;)
              end
              local.get 7
              i32.const 16
              i32.const 20
              local.get 7
              i32.load offset=16
              local.get 1
              i32.eq
              select
              i32.add
              local.get 6
              i32.store
              local.get 6
              i32.eqz
              br_if 2 (;@2;)
            end
            local.get 6
            local.get 7
            i32.store offset=24
            block ;; label = @4
              local.get 1
              i32.load offset=16
              local.tee 2
              i32.eqz
              br_if 0 (;@4;)
              local.get 6
              local.get 2
              i32.store offset=16
              local.get 2
              local.get 6
              i32.store offset=24
            end
            local.get 1
            i32.load offset=20
            local.tee 2
            i32.eqz
            br_if 1 (;@2;)
            local.get 6
            i32.const 20
            i32.add
            local.get 2
            i32.store
            local.get 2
            local.get 6
            i32.store offset=24
            br 1 (;@2;)
          end
          local.get 3
          i32.load offset=4
          local.tee 2
          i32.const 3
          i32.and
          i32.const 3
          i32.ne
          br_if 0 (;@2;)
          local.get 3
          local.get 2
          i32.const -2
          i32.and
          i32.store offset=4
          i32.const 0
          local.get 0
          i32.store offset=1053108
          local.get 1
          local.get 0
          i32.add
          local.get 0
          i32.store
          local.get 1
          local.get 0
          i32.const 1
          i32.or
          i32.store offset=4
          return
        end
        local.get 1
        local.get 3
        i32.ge_u
        br_if 0 (;@1;)
        local.get 3
        i32.load offset=4
        local.tee 2
        i32.const 1
        i32.and
        i32.eqz
        br_if 0 (;@1;)
        block ;; label = @2
          block ;; label = @3
            local.get 2
            i32.const 2
            i32.and
            br_if 0 (;@3;)
            block ;; label = @4
              local.get 3
              i32.const 0
              i32.load offset=1053124
              i32.ne
              br_if 0 (;@4;)
              i32.const 0
              local.get 1
              i32.store offset=1053124
              i32.const 0
              i32.const 0
              i32.load offset=1053112
              local.get 0
              i32.add
              local.tee 0
              i32.store offset=1053112
              local.get 1
              local.get 0
              i32.const 1
              i32.or
              i32.store offset=4
              local.get 1
              i32.const 0
              i32.load offset=1053120
              i32.ne
              br_if 3 (;@1;)
              i32.const 0
              i32.const 0
              i32.store offset=1053108
              i32.const 0
              i32.const 0
              i32.store offset=1053120
              return
            end
            block ;; label = @4
              local.get 3
              i32.const 0
              i32.load offset=1053120
              i32.ne
              br_if 0 (;@4;)
              i32.const 0
              local.get 1
              i32.store offset=1053120
              i32.const 0
              i32.const 0
              i32.load offset=1053108
              local.get 0
              i32.add
              local.tee 0
              i32.store offset=1053108
              local.get 1
              local.get 0
              i32.const 1
              i32.or
              i32.store offset=4
              local.get 1
              local.get 0
              i32.add
              local.get 0
              i32.store
              return
            end
            local.get 2
            i32.const -8
            i32.and
            local.get 0
            i32.add
            local.set 0
            block ;; label = @4
              block ;; label = @5
                local.get 2
                i32.const 255
                i32.gt_u
                br_if 0 (;@5;)
                local.get 3
                i32.load offset=8
                local.tee 4
                local.get 2
                i32.const 3
                i32.shr_u
                local.tee 5
                i32.const 3
                i32.shl
                i32.const 1053140
                i32.add
                local.tee 6
                i32.eq
                drop
                block ;; label = @6
                  local.get 3
                  i32.load offset=12
                  local.tee 2
                  local.get 4
                  i32.ne
                  br_if 0 (;@6;)
                  i32.const 0
                  i32.const 0
                  i32.load offset=1053100
                  i32.const -2
                  local.get 5
                  i32.rotl
                  i32.and
                  i32.store offset=1053100
                  br 2 (;@4;)
                end
                local.get 2
                local.get 6
                i32.eq
                drop
                local.get 2
                local.get 4
                i32.store offset=8
                local.get 4
                local.get 2
                i32.store offset=12
                br 1 (;@4;)
              end
              local.get 3
              i32.load offset=24
              local.set 7
              block ;; label = @5
                block ;; label = @6
                  local.get 3
                  i32.load offset=12
                  local.tee 6
                  local.get 3
                  i32.eq
                  br_if 0 (;@6;)
                  local.get 3
                  i32.load offset=8
                  local.tee 2
                  i32.const 0
                  i32.load offset=1053116
                  i32.lt_u
                  drop
                  local.get 6
                  local.get 2
                  i32.store offset=8
                  local.get 2
                  local.get 6
                  i32.store offset=12
                  br 1 (;@5;)
                end
                block ;; label = @6
                  local.get 3
                  i32.const 20
                  i32.add
                  local.tee 2
                  i32.load
                  local.tee 4
                  br_if 0 (;@6;)
                  local.get 3
                  i32.const 16
                  i32.add
                  local.tee 2
                  i32.load
                  local.tee 4
                  br_if 0 (;@6;)
                  i32.const 0
                  local.set 6
                  br 1 (;@5;)
                end
                loop ;; label = @6
                  local.get 2
                  local.set 5
                  local.get 4
                  local.tee 6
                  i32.const 20
                  i32.add
                  local.tee 2
                  i32.load
                  local.tee 4
                  br_if 0 (;@6;)
                  local.get 6
                  i32.const 16
                  i32.add
                  local.set 2
                  local.get 6
                  i32.load offset=16
                  local.tee 4
                  br_if 0 (;@6;)
                end
                local.get 5
                i32.const 0
                i32.store
              end
              local.get 7
              i32.eqz
              br_if 0 (;@4;)
              block ;; label = @5
                block ;; label = @6
                  local.get 3
                  local.get 3
                  i32.load offset=28
                  local.tee 4
                  i32.const 2
                  i32.shl
                  i32.const 1053404
                  i32.add
                  local.tee 2
                  i32.load
                  i32.ne
                  br_if 0 (;@6;)
                  local.get 2
                  local.get 6
                  i32.store
                  local.get 6
                  br_if 1 (;@5;)
                  i32.const 0
                  i32.const 0
                  i32.load offset=1053104
                  i32.const -2
                  local.get 4
                  i32.rotl
                  i32.and
                  i32.store offset=1053104
                  br 2 (;@4;)
                end
                local.get 7
                i32.const 16
                i32.const 20
                local.get 7
                i32.load offset=16
                local.get 3
                i32.eq
                select
                i32.add
                local.get 6
                i32.store
                local.get 6
                i32.eqz
                br_if 1 (;@4;)
              end
              local.get 6
              local.get 7
              i32.store offset=24
              block ;; label = @5
                local.get 3
                i32.load offset=16
                local.tee 2
                i32.eqz
                br_if 0 (;@5;)
                local.get 6
                local.get 2
                i32.store offset=16
                local.get 2
                local.get 6
                i32.store offset=24
              end
              local.get 3
              i32.load offset=20
              local.tee 2
              i32.eqz
              br_if 0 (;@4;)
              local.get 6
              i32.const 20
              i32.add
              local.get 2
              i32.store
              local.get 2
              local.get 6
              i32.store offset=24
            end
            local.get 1
            local.get 0
            i32.add
            local.get 0
            i32.store
            local.get 1
            local.get 0
            i32.const 1
            i32.or
            i32.store offset=4
            local.get 1
            i32.const 0
            i32.load offset=1053120
            i32.ne
            br_if 1 (;@2;)
            i32.const 0
            local.get 0
            i32.store offset=1053108
            return
          end
          local.get 3
          local.get 2
          i32.const -2
          i32.and
          i32.store offset=4
          local.get 1
          local.get 0
          i32.add
          local.get 0
          i32.store
          local.get 1
          local.get 0
          i32.const 1
          i32.or
          i32.store offset=4
        end
        block ;; label = @2
          local.get 0
          i32.const 255
          i32.gt_u
          br_if 0 (;@2;)
          local.get 0
          i32.const -8
          i32.and
          i32.const 1053140
          i32.add
          local.set 2
          block ;; label = @3
            block ;; label = @4
              i32.const 0
              i32.load offset=1053100
              local.tee 4
              i32.const 1
              local.get 0
              i32.const 3
              i32.shr_u
              i32.shl
              local.tee 0
              i32.and
              br_if 0 (;@4;)
              i32.const 0
              local.get 4
              local.get 0
              i32.or
              i32.store offset=1053100
              local.get 2
              local.set 0
              br 1 (;@3;)
            end
            local.get 2
            i32.load offset=8
            local.set 0
          end
          local.get 0
          local.get 1
          i32.store offset=12
          local.get 2
          local.get 1
          i32.store offset=8
          local.get 1
          local.get 2
          i32.store offset=12
          local.get 1
          local.get 0
          i32.store offset=8
          return
        end
        i32.const 31
        local.set 2
        block ;; label = @2
          local.get 0
          i32.const 16777215
          i32.gt_u
          br_if 0 (;@2;)
          local.get 0
          i32.const 8
          i32.shr_u
          local.tee 2
          local.get 2
          i32.const 1048320
          i32.add
          i32.const 16
          i32.shr_u
          i32.const 8
          i32.and
          local.tee 2
          i32.shl
          local.tee 4
          local.get 4
          i32.const 520192
          i32.add
          i32.const 16
          i32.shr_u
          i32.const 4
          i32.and
          local.tee 4
          i32.shl
          local.tee 6
          local.get 6
          i32.const 245760
          i32.add
          i32.const 16
          i32.shr_u
          i32.const 2
          i32.and
          local.tee 6
          i32.shl
          i32.const 15
          i32.shr_u
          local.get 2
          local.get 4
          i32.or
          local.get 6
          i32.or
          i32.sub
          local.tee 2
          i32.const 1
          i32.shl
          local.get 0
          local.get 2
          i32.const 21
          i32.add
          i32.shr_u
          i32.const 1
          i32.and
          i32.or
          i32.const 28
          i32.add
          local.set 2
        end
        local.get 1
        local.get 2
        i32.store offset=28
        local.get 1
        i64.const 0
        i64.store offset=16 align=4
        local.get 2
        i32.const 2
        i32.shl
        i32.const 1053404
        i32.add
        local.set 4
        block ;; label = @2
          block ;; label = @3
            i32.const 0
            i32.load offset=1053104
            local.tee 6
            i32.const 1
            local.get 2
            i32.shl
            local.tee 3
            i32.and
            br_if 0 (;@3;)
            local.get 4
            local.get 1
            i32.store
            i32.const 0
            local.get 6
            local.get 3
            i32.or
            i32.store offset=1053104
            local.get 1
            local.get 4
            i32.store offset=24
            local.get 1
            local.get 1
            i32.store offset=8
            local.get 1
            local.get 1
            i32.store offset=12
            br 1 (;@2;)
          end
          local.get 0
          i32.const 0
          i32.const 25
          local.get 2
          i32.const 1
          i32.shr_u
          i32.sub
          local.get 2
          i32.const 31
          i32.eq
          select
          i32.shl
          local.set 2
          local.get 4
          i32.load
          local.set 6
          block ;; label = @3
            loop ;; label = @4
              local.get 6
              local.tee 4
              i32.load offset=4
              i32.const -8
              i32.and
              local.get 0
              i32.eq
              br_if 1 (;@3;)
              local.get 2
              i32.const 29
              i32.shr_u
              local.set 6
              local.get 2
              i32.const 1
              i32.shl
              local.set 2
              local.get 4
              local.get 6
              i32.const 4
              i32.and
              i32.add
              i32.const 16
              i32.add
              local.tee 3
              i32.load
              local.tee 6
              br_if 0 (;@4;)
            end
            local.get 3
            local.get 1
            i32.store
            local.get 1
            local.get 4
            i32.store offset=24
            local.get 1
            local.get 1
            i32.store offset=12
            local.get 1
            local.get 1
            i32.store offset=8
            br 1 (;@2;)
          end
          local.get 4
          i32.load offset=8
          local.tee 0
          local.get 1
          i32.store offset=12
          local.get 4
          local.get 1
          i32.store offset=8
          local.get 1
          i32.const 0
          i32.store offset=24
          local.get 1
          local.get 4
          i32.store offset=12
          local.get 1
          local.get 0
          i32.store offset=8
        end
        i32.const 0
        i32.const 0
        i32.load offset=1053132
        i32.const -1
        i32.add
        local.tee 1
        i32.const -1
        local.get 1
        select
        i32.store offset=1053132
      end
    )
    (func $calloc (;178;) (type 5) (param i32 i32) (result i32)
      (local i32 i64)
      block ;; label = @1
        block ;; label = @2
          local.get 0
          br_if 0 (;@2;)
          i32.const 0
          local.set 2
          br 1 (;@1;)
        end
        local.get 0
        i64.extend_i32_u
        local.get 1
        i64.extend_i32_u
        i64.mul
        local.tee 3
        i32.wrap_i64
        local.set 2
        local.get 1
        local.get 0
        i32.or
        i32.const 65536
        i32.lt_u
        br_if 0 (;@1;)
        i32.const -1
        local.get 2
        local.get 3
        i64.const 32
        i64.shr_u
        i32.wrap_i64
        i32.const 0
        i32.ne
        select
        local.set 2
      end
      block ;; label = @1
        local.get 2
        call $dlmalloc
        local.tee 0
        i32.eqz
        br_if 0 (;@1;)
        local.get 0
        i32.const -4
        i32.add
        i32.load8_u
        i32.const 3
        i32.and
        i32.eqz
        br_if 0 (;@1;)
        local.get 0
        i32.const 0
        local.get 2
        call $memset
        drop
      end
      local.get 0
    )
    (func $realloc (;179;) (type 5) (param i32 i32) (result i32)
      (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
      block ;; label = @1
        local.get 0
        br_if 0 (;@1;)
        local.get 1
        call $dlmalloc
        return
      end
      block ;; label = @1
        local.get 1
        i32.const -64
        i32.lt_u
        br_if 0 (;@1;)
        i32.const 0
        i32.const 48
        i32.store offset=1053596
        i32.const 0
        return
      end
      i32.const 16
      local.get 1
      i32.const 19
      i32.add
      i32.const -16
      i32.and
      local.get 1
      i32.const 11
      i32.lt_u
      select
      local.set 2
      local.get 0
      i32.const -4
      i32.add
      local.tee 3
      i32.load
      local.tee 4
      i32.const -8
      i32.and
      local.set 5
      block ;; label = @1
        block ;; label = @2
          block ;; label = @3
            local.get 4
            i32.const 3
            i32.and
            br_if 0 (;@3;)
            local.get 2
            i32.const 256
            i32.lt_u
            br_if 1 (;@2;)
            local.get 5
            local.get 2
            i32.const 4
            i32.or
            i32.lt_u
            br_if 1 (;@2;)
            local.get 5
            local.get 2
            i32.sub
            i32.const 0
            i32.load offset=1053580
            i32.const 1
            i32.shl
            i32.le_u
            br_if 2 (;@1;)
            br 1 (;@2;)
          end
          local.get 0
          i32.const -8
          i32.add
          local.tee 6
          local.get 5
          i32.add
          local.set 7
          block ;; label = @3
            local.get 5
            local.get 2
            i32.lt_u
            br_if 0 (;@3;)
            local.get 5
            local.get 2
            i32.sub
            local.tee 1
            i32.const 16
            i32.lt_u
            br_if 2 (;@1;)
            local.get 3
            local.get 2
            local.get 4
            i32.const 1
            i32.and
            i32.or
            i32.const 2
            i32.or
            i32.store
            local.get 6
            local.get 2
            i32.add
            local.tee 2
            local.get 1
            i32.const 3
            i32.or
            i32.store offset=4
            local.get 7
            local.get 7
            i32.load offset=4
            i32.const 1
            i32.or
            i32.store offset=4
            local.get 2
            local.get 1
            call $dispose_chunk
            local.get 0
            return
          end
          block ;; label = @3
            local.get 7
            i32.const 0
            i32.load offset=1053124
            i32.ne
            br_if 0 (;@3;)
            i32.const 0
            i32.load offset=1053112
            local.get 5
            i32.add
            local.tee 5
            local.get 2
            i32.le_u
            br_if 1 (;@2;)
            local.get 3
            local.get 2
            local.get 4
            i32.const 1
            i32.and
            i32.or
            i32.const 2
            i32.or
            i32.store
            i32.const 0
            local.get 6
            local.get 2
            i32.add
            local.tee 1
            i32.store offset=1053124
            i32.const 0
            local.get 5
            local.get 2
            i32.sub
            local.tee 2
            i32.store offset=1053112
            local.get 1
            local.get 2
            i32.const 1
            i32.or
            i32.store offset=4
            local.get 0
            return
          end
          block ;; label = @3
            local.get 7
            i32.const 0
            i32.load offset=1053120
            i32.ne
            br_if 0 (;@3;)
            i32.const 0
            i32.load offset=1053108
            local.get 5
            i32.add
            local.tee 5
            local.get 2
            i32.lt_u
            br_if 1 (;@2;)
            block ;; label = @4
              block ;; label = @5
                local.get 5
                local.get 2
                i32.sub
                local.tee 1
                i32.const 16
                i32.lt_u
                br_if 0 (;@5;)
                local.get 3
                local.get 2
                local.get 4
                i32.const 1
                i32.and
                i32.or
                i32.const 2
                i32.or
                i32.store
                local.get 6
                local.get 2
                i32.add
                local.tee 2
                local.get 1
                i32.const 1
                i32.or
                i32.store offset=4
                local.get 6
                local.get 5
                i32.add
                local.tee 5
                local.get 1
                i32.store
                local.get 5
                local.get 5
                i32.load offset=4
                i32.const -2
                i32.and
                i32.store offset=4
                br 1 (;@4;)
              end
              local.get 3
              local.get 4
              i32.const 1
              i32.and
              local.get 5
              i32.or
              i32.const 2
              i32.or
              i32.store
              local.get 6
              local.get 5
              i32.add
              local.tee 1
              local.get 1
              i32.load offset=4
              i32.const 1
              i32.or
              i32.store offset=4
              i32.const 0
              local.set 1
              i32.const 0
              local.set 2
            end
            i32.const 0
            local.get 2
            i32.store offset=1053120
            i32.const 0
            local.get 1
            i32.store offset=1053108
            local.get 0
            return
          end
          local.get 7
          i32.load offset=4
          local.tee 8
          i32.const 2
          i32.and
          br_if 0 (;@2;)
          local.get 8
          i32.const -8
          i32.and
          local.get 5
          i32.add
          local.tee 9
          local.get 2
          i32.lt_u
          br_if 0 (;@2;)
          local.get 9
          local.get 2
          i32.sub
          local.set 10
          block ;; label = @3
            block ;; label = @4
              local.get 8
              i32.const 255
              i32.gt_u
              br_if 0 (;@4;)
              local.get 7
              i32.load offset=8
              local.tee 1
              local.get 8
              i32.const 3
              i32.shr_u
              local.tee 11
              i32.const 3
              i32.shl
              i32.const 1053140
              i32.add
              local.tee 8
              i32.eq
              drop
              block ;; label = @5
                local.get 7
                i32.load offset=12
                local.tee 5
                local.get 1
                i32.ne
                br_if 0 (;@5;)
                i32.const 0
                i32.const 0
                i32.load offset=1053100
                i32.const -2
                local.get 11
                i32.rotl
                i32.and
                i32.store offset=1053100
                br 2 (;@3;)
              end
              local.get 5
              local.get 8
              i32.eq
              drop
              local.get 5
              local.get 1
              i32.store offset=8
              local.get 1
              local.get 5
              i32.store offset=12
              br 1 (;@3;)
            end
            local.get 7
            i32.load offset=24
            local.set 12
            block ;; label = @4
              block ;; label = @5
                local.get 7
                i32.load offset=12
                local.tee 8
                local.get 7
                i32.eq
                br_if 0 (;@5;)
                local.get 7
                i32.load offset=8
                local.tee 1
                i32.const 0
                i32.load offset=1053116
                i32.lt_u
                drop
                local.get 8
                local.get 1
                i32.store offset=8
                local.get 1
                local.get 8
                i32.store offset=12
                br 1 (;@4;)
              end
              block ;; label = @5
                local.get 7
                i32.const 20
                i32.add
                local.tee 1
                i32.load
                local.tee 5
                br_if 0 (;@5;)
                local.get 7
                i32.const 16
                i32.add
                local.tee 1
                i32.load
                local.tee 5
                br_if 0 (;@5;)
                i32.const 0
                local.set 8
                br 1 (;@4;)
              end
              loop ;; label = @5
                local.get 1
                local.set 11
                local.get 5
                local.tee 8
                i32.const 20
                i32.add
                local.tee 1
                i32.load
                local.tee 5
                br_if 0 (;@5;)
                local.get 8
                i32.const 16
                i32.add
                local.set 1
                local.get 8
                i32.load offset=16
                local.tee 5
                br_if 0 (;@5;)
              end
              local.get 11
              i32.const 0
              i32.store
            end
            local.get 12
            i32.eqz
            br_if 0 (;@3;)
            block ;; label = @4
              block ;; label = @5
                local.get 7
                local.get 7
                i32.load offset=28
                local.tee 5
                i32.const 2
                i32.shl
                i32.const 1053404
                i32.add
                local.tee 1
                i32.load
                i32.ne
                br_if 0 (;@5;)
                local.get 1
                local.get 8
                i32.store
                local.get 8
                br_if 1 (;@4;)
                i32.const 0
                i32.const 0
                i32.load offset=1053104
                i32.const -2
                local.get 5
                i32.rotl
                i32.and
                i32.store offset=1053104
                br 2 (;@3;)
              end
              local.get 12
              i32.const 16
              i32.const 20
              local.get 12
              i32.load offset=16
              local.get 7
              i32.eq
              select
              i32.add
              local.get 8
              i32.store
              local.get 8
              i32.eqz
              br_if 1 (;@3;)
            end
            local.get 8
            local.get 12
            i32.store offset=24
            block ;; label = @4
              local.get 7
              i32.load offset=16
              local.tee 1
              i32.eqz
              br_if 0 (;@4;)
              local.get 8
              local.get 1
              i32.store offset=16
              local.get 1
              local.get 8
              i32.store offset=24
            end
            local.get 7
            i32.load offset=20
            local.tee 1
            i32.eqz
            br_if 0 (;@3;)
            local.get 8
            i32.const 20
            i32.add
            local.get 1
            i32.store
            local.get 1
            local.get 8
            i32.store offset=24
          end
          block ;; label = @3
            local.get 10
            i32.const 15
            i32.gt_u
            br_if 0 (;@3;)
            local.get 3
            local.get 4
            i32.const 1
            i32.and
            local.get 9
            i32.or
            i32.const 2
            i32.or
            i32.store
            local.get 6
            local.get 9
            i32.add
            local.tee 1
            local.get 1
            i32.load offset=4
            i32.const 1
            i32.or
            i32.store offset=4
            local.get 0
            return
          end
          local.get 3
          local.get 2
          local.get 4
          i32.const 1
          i32.and
          i32.or
          i32.const 2
          i32.or
          i32.store
          local.get 6
          local.get 2
          i32.add
          local.tee 1
          local.get 10
          i32.const 3
          i32.or
          i32.store offset=4
          local.get 6
          local.get 9
          i32.add
          local.tee 2
          local.get 2
          i32.load offset=4
          i32.const 1
          i32.or
          i32.store offset=4
          local.get 1
          local.get 10
          call $dispose_chunk
          local.get 0
          return
        end
        block ;; label = @2
          local.get 1
          call $dlmalloc
          local.tee 2
          br_if 0 (;@2;)
          i32.const 0
          return
        end
        local.get 2
        local.get 0
        i32.const -4
        i32.const -8
        local.get 3
        i32.load
        local.tee 5
        i32.const 3
        i32.and
        select
        local.get 5
        i32.const -8
        i32.and
        i32.add
        local.tee 5
        local.get 1
        local.get 5
        local.get 1
        i32.lt_u
        select
        call $memcpy
        local.set 1
        local.get 0
        call $dlfree
        local.get 1
        local.set 0
      end
      local.get 0
    )
    (func $dispose_chunk (;180;) (type 3) (param i32 i32)
      (local i32 i32 i32 i32 i32 i32)
      local.get 0
      local.get 1
      i32.add
      local.set 2
      block ;; label = @1
        block ;; label = @2
          local.get 0
          i32.load offset=4
          local.tee 3
          i32.const 1
          i32.and
          br_if 0 (;@2;)
          local.get 3
          i32.const 3
          i32.and
          i32.eqz
          br_if 1 (;@1;)
          local.get 0
          i32.load
          local.tee 3
          local.get 1
          i32.add
          local.set 1
          block ;; label = @3
            block ;; label = @4
              local.get 0
              local.get 3
              i32.sub
              local.tee 0
              i32.const 0
              i32.load offset=1053120
              i32.eq
              br_if 0 (;@4;)
              block ;; label = @5
                local.get 3
                i32.const 255
                i32.gt_u
                br_if 0 (;@5;)
                local.get 0
                i32.load offset=8
                local.tee 4
                local.get 3
                i32.const 3
                i32.shr_u
                local.tee 5
                i32.const 3
                i32.shl
                i32.const 1053140
                i32.add
                local.tee 6
                i32.eq
                drop
                local.get 0
                i32.load offset=12
                local.tee 3
                local.get 4
                i32.ne
                br_if 2 (;@3;)
                i32.const 0
                i32.const 0
                i32.load offset=1053100
                i32.const -2
                local.get 5
                i32.rotl
                i32.and
                i32.store offset=1053100
                br 3 (;@2;)
              end
              local.get 0
              i32.load offset=24
              local.set 7
              block ;; label = @5
                block ;; label = @6
                  local.get 0
                  i32.load offset=12
                  local.tee 6
                  local.get 0
                  i32.eq
                  br_if 0 (;@6;)
                  local.get 0
                  i32.load offset=8
                  local.tee 3
                  i32.const 0
                  i32.load offset=1053116
                  i32.lt_u
                  drop
                  local.get 6
                  local.get 3
                  i32.store offset=8
                  local.get 3
                  local.get 6
                  i32.store offset=12
                  br 1 (;@5;)
                end
                block ;; label = @6
                  local.get 0
                  i32.const 20
                  i32.add
                  local.tee 3
                  i32.load
                  local.tee 4
                  br_if 0 (;@6;)
                  local.get 0
                  i32.const 16
                  i32.add
                  local.tee 3
                  i32.load
                  local.tee 4
                  br_if 0 (;@6;)
                  i32.const 0
                  local.set 6
                  br 1 (;@5;)
                end
                loop ;; label = @6
                  local.get 3
                  local.set 5
                  local.get 4
                  local.tee 6
                  i32.const 20
                  i32.add
                  local.tee 3
                  i32.load
                  local.tee 4
                  br_if 0 (;@6;)
                  local.get 6
                  i32.const 16
                  i32.add
                  local.set 3
                  local.get 6
                  i32.load offset=16
                  local.tee 4
                  br_if 0 (;@6;)
                end
                local.get 5
                i32.const 0
                i32.store
              end
              local.get 7
              i32.eqz
              br_if 2 (;@2;)
              block ;; label = @5
                block ;; label = @6
                  local.get 0
                  local.get 0
                  i32.load offset=28
                  local.tee 4
                  i32.const 2
                  i32.shl
                  i32.const 1053404
                  i32.add
                  local.tee 3
                  i32.load
                  i32.ne
                  br_if 0 (;@6;)
                  local.get 3
                  local.get 6
                  i32.store
                  local.get 6
                  br_if 1 (;@5;)
                  i32.const 0
                  i32.const 0
                  i32.load offset=1053104
                  i32.const -2
                  local.get 4
                  i32.rotl
                  i32.and
                  i32.store offset=1053104
                  br 4 (;@2;)
                end
                local.get 7
                i32.const 16
                i32.const 20
                local.get 7
                i32.load offset=16
                local.get 0
                i32.eq
                select
                i32.add
                local.get 6
                i32.store
                local.get 6
                i32.eqz
                br_if 3 (;@2;)
              end
              local.get 6
              local.get 7
              i32.store offset=24
              block ;; label = @5
                local.get 0
                i32.load offset=16
                local.tee 3
                i32.eqz
                br_if 0 (;@5;)
                local.get 6
                local.get 3
                i32.store offset=16
                local.get 3
                local.get 6
                i32.store offset=24
              end
              local.get 0
              i32.load offset=20
              local.tee 3
              i32.eqz
              br_if 2 (;@2;)
              local.get 6
              i32.const 20
              i32.add
              local.get 3
              i32.store
              local.get 3
              local.get 6
              i32.store offset=24
              br 2 (;@2;)
            end
            local.get 2
            i32.load offset=4
            local.tee 3
            i32.const 3
            i32.and
            i32.const 3
            i32.ne
            br_if 1 (;@2;)
            local.get 2
            local.get 3
            i32.const -2
            i32.and
            i32.store offset=4
            i32.const 0
            local.get 1
            i32.store offset=1053108
            local.get 2
            local.get 1
            i32.store
            local.get 0
            local.get 1
            i32.const 1
            i32.or
            i32.store offset=4
            return
          end
          local.get 3
          local.get 6
          i32.eq
          drop
          local.get 3
          local.get 4
          i32.store offset=8
          local.get 4
          local.get 3
          i32.store offset=12
        end
        block ;; label = @2
          block ;; label = @3
            local.get 2
            i32.load offset=4
            local.tee 3
            i32.const 2
            i32.and
            br_if 0 (;@3;)
            block ;; label = @4
              local.get 2
              i32.const 0
              i32.load offset=1053124
              i32.ne
              br_if 0 (;@4;)
              i32.const 0
              local.get 0
              i32.store offset=1053124
              i32.const 0
              i32.const 0
              i32.load offset=1053112
              local.get 1
              i32.add
              local.tee 1
              i32.store offset=1053112
              local.get 0
              local.get 1
              i32.const 1
              i32.or
              i32.store offset=4
              local.get 0
              i32.const 0
              i32.load offset=1053120
              i32.ne
              br_if 3 (;@1;)
              i32.const 0
              i32.const 0
              i32.store offset=1053108
              i32.const 0
              i32.const 0
              i32.store offset=1053120
              return
            end
            block ;; label = @4
              local.get 2
              i32.const 0
              i32.load offset=1053120
              i32.ne
              br_if 0 (;@4;)
              i32.const 0
              local.get 0
              i32.store offset=1053120
              i32.const 0
              i32.const 0
              i32.load offset=1053108
              local.get 1
              i32.add
              local.tee 1
              i32.store offset=1053108
              local.get 0
              local.get 1
              i32.const 1
              i32.or
              i32.store offset=4
              local.get 0
              local.get 1
              i32.add
              local.get 1
              i32.store
              return
            end
            local.get 3
            i32.const -8
            i32.and
            local.get 1
            i32.add
            local.set 1
            block ;; label = @4
              block ;; label = @5
                local.get 3
                i32.const 255
                i32.gt_u
                br_if 0 (;@5;)
                local.get 2
                i32.load offset=8
                local.tee 4
                local.get 3
                i32.const 3
                i32.shr_u
                local.tee 5
                i32.const 3
                i32.shl
                i32.const 1053140
                i32.add
                local.tee 6
                i32.eq
                drop
                block ;; label = @6
                  local.get 2
                  i32.load offset=12
                  local.tee 3
                  local.get 4
                  i32.ne
                  br_if 0 (;@6;)
                  i32.const 0
                  i32.const 0
                  i32.load offset=1053100
                  i32.const -2
                  local.get 5
                  i32.rotl
                  i32.and
                  i32.store offset=1053100
                  br 2 (;@4;)
                end
                local.get 3
                local.get 6
                i32.eq
                drop
                local.get 3
                local.get 4
                i32.store offset=8
                local.get 4
                local.get 3
                i32.store offset=12
                br 1 (;@4;)
              end
              local.get 2
              i32.load offset=24
              local.set 7
              block ;; label = @5
                block ;; label = @6
                  local.get 2
                  i32.load offset=12
                  local.tee 6
                  local.get 2
                  i32.eq
                  br_if 0 (;@6;)
                  local.get 2
                  i32.load offset=8
                  local.tee 3
                  i32.const 0
                  i32.load offset=1053116
                  i32.lt_u
                  drop
                  local.get 6
                  local.get 3
                  i32.store offset=8
                  local.get 3
                  local.get 6
                  i32.store offset=12
                  br 1 (;@5;)
                end
                block ;; label = @6
                  local.get 2
                  i32.const 20
                  i32.add
                  local.tee 4
                  i32.load
                  local.tee 3
                  br_if 0 (;@6;)
                  local.get 2
                  i32.const 16
                  i32.add
                  local.tee 4
                  i32.load
                  local.tee 3
                  br_if 0 (;@6;)
                  i32.const 0
                  local.set 6
                  br 1 (;@5;)
                end
                loop ;; label = @6
                  local.get 4
                  local.set 5
                  local.get 3
                  local.tee 6
                  i32.const 20
                  i32.add
                  local.tee 4
                  i32.load
                  local.tee 3
                  br_if 0 (;@6;)
                  local.get 6
                  i32.const 16
                  i32.add
                  local.set 4
                  local.get 6
                  i32.load offset=16
                  local.tee 3
                  br_if 0 (;@6;)
                end
                local.get 5
                i32.const 0
                i32.store
              end
              local.get 7
              i32.eqz
              br_if 0 (;@4;)
              block ;; label = @5
                block ;; label = @6
                  local.get 2
                  local.get 2
                  i32.load offset=28
                  local.tee 4
                  i32.const 2
                  i32.shl
                  i32.const 1053404
                  i32.add
                  local.tee 3
                  i32.load
                  i32.ne
                  br_if 0 (;@6;)
                  local.get 3
                  local.get 6
                  i32.store
                  local.get 6
                  br_if 1 (;@5;)
                  i32.const 0
                  i32.const 0
                  i32.load offset=1053104
                  i32.const -2
                  local.get 4
                  i32.rotl
                  i32.and
                  i32.store offset=1053104
                  br 2 (;@4;)
                end
                local.get 7
                i32.const 16
                i32.const 20
                local.get 7
                i32.load offset=16
                local.get 2
                i32.eq
                select
                i32.add
                local.get 6
                i32.store
                local.get 6
                i32.eqz
                br_if 1 (;@4;)
              end
              local.get 6
              local.get 7
              i32.store offset=24
              block ;; label = @5
                local.get 2
                i32.load offset=16
                local.tee 3
                i32.eqz
                br_if 0 (;@5;)
                local.get 6
                local.get 3
                i32.store offset=16
                local.get 3
                local.get 6
                i32.store offset=24
              end
              local.get 2
              i32.load offset=20
              local.tee 3
              i32.eqz
              br_if 0 (;@4;)
              local.get 6
              i32.const 20
              i32.add
              local.get 3
              i32.store
              local.get 3
              local.get 6
              i32.store offset=24
            end
            local.get 0
            local.get 1
            i32.add
            local.get 1
            i32.store
            local.get 0
            local.get 1
            i32.const 1
            i32.or
            i32.store offset=4
            local.get 0
            i32.const 0
            i32.load offset=1053120
            i32.ne
            br_if 1 (;@2;)
            i32.const 0
            local.get 1
            i32.store offset=1053108
            return
          end
          local.get 2
          local.get 3
          i32.const -2
          i32.and
          i32.store offset=4
          local.get 0
          local.get 1
          i32.add
          local.get 1
          i32.store
          local.get 0
          local.get 1
          i32.const 1
          i32.or
          i32.store offset=4
        end
        block ;; label = @2
          local.get 1
          i32.const 255
          i32.gt_u
          br_if 0 (;@2;)
          local.get 1
          i32.const -8
          i32.and
          i32.const 1053140
          i32.add
          local.set 3
          block ;; label = @3
            block ;; label = @4
              i32.const 0
              i32.load offset=1053100
              local.tee 4
              i32.const 1
              local.get 1
              i32.const 3
              i32.shr_u
              i32.shl
              local.tee 1
              i32.and
              br_if 0 (;@4;)
              i32.const 0
              local.get 4
              local.get 1
              i32.or
              i32.store offset=1053100
              local.get 3
              local.set 1
              br 1 (;@3;)
            end
            local.get 3
            i32.load offset=8
            local.set 1
          end
          local.get 1
          local.get 0
          i32.store offset=12
          local.get 3
          local.get 0
          i32.store offset=8
          local.get 0
          local.get 3
          i32.store offset=12
          local.get 0
          local.get 1
          i32.store offset=8
          return
        end
        i32.const 31
        local.set 3
        block ;; label = @2
          local.get 1
          i32.const 16777215
          i32.gt_u
          br_if 0 (;@2;)
          local.get 1
          i32.const 8
          i32.shr_u
          local.tee 3
          local.get 3
          i32.const 1048320
          i32.add
          i32.const 16
          i32.shr_u
          i32.const 8
          i32.and
          local.tee 3
          i32.shl
          local.tee 4
          local.get 4
          i32.const 520192
          i32.add
          i32.const 16
          i32.shr_u
          i32.const 4
          i32.and
          local.tee 4
          i32.shl
          local.tee 6
          local.get 6
          i32.const 245760
          i32.add
          i32.const 16
          i32.shr_u
          i32.const 2
          i32.and
          local.tee 6
          i32.shl
          i32.const 15
          i32.shr_u
          local.get 3
          local.get 4
          i32.or
          local.get 6
          i32.or
          i32.sub
          local.tee 3
          i32.const 1
          i32.shl
          local.get 1
          local.get 3
          i32.const 21
          i32.add
          i32.shr_u
          i32.const 1
          i32.and
          i32.or
          i32.const 28
          i32.add
          local.set 3
        end
        local.get 0
        local.get 3
        i32.store offset=28
        local.get 0
        i64.const 0
        i64.store offset=16 align=4
        local.get 3
        i32.const 2
        i32.shl
        i32.const 1053404
        i32.add
        local.set 4
        block ;; label = @2
          i32.const 0
          i32.load offset=1053104
          local.tee 6
          i32.const 1
          local.get 3
          i32.shl
          local.tee 2
          i32.and
          br_if 0 (;@2;)
          local.get 4
          local.get 0
          i32.store
          i32.const 0
          local.get 6
          local.get 2
          i32.or
          i32.store offset=1053104
          local.get 0
          local.get 4
          i32.store offset=24
          local.get 0
          local.get 0
          i32.store offset=8
          local.get 0
          local.get 0
          i32.store offset=12
          return
        end
        local.get 1
        i32.const 0
        i32.const 25
        local.get 3
        i32.const 1
        i32.shr_u
        i32.sub
        local.get 3
        i32.const 31
        i32.eq
        select
        i32.shl
        local.set 3
        local.get 4
        i32.load
        local.set 6
        block ;; label = @2
          loop ;; label = @3
            local.get 6
            local.tee 4
            i32.load offset=4
            i32.const -8
            i32.and
            local.get 1
            i32.eq
            br_if 1 (;@2;)
            local.get 3
            i32.const 29
            i32.shr_u
            local.set 6
            local.get 3
            i32.const 1
            i32.shl
            local.set 3
            local.get 4
            local.get 6
            i32.const 4
            i32.and
            i32.add
            i32.const 16
            i32.add
            local.tee 2
            i32.load
            local.tee 6
            br_if 0 (;@3;)
          end
          local.get 2
          local.get 0
          i32.store
          local.get 0
          local.get 4
          i32.store offset=24
          local.get 0
          local.get 0
          i32.store offset=12
          local.get 0
          local.get 0
          i32.store offset=8
          return
        end
        local.get 4
        i32.load offset=8
        local.tee 1
        local.get 0
        i32.store offset=12
        local.get 4
        local.get 0
        i32.store offset=8
        local.get 0
        i32.const 0
        i32.store offset=24
        local.get 0
        local.get 4
        i32.store offset=12
        local.get 0
        local.get 1
        i32.store offset=8
      end
    )
    (func $internal_memalign (;181;) (type 5) (param i32 i32) (result i32)
      (local i32 i32 i32 i32 i32)
      block ;; label = @1
        block ;; label = @2
          local.get 0
          i32.const 16
          local.get 0
          i32.const 16
          i32.gt_u
          select
          local.tee 2
          local.get 2
          i32.const -1
          i32.add
          i32.and
          br_if 0 (;@2;)
          local.get 2
          local.set 0
          br 1 (;@1;)
        end
        i32.const 32
        local.set 3
        loop ;; label = @2
          local.get 3
          local.tee 0
          i32.const 1
          i32.shl
          local.set 3
          local.get 0
          local.get 2
          i32.lt_u
          br_if 0 (;@2;)
        end
      end
      block ;; label = @1
        i32.const -64
        local.get 0
        i32.sub
        local.get 1
        i32.gt_u
        br_if 0 (;@1;)
        i32.const 0
        i32.const 48
        i32.store offset=1053596
        i32.const 0
        return
      end
      block ;; label = @1
        local.get 0
        i32.const 16
        local.get 1
        i32.const 19
        i32.add
        i32.const -16
        i32.and
        local.get 1
        i32.const 11
        i32.lt_u
        select
        local.tee 1
        i32.add
        i32.const 12
        i32.add
        call $dlmalloc
        local.tee 3
        br_if 0 (;@1;)
        i32.const 0
        return
      end
      local.get 3
      i32.const -8
      i32.add
      local.set 2
      block ;; label = @1
        block ;; label = @2
          local.get 0
          i32.const -1
          i32.add
          local.get 3
          i32.and
          br_if 0 (;@2;)
          local.get 2
          local.set 0
          br 1 (;@1;)
        end
        local.get 3
        i32.const -4
        i32.add
        local.tee 4
        i32.load
        local.tee 5
        i32.const -8
        i32.and
        local.get 3
        local.get 0
        i32.add
        i32.const -1
        i32.add
        i32.const 0
        local.get 0
        i32.sub
        i32.and
        i32.const -8
        i32.add
        local.tee 3
        i32.const 0
        local.get 0
        local.get 3
        local.get 2
        i32.sub
        i32.const 15
        i32.gt_u
        select
        i32.add
        local.tee 0
        local.get 2
        i32.sub
        local.tee 3
        i32.sub
        local.set 6
        block ;; label = @2
          local.get 5
          i32.const 3
          i32.and
          br_if 0 (;@2;)
          local.get 0
          local.get 6
          i32.store offset=4
          local.get 0
          local.get 2
          i32.load
          local.get 3
          i32.add
          i32.store
          br 1 (;@1;)
        end
        local.get 0
        local.get 6
        local.get 0
        i32.load offset=4
        i32.const 1
        i32.and
        i32.or
        i32.const 2
        i32.or
        i32.store offset=4
        local.get 0
        local.get 6
        i32.add
        local.tee 6
        local.get 6
        i32.load offset=4
        i32.const 1
        i32.or
        i32.store offset=4
        local.get 4
        local.get 3
        local.get 4
        i32.load
        i32.const 1
        i32.and
        i32.or
        i32.const 2
        i32.or
        i32.store
        local.get 2
        local.get 3
        i32.add
        local.tee 6
        local.get 6
        i32.load offset=4
        i32.const 1
        i32.or
        i32.store offset=4
        local.get 2
        local.get 3
        call $dispose_chunk
      end
      block ;; label = @1
        local.get 0
        i32.load offset=4
        local.tee 3
        i32.const 3
        i32.and
        i32.eqz
        br_if 0 (;@1;)
        local.get 3
        i32.const -8
        i32.and
        local.tee 2
        local.get 1
        i32.const 16
        i32.add
        i32.le_u
        br_if 0 (;@1;)
        local.get 0
        local.get 1
        local.get 3
        i32.const 1
        i32.and
        i32.or
        i32.const 2
        i32.or
        i32.store offset=4
        local.get 0
        local.get 1
        i32.add
        local.tee 3
        local.get 2
        local.get 1
        i32.sub
        local.tee 1
        i32.const 3
        i32.or
        i32.store offset=4
        local.get 0
        local.get 2
        i32.add
        local.tee 2
        local.get 2
        i32.load offset=4
        i32.const 1
        i32.or
        i32.store offset=4
        local.get 3
        local.get 1
        call $dispose_chunk
      end
      local.get 0
      i32.const 8
      i32.add
    )
    (func $aligned_alloc (;182;) (type 5) (param i32 i32) (result i32)
      block ;; label = @1
        local.get 0
        i32.const 16
        i32.gt_u
        br_if 0 (;@1;)
        local.get 1
        call $dlmalloc
        return
      end
      local.get 0
      local.get 1
      call $internal_memalign
    )
    (func $__wasi_environ_get (;183;) (type 5) (param i32 i32) (result i32)
      local.get 0
      local.get 1
      call $__imported_wasi_snapshot_preview1_environ_get
      i32.const 65535
      i32.and
    )
    (func $__wasi_environ_sizes_get (;184;) (type 5) (param i32 i32) (result i32)
      local.get 0
      local.get 1
      call $__imported_wasi_snapshot_preview1_environ_sizes_get
      i32.const 65535
      i32.and
    )
    (func $__wasi_proc_exit (;185;) (type $.rodata) (param i32)
      local.get 0
      call $__imported_wasi_snapshot_preview1_proc_exit
      unreachable
    )
    (func $abort (;186;) (type 7)
      unreachable
      unreachable
    )
    (func $_Exit (;187;) (type $.rodata) (param i32)
      local.get 0
      call $__wasi_proc_exit
      unreachable
    )
    (func $__wasilibc_ensure_environ (;188;) (type 7)
      block ;; label = @1
        i32.const 0
        i32.load offset=1053604
        i32.const -1
        i32.ne
        br_if 0 (;@1;)
        call $__wasilibc_initialize_environ
      end
    )
    (func $__wasilibc_initialize_environ (;189;) (type 7)
      (local i32 i32 i32)
      global.get $__stack_pointer
      i32.const 16
      i32.sub
      local.tee 0
      global.set $__stack_pointer
      block ;; label = @1
        block ;; label = @2
          local.get 0
          i32.const 12
          i32.add
          local.get 0
          i32.const 8
          i32.add
          call $__wasi_environ_sizes_get
          br_if 0 (;@2;)
          block ;; label = @3
            local.get 0
            i32.load offset=12
            local.tee 1
            br_if 0 (;@3;)
            i32.const 1053600
            local.set 1
            br 2 (;@1;)
          end
          block ;; label = @3
            block ;; label = @4
              local.get 1
              i32.const 1
              i32.add
              local.tee 1
              i32.eqz
              br_if 0 (;@4;)
              local.get 0
              i32.load offset=8
              call $malloc
              local.tee 2
              i32.eqz
              br_if 0 (;@4;)
              local.get 1
              i32.const 4
              call $calloc
              local.tee 1
              br_if 1 (;@3;)
              local.get 2
              call $free
            end
            i32.const 70
            call $_Exit
            unreachable
          end
          local.get 1
          local.get 2
          call $__wasi_environ_get
          i32.eqz
          br_if 1 (;@1;)
          local.get 2
          call $free
          local.get 1
          call $free
        end
        i32.const 71
        call $_Exit
        unreachable
      end
      i32.const 0
      local.get 1
      i32.store offset=1053604
      local.get 0
      i32.const 16
      i32.add
      global.set $__stack_pointer
    )
    (func $__wasilibc_initialize_environ_eagerly (;190;) (type 7)
      call $__wasilibc_initialize_environ
    )
    (func $getcwd (;191;) (type 5) (param i32 i32) (result i32)
      (local i32)
      i32.const 0
      i32.load offset=1053020
      local.set 2
      block ;; label = @1
        block ;; label = @2
          local.get 0
          br_if 0 (;@2;)
          local.get 2
          call $strdup
          local.tee 0
          br_if 1 (;@1;)
          i32.const 0
          i32.const 48
          i32.store offset=1053596
          i32.const 0
          return
        end
        block ;; label = @2
          local.get 2
          call $strlen
          i32.const 1
          i32.add
          local.get 1
          i32.gt_u
          br_if 0 (;@2;)
          local.get 0
          local.get 2
          call $strcpy
          return
        end
        i32.const 0
        local.set 0
        i32.const 0
        i32.const 68
        i32.store offset=1053596
      end
      local.get 0
    )
    (func $sbrk (;192;) (type 9) (param i32) (result i32)
      block ;; label = @1
        local.get 0
        br_if 0 (;@1;)
        memory.size
        i32.const 16
        i32.shl
        return
      end
      block ;; label = @1
        local.get 0
        i32.const 65535
        i32.and
        br_if 0 (;@1;)
        local.get 0
        i32.const -1
        i32.le_s
        br_if 0 (;@1;)
        block ;; label = @2
          local.get 0
          i32.const 16
          i32.shr_u
          memory.grow
          local.tee 0
          i32.const -1
          i32.ne
          br_if 0 (;@2;)
          i32.const 0
          i32.const 48
          i32.store offset=1053596
          i32.const -1
          return
        end
        local.get 0
        i32.const 16
        i32.shl
        return
      end
      call $abort
      unreachable
    )
    (func $getenv (;193;) (type 9) (param i32) (result i32)
      (local i32 i32 i32 i32)
      call $__wasilibc_ensure_environ
      block ;; label = @1
        local.get 0
        i32.const 61
        call $__strchrnul
        local.tee 1
        local.get 0
        i32.ne
        br_if 0 (;@1;)
        i32.const 0
        return
      end
      i32.const 0
      local.set 2
      block ;; label = @1
        local.get 0
        local.get 1
        local.get 0
        i32.sub
        local.tee 3
        i32.add
        i32.load8_u
        br_if 0 (;@1;)
        i32.const 0
        i32.load offset=1053604
        local.tee 4
        i32.eqz
        br_if 0 (;@1;)
        local.get 4
        i32.load
        local.tee 1
        i32.eqz
        br_if 0 (;@1;)
        local.get 4
        i32.const 4
        i32.add
        local.set 4
        block ;; label = @2
          loop ;; label = @3
            block ;; label = @4
              local.get 0
              local.get 1
              local.get 3
              call $strncmp
              br_if 0 (;@4;)
              local.get 1
              local.get 3
              i32.add
              local.tee 1
              i32.load8_u
              i32.const 61
              i32.eq
              br_if 2 (;@2;)
            end
            local.get 4
            i32.load
            local.set 1
            local.get 4
            i32.const 4
            i32.add
            local.set 4
            local.get 1
            br_if 0 (;@3;)
            br 2 (;@1;)
          end
        end
        local.get 1
        i32.const 1
        i32.add
        local.set 2
      end
      local.get 2
    )
    (func $strdup (;194;) (type 9) (param i32) (result i32)
      (local i32 i32)
      block ;; label = @1
        local.get 0
        call $strlen
        i32.const 1
        i32.add
        local.tee 1
        call $malloc
        local.tee 2
        i32.eqz
        br_if 0 (;@1;)
        local.get 2
        local.get 0
        local.get 1
        call $memcpy
        drop
      end
      local.get 2
    )
    (func $memcpy (;195;) (type 4) (param i32 i32 i32) (result i32)
      (local i32 i32 i32 i32)
      block ;; label = @1
        block ;; label = @2
          block ;; label = @3
            local.get 2
            i32.const 32
            i32.gt_u
            br_if 0 (;@3;)
            local.get 1
            i32.const 3
            i32.and
            i32.eqz
            br_if 1 (;@2;)
            local.get 2
            i32.eqz
            br_if 1 (;@2;)
            local.get 0
            local.get 1
            i32.load8_u
            i32.store8
            local.get 2
            i32.const -1
            i32.add
            local.set 3
            local.get 0
            i32.const 1
            i32.add
            local.set 4
            local.get 1
            i32.const 1
            i32.add
            local.tee 5
            i32.const 3
            i32.and
            i32.eqz
            br_if 2 (;@1;)
            local.get 3
            i32.eqz
            br_if 2 (;@1;)
            local.get 0
            local.get 1
            i32.load8_u offset=1
            i32.store8 offset=1
            local.get 2
            i32.const -2
            i32.add
            local.set 3
            local.get 0
            i32.const 2
            i32.add
            local.set 4
            local.get 1
            i32.const 2
            i32.add
            local.tee 5
            i32.const 3
            i32.and
            i32.eqz
            br_if 2 (;@1;)
            local.get 3
            i32.eqz
            br_if 2 (;@1;)
            local.get 0
            local.get 1
            i32.load8_u offset=2
            i32.store8 offset=2
            local.get 2
            i32.const -3
            i32.add
            local.set 3
            local.get 0
            i32.const 3
            i32.add
            local.set 4
            local.get 1
            i32.const 3
            i32.add
            local.tee 5
            i32.const 3
            i32.and
            i32.eqz
            br_if 2 (;@1;)
            local.get 3
            i32.eqz
            br_if 2 (;@1;)
            local.get 0
            local.get 1
            i32.load8_u offset=3
            i32.store8 offset=3
            local.get 2
            i32.const -4
            i32.add
            local.set 3
            local.get 0
            i32.const 4
            i32.add
            local.set 4
            local.get 1
            i32.const 4
            i32.add
            local.set 5
            br 2 (;@1;)
          end
          local.get 0
          local.get 1
          local.get 2
          memory.copy
          local.get 0
          return
        end
        local.get 2
        local.set 3
        local.get 0
        local.set 4
        local.get 1
        local.set 5
      end
      block ;; label = @1
        block ;; label = @2
          local.get 4
          i32.const 3
          i32.and
          local.tee 2
          br_if 0 (;@2;)
          block ;; label = @3
            block ;; label = @4
              local.get 3
              i32.const 16
              i32.ge_u
              br_if 0 (;@4;)
              local.get 3
              local.set 2
              br 1 (;@3;)
            end
            block ;; label = @4
              local.get 3
              i32.const -16
              i32.add
              local.tee 2
              i32.const 16
              i32.and
              br_if 0 (;@4;)
              local.get 4
              local.get 5
              i64.load align=4
              i64.store align=4
              local.get 4
              local.get 5
              i64.load offset=8 align=4
              i64.store offset=8 align=4
              local.get 4
              i32.const 16
              i32.add
              local.set 4
              local.get 5
              i32.const 16
              i32.add
              local.set 5
              local.get 2
              local.set 3
            end
            local.get 2
            i32.const 16
            i32.lt_u
            br_if 0 (;@3;)
            local.get 3
            local.set 2
            loop ;; label = @4
              local.get 4
              local.get 5
              i64.load align=4
              i64.store align=4
              local.get 4
              local.get 5
              i64.load offset=8 align=4
              i64.store offset=8 align=4
              local.get 4
              local.get 5
              i64.load offset=16 align=4
              i64.store offset=16 align=4
              local.get 4
              local.get 5
              i64.load offset=24 align=4
              i64.store offset=24 align=4
              local.get 4
              i32.const 32
              i32.add
              local.set 4
              local.get 5
              i32.const 32
              i32.add
              local.set 5
              local.get 2
              i32.const -32
              i32.add
              local.tee 2
              i32.const 15
              i32.gt_u
              br_if 0 (;@4;)
            end
          end
          block ;; label = @3
            local.get 2
            i32.const 8
            i32.and
            i32.eqz
            br_if 0 (;@3;)
            local.get 4
            local.get 5
            i64.load align=4
            i64.store align=4
            local.get 5
            i32.const 8
            i32.add
            local.set 5
            local.get 4
            i32.const 8
            i32.add
            local.set 4
          end
          block ;; label = @3
            local.get 2
            i32.const 4
            i32.and
            i32.eqz
            br_if 0 (;@3;)
            local.get 4
            local.get 5
            i32.load
            i32.store
            local.get 5
            i32.const 4
            i32.add
            local.set 5
            local.get 4
            i32.const 4
            i32.add
            local.set 4
          end
          block ;; label = @3
            local.get 2
            i32.const 2
            i32.and
            i32.eqz
            br_if 0 (;@3;)
            local.get 4
            local.get 5
            i32.load16_u align=1
            i32.store16 align=1
            local.get 4
            i32.const 2
            i32.add
            local.set 4
            local.get 5
            i32.const 2
            i32.add
            local.set 5
          end
          local.get 2
          i32.const 1
          i32.and
          i32.eqz
          br_if 1 (;@1;)
          local.get 4
          local.get 5
          i32.load8_u
          i32.store8
          local.get 0
          return
        end
        block ;; label = @2
          block ;; label = @3
            block ;; label = @4
              block ;; label = @5
                block ;; label = @6
                  local.get 3
                  i32.const 32
                  i32.lt_u
                  br_if 0 (;@6;)
                  block ;; label = @7
                    block ;; label = @8
                      local.get 2
                      i32.const -1
                      i32.add
                      br_table 3 (;@5;) 0 (;@8;) 1 (;@7;) 7 (;@1;)
                    end
                    local.get 4
                    local.get 5
                    i32.load
                    i32.store16 align=1
                    local.get 4
                    local.get 5
                    i32.const 2
                    i32.add
                    i32.load align=2
                    i32.store offset=2
                    local.get 4
                    local.get 5
                    i32.const 6
                    i32.add
                    i64.load align=2
                    i64.store offset=6 align=4
                    local.get 4
                    i32.const 18
                    i32.add
                    local.set 2
                    local.get 5
                    i32.const 18
                    i32.add
                    local.set 1
                    i32.const 14
                    local.set 6
                    local.get 5
                    i32.const 14
                    i32.add
                    i32.load align=2
                    local.set 5
                    i32.const 14
                    local.set 3
                    br 3 (;@4;)
                  end
                  local.get 4
                  local.get 5
                  i32.load
                  i32.store8
                  local.get 4
                  local.get 5
                  i32.const 1
                  i32.add
                  i32.load align=1
                  i32.store offset=1
                  local.get 4
                  local.get 5
                  i32.const 5
                  i32.add
                  i64.load align=1
                  i64.store offset=5 align=4
                  local.get 4
                  i32.const 17
                  i32.add
                  local.set 2
                  local.get 5
                  i32.const 17
                  i32.add
                  local.set 1
                  i32.const 13
                  local.set 6
                  local.get 5
                  i32.const 13
                  i32.add
                  i32.load align=1
                  local.set 5
                  i32.const 15
                  local.set 3
                  br 2 (;@4;)
                end
                block ;; label = @6
                  block ;; label = @7
                    local.get 3
                    i32.const 16
                    i32.and
                    br_if 0 (;@7;)
                    local.get 4
                    local.set 2
                    local.get 5
                    local.set 1
                    br 1 (;@6;)
                  end
                  local.get 4
                  local.get 5
                  i32.load8_u
                  i32.store8
                  local.get 4
                  local.get 5
                  i32.load offset=1 align=1
                  i32.store offset=1 align=1
                  local.get 4
                  local.get 5
                  i64.load offset=5 align=1
                  i64.store offset=5 align=1
                  local.get 4
                  local.get 5
                  i32.load16_u offset=13 align=1
                  i32.store16 offset=13 align=1
                  local.get 4
                  local.get 5
                  i32.load8_u offset=15
                  i32.store8 offset=15
                  local.get 4
                  i32.const 16
                  i32.add
                  local.set 2
                  local.get 5
                  i32.const 16
                  i32.add
                  local.set 1
                end
                local.get 3
                i32.const 8
                i32.and
                br_if 2 (;@3;)
                br 3 (;@2;)
              end
              local.get 4
              local.get 5
              i32.load
              local.tee 2
              i32.store8
              local.get 4
              local.get 2
              i32.const 16
              i32.shr_u
              i32.store8 offset=2
              local.get 4
              local.get 2
              i32.const 8
              i32.shr_u
              i32.store8 offset=1
              local.get 4
              local.get 5
              i32.const 3
              i32.add
              i32.load align=1
              i32.store offset=3
              local.get 4
              local.get 5
              i32.const 7
              i32.add
              i64.load align=1
              i64.store offset=7 align=4
              local.get 4
              i32.const 19
              i32.add
              local.set 2
              local.get 5
              i32.const 19
              i32.add
              local.set 1
              i32.const 15
              local.set 6
              local.get 5
              i32.const 15
              i32.add
              i32.load align=1
              local.set 5
              i32.const 13
              local.set 3
            end
            local.get 4
            local.get 6
            i32.add
            local.get 5
            i32.store
          end
          local.get 2
          local.get 1
          i64.load align=1
          i64.store align=1
          local.get 2
          i32.const 8
          i32.add
          local.set 2
          local.get 1
          i32.const 8
          i32.add
          local.set 1
        end
        block ;; label = @2
          local.get 3
          i32.const 4
          i32.and
          i32.eqz
          br_if 0 (;@2;)
          local.get 2
          local.get 1
          i32.load align=1
          i32.store align=1
          local.get 2
          i32.const 4
          i32.add
          local.set 2
          local.get 1
          i32.const 4
          i32.add
          local.set 1
        end
        block ;; label = @2
          local.get 3
          i32.const 2
          i32.and
          i32.eqz
          br_if 0 (;@2;)
          local.get 2
          local.get 1
          i32.load16_u align=1
          i32.store16 align=1
          local.get 2
          i32.const 2
          i32.add
          local.set 2
          local.get 1
          i32.const 2
          i32.add
          local.set 1
        end
        local.get 3
        i32.const 1
        i32.and
        i32.eqz
        br_if 0 (;@1;)
        local.get 2
        local.get 1
        i32.load8_u
        i32.store8
      end
      local.get 0
    )
    (func $strlen (;196;) (type 9) (param i32) (result i32)
      (local i32 i32)
      local.get 0
      local.set 1
      block ;; label = @1
        block ;; label = @2
          local.get 0
          i32.const 3
          i32.and
          i32.eqz
          br_if 0 (;@2;)
          local.get 0
          local.set 1
          local.get 0
          i32.load8_u
          i32.eqz
          br_if 1 (;@1;)
          local.get 0
          i32.const 1
          i32.add
          local.tee 1
          i32.const 3
          i32.and
          i32.eqz
          br_if 0 (;@2;)
          local.get 1
          i32.load8_u
          i32.eqz
          br_if 1 (;@1;)
          local.get 0
          i32.const 2
          i32.add
          local.tee 1
          i32.const 3
          i32.and
          i32.eqz
          br_if 0 (;@2;)
          local.get 1
          i32.load8_u
          i32.eqz
          br_if 1 (;@1;)
          local.get 0
          i32.const 3
          i32.add
          local.tee 1
          i32.const 3
          i32.and
          i32.eqz
          br_if 0 (;@2;)
          local.get 1
          i32.load8_u
          i32.eqz
          br_if 1 (;@1;)
          local.get 0
          i32.const 4
          i32.add
          local.set 1
        end
        local.get 1
        i32.const -5
        i32.add
        local.set 1
        loop ;; label = @2
          local.get 1
          i32.const 5
          i32.add
          local.set 2
          local.get 1
          i32.const 4
          i32.add
          local.set 1
          local.get 2
          i32.load
          local.tee 2
          i32.const -1
          i32.xor
          local.get 2
          i32.const -16843009
          i32.add
          i32.and
          i32.const -2139062144
          i32.and
          i32.eqz
          br_if 0 (;@2;)
        end
        loop ;; label = @2
          local.get 1
          i32.const 1
          i32.add
          local.tee 1
          i32.load8_u
          br_if 0 (;@2;)
        end
      end
      local.get 1
      local.get 0
      i32.sub
    )
    (func $memset (;197;) (type 4) (param i32 i32 i32) (result i32)
      (local i32 i32 i32 i64)
      block ;; label = @1
        local.get 2
        i32.const 33
        i32.lt_u
        br_if 0 (;@1;)
        local.get 0
        local.get 1
        local.get 2
        memory.fill
        local.get 0
        return
      end
      block ;; label = @1
        local.get 2
        i32.eqz
        br_if 0 (;@1;)
        local.get 0
        local.get 1
        i32.store8
        local.get 2
        local.get 0
        i32.add
        local.tee 3
        i32.const -1
        i32.add
        local.get 1
        i32.store8
        local.get 2
        i32.const 3
        i32.lt_u
        br_if 0 (;@1;)
        local.get 0
        local.get 1
        i32.store8 offset=2
        local.get 0
        local.get 1
        i32.store8 offset=1
        local.get 3
        i32.const -3
        i32.add
        local.get 1
        i32.store8
        local.get 3
        i32.const -2
        i32.add
        local.get 1
        i32.store8
        local.get 2
        i32.const 7
        i32.lt_u
        br_if 0 (;@1;)
        local.get 0
        local.get 1
        i32.store8 offset=3
        local.get 3
        i32.const -4
        i32.add
        local.get 1
        i32.store8
        local.get 2
        i32.const 9
        i32.lt_u
        br_if 0 (;@1;)
        local.get 0
        i32.const 0
        local.get 0
        i32.sub
        i32.const 3
        i32.and
        local.tee 4
        i32.add
        local.tee 5
        local.get 1
        i32.const 255
        i32.and
        i32.const 16843009
        i32.mul
        local.tee 3
        i32.store
        local.get 5
        local.get 2
        local.get 4
        i32.sub
        i32.const -4
        i32.and
        local.tee 1
        i32.add
        local.tee 2
        i32.const -4
        i32.add
        local.get 3
        i32.store
        local.get 1
        i32.const 9
        i32.lt_u
        br_if 0 (;@1;)
        local.get 5
        local.get 3
        i32.store offset=8
        local.get 5
        local.get 3
        i32.store offset=4
        local.get 2
        i32.const -8
        i32.add
        local.get 3
        i32.store
        local.get 2
        i32.const -12
        i32.add
        local.get 3
        i32.store
        local.get 1
        i32.const 25
        i32.lt_u
        br_if 0 (;@1;)
        local.get 5
        local.get 3
        i32.store offset=24
        local.get 5
        local.get 3
        i32.store offset=20
        local.get 5
        local.get 3
        i32.store offset=16
        local.get 5
        local.get 3
        i32.store offset=12
        local.get 2
        i32.const -16
        i32.add
        local.get 3
        i32.store
        local.get 2
        i32.const -20
        i32.add
        local.get 3
        i32.store
        local.get 2
        i32.const -24
        i32.add
        local.get 3
        i32.store
        local.get 2
        i32.const -28
        i32.add
        local.get 3
        i32.store
        local.get 1
        local.get 5
        i32.const 4
        i32.and
        i32.const 24
        i32.or
        local.tee 2
        i32.sub
        local.tee 1
        i32.const 32
        i32.lt_u
        br_if 0 (;@1;)
        local.get 3
        i64.extend_i32_u
        i64.const 4294967297
        i64.mul
        local.set 6
        local.get 5
        local.get 2
        i32.add
        local.set 2
        loop ;; label = @2
          local.get 2
          local.get 6
          i64.store offset=24
          local.get 2
          local.get 6
          i64.store offset=16
          local.get 2
          local.get 6
          i64.store offset=8
          local.get 2
          local.get 6
          i64.store
          local.get 2
          i32.const 32
          i32.add
          local.set 2
          local.get 1
          i32.const -32
          i32.add
          local.tee 1
          i32.const 31
          i32.gt_u
          br_if 0 (;@2;)
        end
      end
      local.get 0
    )
    (func $strncmp (;198;) (type 4) (param i32 i32 i32) (result i32)
      (local i32 i32 i32)
      block ;; label = @1
        local.get 2
        br_if 0 (;@1;)
        i32.const 0
        return
      end
      i32.const 0
      local.set 3
      block ;; label = @1
        local.get 0
        i32.load8_u
        local.tee 4
        i32.eqz
        br_if 0 (;@1;)
        local.get 0
        i32.const 1
        i32.add
        local.set 0
        local.get 2
        i32.const -1
        i32.add
        local.set 2
        loop ;; label = @2
          block ;; label = @3
            local.get 1
            i32.load8_u
            local.tee 5
            br_if 0 (;@3;)
            local.get 4
            local.set 3
            br 2 (;@1;)
          end
          block ;; label = @3
            local.get 2
            br_if 0 (;@3;)
            local.get 4
            local.set 3
            br 2 (;@1;)
          end
          block ;; label = @3
            local.get 4
            i32.const 255
            i32.and
            local.get 5
            i32.eq
            br_if 0 (;@3;)
            local.get 4
            local.set 3
            br 2 (;@1;)
          end
          local.get 2
          i32.const -1
          i32.add
          local.set 2
          local.get 1
          i32.const 1
          i32.add
          local.set 1
          local.get 0
          i32.load8_u
          local.set 4
          local.get 0
          i32.const 1
          i32.add
          local.set 0
          local.get 4
          br_if 0 (;@2;)
        end
      end
      local.get 3
      i32.const 255
      i32.and
      local.get 1
      i32.load8_u
      i32.sub
    )
    (func $__stpcpy (;199;) (type 5) (param i32 i32) (result i32)
      (local i32 i32)
      block ;; label = @1
        block ;; label = @2
          block ;; label = @3
            local.get 1
            local.get 0
            i32.xor
            i32.const 3
            i32.and
            i32.eqz
            br_if 0 (;@3;)
            local.get 1
            i32.load8_u
            local.set 2
            br 1 (;@2;)
          end
          block ;; label = @3
            local.get 1
            i32.const 3
            i32.and
            i32.eqz
            br_if 0 (;@3;)
            local.get 0
            local.get 1
            i32.load8_u
            local.tee 2
            i32.store8
            block ;; label = @4
              local.get 2
              br_if 0 (;@4;)
              local.get 0
              return
            end
            local.get 0
            i32.const 1
            i32.add
            local.set 2
            block ;; label = @4
              local.get 1
              i32.const 1
              i32.add
              local.tee 3
              i32.const 3
              i32.and
              br_if 0 (;@4;)
              local.get 2
              local.set 0
              local.get 3
              local.set 1
              br 1 (;@3;)
            end
            local.get 2
            local.get 3
            i32.load8_u
            local.tee 3
            i32.store8
            local.get 3
            i32.eqz
            br_if 2 (;@1;)
            local.get 0
            i32.const 2
            i32.add
            local.set 2
            block ;; label = @4
              local.get 1
              i32.const 2
              i32.add
              local.tee 3
              i32.const 3
              i32.and
              br_if 0 (;@4;)
              local.get 2
              local.set 0
              local.get 3
              local.set 1
              br 1 (;@3;)
            end
            local.get 2
            local.get 3
            i32.load8_u
            local.tee 3
            i32.store8
            local.get 3
            i32.eqz
            br_if 2 (;@1;)
            local.get 0
            i32.const 3
            i32.add
            local.set 2
            block ;; label = @4
              local.get 1
              i32.const 3
              i32.add
              local.tee 3
              i32.const 3
              i32.and
              br_if 0 (;@4;)
              local.get 2
              local.set 0
              local.get 3
              local.set 1
              br 1 (;@3;)
            end
            local.get 2
            local.get 3
            i32.load8_u
            local.tee 3
            i32.store8
            local.get 3
            i32.eqz
            br_if 2 (;@1;)
            local.get 0
            i32.const 4
            i32.add
            local.set 0
            local.get 1
            i32.const 4
            i32.add
            local.set 1
          end
          local.get 1
          i32.load
          local.tee 2
          i32.const -1
          i32.xor
          local.get 2
          i32.const -16843009
          i32.add
          i32.and
          i32.const -2139062144
          i32.and
          br_if 0 (;@2;)
          loop ;; label = @3
            local.get 0
            local.get 2
            i32.store
            local.get 0
            i32.const 4
            i32.add
            local.set 0
            local.get 1
            i32.const 4
            i32.add
            local.tee 1
            i32.load
            local.tee 2
            i32.const -1
            i32.xor
            local.get 2
            i32.const -16843009
            i32.add
            i32.and
            i32.const -2139062144
            i32.and
            i32.eqz
            br_if 0 (;@3;)
          end
        end
        local.get 0
        local.get 2
        i32.store8
        block ;; label = @2
          local.get 2
          i32.const 255
          i32.and
          br_if 0 (;@2;)
          local.get 0
          return
        end
        local.get 1
        i32.const 1
        i32.add
        local.set 1
        local.get 0
        local.set 2
        loop ;; label = @2
          local.get 2
          local.get 1
          i32.load8_u
          local.tee 0
          i32.store8 offset=1
          local.get 1
          i32.const 1
          i32.add
          local.set 1
          local.get 2
          i32.const 1
          i32.add
          local.set 2
          local.get 0
          br_if 0 (;@2;)
        end
      end
      local.get 2
    )
    (func $strcpy (;200;) (type 5) (param i32 i32) (result i32)
      local.get 0
      local.get 1
      call $__stpcpy
      drop
      local.get 0
    )
    (func $__strchrnul (;201;) (type 5) (param i32 i32) (result i32)
      (local i32 i32 i32)
      block ;; label = @1
        block ;; label = @2
          block ;; label = @3
            block ;; label = @4
              local.get 1
              i32.const 255
              i32.and
              local.tee 2
              i32.eqz
              br_if 0 (;@4;)
              local.get 0
              i32.const 3
              i32.and
              i32.eqz
              br_if 2 (;@2;)
              block ;; label = @5
                local.get 0
                i32.load8_u
                local.tee 3
                br_if 0 (;@5;)
                local.get 0
                return
              end
              local.get 3
              local.get 1
              i32.const 255
              i32.and
              i32.ne
              br_if 1 (;@3;)
              local.get 0
              return
            end
            local.get 0
            local.get 0
            call $strlen
            i32.add
            return
          end
          block ;; label = @3
            local.get 0
            i32.const 1
            i32.add
            local.tee 3
            i32.const 3
            i32.and
            br_if 0 (;@3;)
            local.get 3
            local.set 0
            br 1 (;@2;)
          end
          local.get 3
          i32.load8_u
          local.tee 4
          i32.eqz
          br_if 1 (;@1;)
          local.get 4
          local.get 1
          i32.const 255
          i32.and
          i32.eq
          br_if 1 (;@1;)
          block ;; label = @3
            local.get 0
            i32.const 2
            i32.add
            local.tee 3
            i32.const 3
            i32.and
            br_if 0 (;@3;)
            local.get 3
            local.set 0
            br 1 (;@2;)
          end
          local.get 3
          i32.load8_u
          local.tee 4
          i32.eqz
          br_if 1 (;@1;)
          local.get 4
          local.get 1
          i32.const 255
          i32.and
          i32.eq
          br_if 1 (;@1;)
          block ;; label = @3
            local.get 0
            i32.const 3
            i32.add
            local.tee 3
            i32.const 3
            i32.and
            br_if 0 (;@3;)
            local.get 3
            local.set 0
            br 1 (;@2;)
          end
          local.get 3
          i32.load8_u
          local.tee 4
          i32.eqz
          br_if 1 (;@1;)
          local.get 4
          local.get 1
          i32.const 255
          i32.and
          i32.eq
          br_if 1 (;@1;)
          local.get 0
          i32.const 4
          i32.add
          local.set 0
        end
        block ;; label = @2
          local.get 0
          i32.load
          local.tee 3
          i32.const -1
          i32.xor
          local.get 3
          i32.const -16843009
          i32.add
          i32.and
          i32.const -2139062144
          i32.and
          br_if 0 (;@2;)
          local.get 2
          i32.const 16843009
          i32.mul
          local.set 2
          loop ;; label = @3
            local.get 3
            local.get 2
            i32.xor
            local.tee 3
            i32.const -1
            i32.xor
            local.get 3
            i32.const -16843009
            i32.add
            i32.and
            i32.const -2139062144
            i32.and
            br_if 1 (;@2;)
            local.get 0
            i32.const 4
            i32.add
            local.tee 0
            i32.load
            local.tee 3
            i32.const -1
            i32.xor
            local.get 3
            i32.const -16843009
            i32.add
            i32.and
            i32.const -2139062144
            i32.and
            i32.eqz
            br_if 0 (;@3;)
          end
        end
        local.get 0
        i32.const -1
        i32.add
        local.set 3
        loop ;; label = @2
          local.get 3
          i32.const 1
          i32.add
          local.tee 3
          i32.load8_u
          local.tee 0
          i32.eqz
          br_if 1 (;@1;)
          local.get 0
          local.get 1
          i32.const 255
          i32.and
          i32.ne
          br_if 0 (;@2;)
        end
      end
      local.get 3
    )
    (func $_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h0055595d4a41ccbeE (;202;) (type 5) (param i32 i32) (result i32)
      (local i32 i32)
      global.get $__stack_pointer
      i32.const 16
      i32.sub
      local.tee 2
      global.set $__stack_pointer
      local.get 0
      i32.load
      local.tee 0
      i32.const 8
      i32.add
      i32.load
      local.set 3
      local.get 0
      i32.const 4
      i32.add
      i32.load
      local.set 0
      local.get 2
      local.get 1
      call $_ZN4core3fmt9Formatter10debug_list17h229e3aca1c1cdebaE
      block ;; label = @1
        local.get 3
        i32.eqz
        br_if 0 (;@1;)
        loop ;; label = @2
          local.get 2
          local.get 0
          i32.store offset=12
          local.get 2
          local.get 2
          i32.const 12
          i32.add
          i32.const 1051620
          call $_ZN4core3fmt8builders8DebugSet5entry17h507c2789846452c1E
          drop
          local.get 0
          i32.const 1
          i32.add
          local.set 0
          local.get 3
          i32.const -1
          i32.add
          local.tee 3
          br_if 0 (;@2;)
        end
      end
      local.get 2
      call $_ZN4core3fmt8builders9DebugList6finish17h1bd9f3564a0d5f70E
      local.set 0
      local.get 2
      i32.const 16
      i32.add
      global.set $__stack_pointer
      local.get 0
    )
    (func $_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h006e97bbc13f2ee8E (;203;) (type 5) (param i32 i32) (result i32)
      local.get 0
      i32.load
      local.get 1
      call $_ZN64_$LT$core..str..error..Utf8Error$u20$as$u20$core..fmt..Debug$GT$3fmt17h62c812984eae65c6E
    )
    (func $_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h89f821ce0b91942fE (;204;) (type 5) (param i32 i32) (result i32)
      local.get 0
      i32.load
      local.set 0
      block ;; label = @1
        local.get 1
        call $_ZN4core3fmt9Formatter15debug_lower_hex17h87337c0810a503c8E
        br_if 0 (;@1;)
        block ;; label = @2
          local.get 1
          call $_ZN4core3fmt9Formatter15debug_upper_hex17h87a99dafeab8d76eE
          br_if 0 (;@2;)
          local.get 0
          local.get 1
          call $_ZN4core3fmt3num3imp51_$LT$impl$u20$core..fmt..Display$u20$for$u20$u8$GT$3fmt17hbc9a71d37153ccf8E
          return
        end
        local.get 0
        local.get 1
        call $_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$i8$GT$3fmt17h42265dc17b52598cE
        return
      end
      local.get 0
      local.get 1
      call $_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$i8$GT$3fmt17h395face85a74c6e8E
    )
    (func $_ZN4core3ptr27drop_in_place$LT$$RF$u8$GT$17h38ec4773e683853eE (;205;) (type $.rodata) (param i32))
    (func $_ZN5alloc7raw_vec11finish_grow17h3ff4e8c218661c09E (;206;) (type 8) (param i32 i32 i32 i32)
      block ;; label = @1
        block ;; label = @2
          local.get 2
          i32.eqz
          br_if 0 (;@2;)
          block ;; label = @3
            block ;; label = @4
              block ;; label = @5
                block ;; label = @6
                  block ;; label = @7
                    block ;; label = @8
                      local.get 1
                      i32.const 0
                      i32.lt_s
                      br_if 0 (;@8;)
                      local.get 3
                      i32.load offset=8
                      br_if 1 (;@7;)
                      local.get 1
                      br_if 2 (;@6;)
                      i32.const 1
                      local.set 2
                      br 4 (;@4;)
                    end
                    local.get 0
                    i32.const 8
                    i32.add
                    i32.const 0
                    i32.store
                    br 6 (;@1;)
                  end
                  block ;; label = @7
                    local.get 3
                    i32.load offset=4
                    local.tee 2
                    br_if 0 (;@7;)
                    block ;; label = @8
                      local.get 1
                      br_if 0 (;@8;)
                      i32.const 1
                      local.set 2
                      br 4 (;@4;)
                    end
                    local.get 1
                    i32.const 1
                    call $__rust_alloc
                    local.set 2
                    br 2 (;@5;)
                  end
                  local.get 3
                  i32.load
                  local.get 2
                  i32.const 1
                  local.get 1
                  call $__rust_realloc
                  local.set 2
                  br 1 (;@5;)
                end
                local.get 1
                i32.const 1
                call $__rust_alloc
                local.set 2
              end
              local.get 2
              i32.eqz
              br_if 1 (;@3;)
            end
            local.get 0
            local.get 2
            i32.store offset=4
            local.get 0
            i32.const 8
            i32.add
            local.get 1
            i32.store
            local.get 0
            i32.const 0
            i32.store
            return
          end
          local.get 0
          local.get 1
          i32.store offset=4
          local.get 0
          i32.const 8
          i32.add
          i32.const 1
          i32.store
          local.get 0
          i32.const 1
          i32.store
          return
        end
        local.get 0
        local.get 1
        i32.store offset=4
        local.get 0
        i32.const 8
        i32.add
        i32.const 0
        i32.store
      end
      local.get 0
      i32.const 1
      i32.store
    )
    (func $_ZN5alloc5alloc18handle_alloc_error17h3a7121d6b22d4137E (;207;) (type 3) (param i32 i32)
      local.get 0
      local.get 1
      call $_ZN5alloc5alloc18handle_alloc_error8rt_error17h2a8cbb510e0ae085E
      unreachable
    )
    (func $_ZN5alloc7raw_vec17capacity_overflow17ha0bfce3c627a68c1E (;208;) (type 7)
      (local i32)
      global.get $__stack_pointer
      i32.const 32
      i32.sub
      local.tee 0
      global.set $__stack_pointer
      local.get 0
      i32.const 20
      i32.add
      i32.const 1
      i32.store
      local.get 0
      i32.const 28
      i32.add
      i32.const 0
      i32.store
      local.get 0
      i32.const 1051684
      i32.store offset=16
      local.get 0
      i32.const 1051636
      i32.store offset=24
      local.get 0
      i32.const 0
      i32.store offset=8
      local.get 0
      i32.const 8
      i32.add
      i32.const 1051692
      call $_ZN4core9panicking9panic_fmt17h86214d64a55c1d57E
      unreachable
    )
    (func $_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17h0c8b1ae3103facb7E (;209;) (type 3) (param i32 i32)
      (local i32 i32 i32)
      global.get $__stack_pointer
      i32.const 32
      i32.sub
      local.tee 2
      global.set $__stack_pointer
      block ;; label = @1
        block ;; label = @2
          local.get 1
          i32.const 1
          i32.add
          local.tee 1
          i32.eqz
          br_if 0 (;@2;)
          local.get 0
          i32.load
          local.tee 3
          i32.const 1
          i32.shl
          local.tee 4
          local.get 1
          local.get 4
          local.get 1
          i32.gt_u
          select
          local.tee 1
          i32.const 8
          local.get 1
          i32.const 8
          i32.gt_u
          select
          local.tee 1
          i32.const -1
          i32.xor
          i32.const 31
          i32.shr_u
          local.set 4
          block ;; label = @3
            block ;; label = @4
              local.get 3
              i32.eqz
              br_if 0 (;@4;)
              local.get 2
              i32.const 1
              i32.store offset=24
              local.get 2
              local.get 3
              i32.store offset=20
              local.get 2
              local.get 0
              i32.const 4
              i32.add
              i32.load
              i32.store offset=16
              br 1 (;@3;)
            end
            local.get 2
            i32.const 0
            i32.store offset=24
          end
          local.get 2
          local.get 1
          local.get 4
          local.get 2
          i32.const 16
          i32.add
          call $_ZN5alloc7raw_vec11finish_grow17h3ff4e8c218661c09E
          local.get 2
          i32.load offset=4
          local.set 3
          block ;; label = @3
            local.get 2
            i32.load
            br_if 0 (;@3;)
            local.get 0
            local.get 1
            i32.store
            local.get 0
            local.get 3
            i32.store offset=4
            br 2 (;@1;)
          end
          local.get 2
          i32.const 8
          i32.add
          i32.load
          local.tee 0
          i32.const -2147483647
          i32.eq
          br_if 1 (;@1;)
          local.get 0
          i32.eqz
          br_if 0 (;@2;)
          local.get 3
          local.get 0
          call $_ZN5alloc5alloc18handle_alloc_error17h3a7121d6b22d4137E
          unreachable
        end
        call $_ZN5alloc7raw_vec17capacity_overflow17ha0bfce3c627a68c1E
        unreachable
      end
      local.get 2
      i32.const 32
      i32.add
      global.set $__stack_pointer
    )
    (func $_ZN5alloc5alloc18handle_alloc_error8rt_error17h2a8cbb510e0ae085E (;210;) (type 3) (param i32 i32)
      local.get 0
      local.get 1
      call $__rust_alloc_error_handler
      unreachable
    )
    (func $_ZN72_$LT$$RF$str$u20$as$u20$alloc..ffi..c_str..CString..new..SpecNewImpl$GT$13spec_new_impl17hf84b8103401e97c9E (;211;) (type 2) (param i32 i32 i32)
      (local i32 i32 i32 i64)
      global.get $__stack_pointer
      i32.const 48
      i32.sub
      local.tee 3
      global.set $__stack_pointer
      block ;; label = @1
        block ;; label = @2
          block ;; label = @3
            block ;; label = @4
              block ;; label = @5
                local.get 2
                i32.const 1
                i32.add
                local.tee 4
                i32.eqz
                br_if 0 (;@5;)
                local.get 4
                i32.const -1
                i32.le_s
                br_if 1 (;@4;)
                local.get 4
                i32.const 1
                call $__rust_alloc
                local.tee 5
                i32.eqz
                br_if 2 (;@3;)
                local.get 3
                local.get 5
                i32.store offset=20
                local.get 3
                local.get 4
                i32.store offset=16
                local.get 5
                local.get 1
                local.get 2
                call $memcpy
                drop
                local.get 3
                local.get 2
                i32.store offset=24
                block ;; label = @6
                  local.get 2
                  i32.const 8
                  i32.lt_u
                  br_if 0 (;@6;)
                  local.get 3
                  i32.const 8
                  i32.add
                  i32.const 0
                  local.get 1
                  local.get 2
                  call $_ZN4core5slice6memchr14memchr_aligned17h3f32d5203edf09dfE
                  local.get 3
                  i32.load offset=12
                  local.set 5
                  local.get 3
                  i32.load offset=8
                  local.set 4
                  br 5 (;@1;)
                end
                block ;; label = @6
                  local.get 2
                  br_if 0 (;@6;)
                  i32.const 0
                  local.set 5
                  i32.const 0
                  local.set 4
                  br 5 (;@1;)
                end
                block ;; label = @6
                  local.get 1
                  i32.load8_u
                  br_if 0 (;@6;)
                  i32.const 1
                  local.set 4
                  i32.const 0
                  local.set 5
                  br 5 (;@1;)
                end
                i32.const 1
                local.set 4
                local.get 2
                i32.const 1
                i32.eq
                br_if 3 (;@2;)
                block ;; label = @6
                  local.get 1
                  i32.load8_u offset=1
                  br_if 0 (;@6;)
                  i32.const 1
                  local.set 5
                  br 5 (;@1;)
                end
                i32.const 2
                local.set 5
                local.get 2
                i32.const 2
                i32.eq
                br_if 3 (;@2;)
                local.get 1
                i32.load8_u offset=2
                i32.eqz
                br_if 4 (;@1;)
                i32.const 3
                local.set 5
                local.get 2
                i32.const 3
                i32.eq
                br_if 3 (;@2;)
                local.get 1
                i32.load8_u offset=3
                i32.eqz
                br_if 4 (;@1;)
                i32.const 4
                local.set 5
                local.get 2
                i32.const 4
                i32.eq
                br_if 3 (;@2;)
                local.get 1
                i32.load8_u offset=4
                i32.eqz
                br_if 4 (;@1;)
                i32.const 5
                local.set 5
                local.get 2
                i32.const 5
                i32.eq
                br_if 3 (;@2;)
                local.get 1
                i32.load8_u offset=5
                i32.eqz
                br_if 4 (;@1;)
                local.get 2
                i32.const 6
                i32.eq
                br_if 3 (;@2;)
                local.get 2
                i32.const 6
                local.get 1
                i32.load8_u offset=6
                local.tee 4
                select
                local.set 5
                local.get 4
                i32.eqz
                local.set 4
                br 4 (;@1;)
              end
              i32.const 1051708
              i32.const 43
              i32.const 1051784
              call $_ZN4core9panicking5panic17h72f0442034a99972E
              unreachable
            end
            call $_ZN5alloc7raw_vec17capacity_overflow17ha0bfce3c627a68c1E
            unreachable
          end
          local.get 4
          i32.const 1
          call $_ZN5alloc5alloc18handle_alloc_error17h3a7121d6b22d4137E
          unreachable
        end
        local.get 2
        local.set 5
        i32.const 0
        local.set 4
      end
      block ;; label = @1
        block ;; label = @2
          local.get 4
          br_if 0 (;@2;)
          local.get 3
          i32.const 32
          i32.add
          i32.const 8
          i32.add
          local.get 3
          i32.const 16
          i32.add
          i32.const 8
          i32.add
          i32.load
          i32.store
          local.get 3
          local.get 3
          i64.load offset=16
          i64.store offset=32
          local.get 3
          local.get 3
          i32.const 32
          i32.add
          call $_ZN5alloc3ffi5c_str7CString19_from_vec_unchecked17hc87b1bd6c01108edE
          local.get 3
          i64.load
          local.set 6
          local.get 0
          i32.const 0
          i32.store offset=8
          local.get 0
          local.get 6
          i64.store align=4
          br 1 (;@1;)
        end
        local.get 0
        local.get 3
        i64.load offset=16
        i64.store offset=4 align=4
        local.get 0
        local.get 5
        i32.store
        local.get 0
        i32.const 12
        i32.add
        local.get 3
        i32.const 24
        i32.add
        i32.load
        i32.store
      end
      local.get 3
      i32.const 48
      i32.add
      global.set $__stack_pointer
    )
    (func $_ZN5alloc3ffi5c_str7CString19_from_vec_unchecked17hc87b1bd6c01108edE (;212;) (type 3) (param i32 i32)
      (local i32 i32 i32 i32)
      global.get $__stack_pointer
      i32.const 32
      i32.sub
      local.tee 2
      global.set $__stack_pointer
      block ;; label = @1
        block ;; label = @2
          block ;; label = @3
            block ;; label = @4
              block ;; label = @5
                local.get 1
                i32.load
                local.tee 3
                local.get 1
                i32.load offset=8
                local.tee 4
                i32.ne
                br_if 0 (;@5;)
                local.get 4
                i32.const 1
                i32.add
                local.tee 3
                i32.eqz
                br_if 2 (;@3;)
                local.get 3
                i32.const -1
                i32.xor
                i32.const 31
                i32.shr_u
                local.set 5
                block ;; label = @6
                  block ;; label = @7
                    local.get 4
                    i32.eqz
                    br_if 0 (;@7;)
                    local.get 2
                    i32.const 1
                    i32.store offset=24
                    local.get 2
                    local.get 4
                    i32.store offset=20
                    local.get 2
                    local.get 1
                    i32.const 4
                    i32.add
                    i32.load
                    i32.store offset=16
                    br 1 (;@6;)
                  end
                  local.get 2
                  i32.const 0
                  i32.store offset=24
                end
                local.get 2
                local.get 3
                local.get 5
                local.get 2
                i32.const 16
                i32.add
                call $_ZN5alloc7raw_vec11finish_grow17h3ff4e8c218661c09E
                local.get 2
                i32.load offset=4
                local.set 5
                local.get 2
                i32.load
                br_if 1 (;@4;)
                local.get 1
                local.get 3
                i32.store
                local.get 1
                local.get 5
                i32.store offset=4
              end
              local.get 4
              local.get 3
              i32.ne
              br_if 3 (;@1;)
              br 2 (;@2;)
            end
            local.get 2
            i32.const 8
            i32.add
            i32.load
            local.tee 3
            i32.const -2147483647
            i32.eq
            br_if 1 (;@2;)
            local.get 3
            i32.eqz
            br_if 0 (;@3;)
            local.get 5
            local.get 3
            call $_ZN5alloc5alloc18handle_alloc_error17h3a7121d6b22d4137E
            unreachable
          end
          call $_ZN5alloc7raw_vec17capacity_overflow17ha0bfce3c627a68c1E
          unreachable
        end
        local.get 1
        local.get 4
        call $_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17h0c8b1ae3103facb7E
        local.get 1
        i32.load
        local.set 3
        local.get 1
        i32.load offset=8
        local.set 4
      end
      local.get 1
      local.get 4
      i32.const 1
      i32.add
      local.tee 5
      i32.store offset=8
      local.get 1
      i32.load offset=4
      local.tee 1
      local.get 4
      i32.add
      i32.const 0
      i32.store8
      block ;; label = @1
        block ;; label = @2
          block ;; label = @3
            local.get 3
            local.get 5
            i32.gt_u
            br_if 0 (;@3;)
            local.get 1
            local.set 4
            br 1 (;@2;)
          end
          block ;; label = @3
            local.get 5
            br_if 0 (;@3;)
            i32.const 1
            local.set 4
            local.get 1
            local.get 3
            i32.const 1
            call $__rust_dealloc
            br 1 (;@2;)
          end
          local.get 1
          local.get 3
          i32.const 1
          local.get 5
          call $__rust_realloc
          local.tee 4
          i32.eqz
          br_if 1 (;@1;)
        end
        local.get 0
        local.get 5
        i32.store offset=4
        local.get 0
        local.get 4
        i32.store
        local.get 2
        i32.const 32
        i32.add
        global.set $__stack_pointer
        return
      end
      local.get 5
      i32.const 1
      call $_ZN5alloc5alloc18handle_alloc_error17h3a7121d6b22d4137E
      unreachable
    )
    (func $_ZN5alloc4sync32arcinner_layout_for_value_layout17hafde525a65d7dadfE (;213;) (type 2) (param i32 i32 i32)
      (local i32 i32)
      global.get $__stack_pointer
      i32.const 16
      i32.sub
      local.tee 3
      global.set $__stack_pointer
      block ;; label = @1
        local.get 2
        i32.const 7
        i32.add
        i32.const 0
        local.get 2
        i32.sub
        i32.and
        local.tee 4
        local.get 4
        i32.const -8
        i32.add
        i32.lt_u
        br_if 0 (;@1;)
        local.get 4
        local.get 1
        i32.add
        local.tee 1
        local.get 4
        i32.lt_u
        br_if 0 (;@1;)
        i32.const -2147483648
        local.get 2
        i32.const 4
        local.get 2
        i32.const 4
        i32.gt_u
        select
        local.tee 2
        i32.sub
        local.get 1
        i32.lt_u
        br_if 0 (;@1;)
        local.get 0
        local.get 2
        i32.store offset=4
        local.get 0
        local.get 2
        local.get 1
        i32.add
        i32.const -1
        i32.add
        i32.const 0
        local.get 2
        i32.sub
        i32.and
        i32.store
        local.get 3
        i32.const 16
        i32.add
        global.set $__stack_pointer
        return
      end
      i32.const 1051800
      i32.const 43
      local.get 3
      i32.const 8
      i32.add
      i32.const 1051844
      i32.const 1051888
      call $_ZN4core6result13unwrap_failed17h97c1c0aa7b263f08E
      unreachable
    )
    (func $_ZN65_$LT$alloc..string..FromUtf8Error$u20$as$u20$core..fmt..Debug$GT$3fmt17h67b0f9c60ec55d75E (;214;) (type 5) (param i32 i32) (result i32)
      (local i32)
      global.get $__stack_pointer
      i32.const 16
      i32.sub
      local.tee 2
      global.set $__stack_pointer
      local.get 2
      local.get 0
      i32.const 8
      i32.add
      i32.store offset=8
      local.get 2
      local.get 0
      i32.store offset=12
      local.get 1
      i32.const 1051948
      i32.const 13
      i32.const 1051920
      i32.const 5
      local.get 2
      i32.const 8
      i32.add
      i32.const 1051904
      i32.const 1051925
      i32.const 5
      local.get 2
      i32.const 12
      i32.add
      i32.const 1051932
      call $_ZN4core3fmt9Formatter26debug_struct_field2_finish17h19a38651216a3aa4E
      local.set 0
      local.get 2
      i32.const 16
      i32.add
      global.set $__stack_pointer
      local.get 0
    )
    (func $_ZN4core3ops8function6FnOnce9call_once17hc909775333f03a72E (;215;) (type 5) (param i32 i32) (result i32)
      local.get 0
      i32.load
      drop
      loop (result i32) ;; label = @1
        br 0 (;@1;)
      end
    )
    (func $_ZN4core3ptr102drop_in_place$LT$$RF$core..iter..adapters..copied..Copied$LT$core..slice..iter..Iter$LT$u8$GT$$GT$$GT$17hbcae9dac05562343E (;216;) (type $.rodata) (param i32))
    (func $_ZN4core9panicking9panic_fmt17h86214d64a55c1d57E (;217;) (type 3) (param i32 i32)
      (local i32)
      global.get $__stack_pointer
      i32.const 32
      i32.sub
      local.tee 2
      global.set $__stack_pointer
      local.get 2
      i32.const 1
      i32.store8 offset=24
      local.get 2
      local.get 1
      i32.store offset=20
      local.get 2
      local.get 0
      i32.store offset=16
      local.get 2
      i32.const 1052036
      i32.store offset=12
      local.get 2
      i32.const 1051964
      i32.store offset=8
      local.get 2
      i32.const 8
      i32.add
      call $rust_begin_unwind
      unreachable
    )
    (func $_ZN4core5slice5index26slice_start_index_len_fail17hc1badbc4c621eed6E (;218;) (type 2) (param i32 i32 i32)
      local.get 0
      local.get 1
      local.get 2
      call $_ZN4core5slice5index29slice_start_index_len_fail_rt17h0a9a4130a2ce7d93E
      unreachable
    )
    (func $_ZN4core3fmt9Formatter3pad17h0ebf4b187a504171E (;219;) (type 4) (param i32 i32 i32) (result i32)
      (local i32 i32 i32 i32 i32 i32 i32 i32)
      local.get 0
      i32.load offset=16
      local.set 3
      block ;; label = @1
        block ;; label = @2
          block ;; label = @3
            local.get 0
            i32.load offset=8
            local.tee 4
            i32.const 1
            i32.eq
            br_if 0 (;@3;)
            local.get 3
            i32.const 1
            i32.ne
            br_if 1 (;@2;)
          end
          block ;; label = @3
            local.get 3
            i32.const 1
            i32.ne
            br_if 0 (;@3;)
            local.get 1
            local.get 2
            i32.add
            local.set 5
            local.get 0
            i32.const 20
            i32.add
            i32.load
            i32.const 1
            i32.add
            local.set 6
            i32.const 0
            local.set 7
            local.get 1
            local.set 8
            block ;; label = @4
              loop ;; label = @5
                local.get 8
                local.set 3
                local.get 6
                i32.const -1
                i32.add
                local.tee 6
                i32.eqz
                br_if 1 (;@4;)
                local.get 3
                local.get 5
                i32.eq
                br_if 2 (;@3;)
                block ;; label = @6
                  block ;; label = @7
                    local.get 3
                    i32.load8_s
                    local.tee 9
                    i32.const -1
                    i32.le_s
                    br_if 0 (;@7;)
                    local.get 3
                    i32.const 1
                    i32.add
                    local.set 8
                    local.get 9
                    i32.const 255
                    i32.and
                    local.set 9
                    br 1 (;@6;)
                  end
                  local.get 3
                  i32.load8_u offset=1
                  i32.const 63
                  i32.and
                  local.set 8
                  local.get 9
                  i32.const 31
                  i32.and
                  local.set 10
                  block ;; label = @7
                    local.get 9
                    i32.const -33
                    i32.gt_u
                    br_if 0 (;@7;)
                    local.get 10
                    i32.const 6
                    i32.shl
                    local.get 8
                    i32.or
                    local.set 9
                    local.get 3
                    i32.const 2
                    i32.add
                    local.set 8
                    br 1 (;@6;)
                  end
                  local.get 8
                  i32.const 6
                  i32.shl
                  local.get 3
                  i32.load8_u offset=2
                  i32.const 63
                  i32.and
                  i32.or
                  local.set 8
                  block ;; label = @7
                    local.get 9
                    i32.const -16
                    i32.ge_u
                    br_if 0 (;@7;)
                    local.get 8
                    local.get 10
                    i32.const 12
                    i32.shl
                    i32.or
                    local.set 9
                    local.get 3
                    i32.const 3
                    i32.add
                    local.set 8
                    br 1 (;@6;)
                  end
                  local.get 8
                  i32.const 6
                  i32.shl
                  local.get 3
                  i32.load8_u offset=3
                  i32.const 63
                  i32.and
                  i32.or
                  local.get 10
                  i32.const 18
                  i32.shl
                  i32.const 1835008
                  i32.and
                  i32.or
                  local.tee 9
                  i32.const 1114112
                  i32.eq
                  br_if 3 (;@3;)
                  local.get 3
                  i32.const 4
                  i32.add
                  local.set 8
                end
                local.get 7
                local.get 3
                i32.sub
                local.get 8
                i32.add
                local.set 7
                local.get 9
                i32.const 1114112
                i32.ne
                br_if 0 (;@5;)
                br 2 (;@3;)
              end
            end
            local.get 3
            local.get 5
            i32.eq
            br_if 0 (;@3;)
            block ;; label = @4
              local.get 3
              i32.load8_s
              local.tee 8
              i32.const -1
              i32.gt_s
              br_if 0 (;@4;)
              local.get 8
              i32.const -32
              i32.lt_u
              br_if 0 (;@4;)
              local.get 8
              i32.const -16
              i32.lt_u
              br_if 0 (;@4;)
              local.get 3
              i32.load8_u offset=2
              i32.const 63
              i32.and
              i32.const 6
              i32.shl
              local.get 3
              i32.load8_u offset=1
              i32.const 63
              i32.and
              i32.const 12
              i32.shl
              i32.or
              local.get 3
              i32.load8_u offset=3
              i32.const 63
              i32.and
              i32.or
              local.get 8
              i32.const 255
              i32.and
              i32.const 18
              i32.shl
              i32.const 1835008
              i32.and
              i32.or
              i32.const 1114112
              i32.eq
              br_if 1 (;@3;)
            end
            block ;; label = @4
              block ;; label = @5
                local.get 7
                i32.eqz
                br_if 0 (;@5;)
                block ;; label = @6
                  local.get 7
                  local.get 2
                  i32.lt_u
                  br_if 0 (;@6;)
                  i32.const 0
                  local.set 3
                  local.get 7
                  local.get 2
                  i32.eq
                  br_if 1 (;@5;)
                  br 2 (;@4;)
                end
                i32.const 0
                local.set 3
                local.get 1
                local.get 7
                i32.add
                i32.load8_s
                i32.const -64
                i32.lt_s
                br_if 1 (;@4;)
              end
              local.get 1
              local.set 3
            end
            local.get 7
            local.get 2
            local.get 3
            select
            local.set 2
            local.get 3
            local.get 1
            local.get 3
            select
            local.set 1
          end
          block ;; label = @3
            local.get 4
            br_if 0 (;@3;)
            local.get 0
            i32.load
            local.get 1
            local.get 2
            local.get 0
            i32.load offset=4
            i32.load offset=12
            call_indirect (type 4)
            return
          end
          local.get 0
          i32.const 12
          i32.add
          i32.load
          local.set 7
          block ;; label = @3
            block ;; label = @4
              local.get 2
              i32.const 16
              i32.lt_u
              br_if 0 (;@4;)
              local.get 1
              local.get 2
              call $_ZN4core3str5count14do_count_chars17h4cdee80687050aefE
              local.set 8
              br 1 (;@3;)
            end
            block ;; label = @4
              local.get 2
              br_if 0 (;@4;)
              i32.const 0
              local.set 8
              br 1 (;@3;)
            end
            local.get 2
            i32.const 3
            i32.and
            local.set 9
            block ;; label = @4
              block ;; label = @5
                local.get 2
                i32.const -1
                i32.add
                i32.const 3
                i32.ge_u
                br_if 0 (;@5;)
                i32.const 0
                local.set 8
                local.get 1
                local.set 3
                br 1 (;@4;)
              end
              local.get 2
              i32.const -4
              i32.and
              local.set 6
              i32.const 0
              local.set 8
              local.get 1
              local.set 3
              loop ;; label = @5
                local.get 8
                local.get 3
                i32.load8_s
                i32.const -65
                i32.gt_s
                i32.add
                local.get 3
                i32.load8_s offset=1
                i32.const -65
                i32.gt_s
                i32.add
                local.get 3
                i32.load8_s offset=2
                i32.const -65
                i32.gt_s
                i32.add
                local.get 3
                i32.load8_s offset=3
                i32.const -65
                i32.gt_s
                i32.add
                local.set 8
                local.get 3
                i32.const 4
                i32.add
                local.set 3
                local.get 6
                i32.const -4
                i32.add
                local.tee 6
                br_if 0 (;@5;)
              end
            end
            local.get 9
            i32.eqz
            br_if 0 (;@3;)
            loop ;; label = @4
              local.get 8
              local.get 3
              i32.load8_s
              i32.const -65
              i32.gt_s
              i32.add
              local.set 8
              local.get 3
              i32.const 1
              i32.add
              local.set 3
              local.get 9
              i32.const -1
              i32.add
              local.tee 9
              br_if 0 (;@4;)
            end
          end
          block ;; label = @3
            local.get 7
            local.get 8
            i32.le_u
            br_if 0 (;@3;)
            local.get 7
            local.get 8
            i32.sub
            local.tee 8
            local.set 6
            block ;; label = @4
              block ;; label = @5
                block ;; label = @6
                  i32.const 0
                  local.get 0
                  i32.load8_u offset=32
                  local.tee 3
                  local.get 3
                  i32.const 3
                  i32.eq
                  select
                  i32.const 3
                  i32.and
                  local.tee 3
                  br_table 2 (;@4;) 0 (;@6;) 1 (;@5;) 2 (;@4;)
                end
                i32.const 0
                local.set 6
                local.get 8
                local.set 3
                br 1 (;@4;)
              end
              local.get 8
              i32.const 1
              i32.shr_u
              local.set 3
              local.get 8
              i32.const 1
              i32.add
              i32.const 1
              i32.shr_u
              local.set 6
            end
            local.get 3
            i32.const 1
            i32.add
            local.set 3
            local.get 0
            i32.const 4
            i32.add
            i32.load
            local.set 9
            local.get 0
            i32.load offset=28
            local.set 8
            local.get 0
            i32.load
            local.set 0
            block ;; label = @4
              loop ;; label = @5
                local.get 3
                i32.const -1
                i32.add
                local.tee 3
                i32.eqz
                br_if 1 (;@4;)
                local.get 0
                local.get 8
                local.get 9
                i32.load offset=16
                call_indirect (type 5)
                i32.eqz
                br_if 0 (;@5;)
              end
              i32.const 1
              return
            end
            i32.const 1
            local.set 3
            local.get 8
            i32.const 1114112
            i32.eq
            br_if 2 (;@1;)
            local.get 0
            local.get 1
            local.get 2
            local.get 9
            i32.load offset=12
            call_indirect (type 4)
            br_if 2 (;@1;)
            i32.const 0
            local.set 3
            loop ;; label = @4
              block ;; label = @5
                local.get 6
                local.get 3
                i32.ne
                br_if 0 (;@5;)
                local.get 6
                local.get 6
                i32.lt_u
                return
              end
              local.get 3
              i32.const 1
              i32.add
              local.set 3
              local.get 0
              local.get 8
              local.get 9
              i32.load offset=16
              call_indirect (type 5)
              i32.eqz
              br_if 0 (;@4;)
            end
            local.get 3
            i32.const -1
            i32.add
            local.get 6
            i32.lt_u
            return
          end
          local.get 0
          i32.load
          local.get 1
          local.get 2
          local.get 0
          i32.load offset=4
          i32.load offset=12
          call_indirect (type 4)
          return
        end
        local.get 0
        i32.load
        local.get 1
        local.get 2
        local.get 0
        i32.load offset=4
        i32.load offset=12
        call_indirect (type 4)
        local.set 3
      end
      local.get 3
    )
    (func $_ZN4core9panicking5panic17h72f0442034a99972E (;220;) (type 2) (param i32 i32 i32)
      (local i32)
      global.get $__stack_pointer
      i32.const 32
      i32.sub
      local.tee 3
      global.set $__stack_pointer
      local.get 3
      i32.const 12
      i32.add
      i32.const 1
      i32.store
      local.get 3
      i32.const 20
      i32.add
      i32.const 0
      i32.store
      local.get 3
      i32.const 1051964
      i32.store offset=16
      local.get 3
      i32.const 0
      i32.store
      local.get 3
      local.get 1
      i32.store offset=28
      local.get 3
      local.get 0
      i32.store offset=24
      local.get 3
      local.get 3
      i32.const 24
      i32.add
      i32.store offset=8
      local.get 3
      local.get 2
      call $_ZN4core9panicking9panic_fmt17h86214d64a55c1d57E
      unreachable
    )
    (func $_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17h094d0608d5797a86E (;221;) (type 5) (param i32 i32) (result i32)
      local.get 0
      i64.load32_u
      i32.const 1
      local.get 1
      call $_ZN4core3fmt3num3imp7fmt_u6417h6d919a10f014d51eE
    )
    (func $_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$u32$GT$3fmt17hcc288a85adfcec3fE (;222;) (type 5) (param i32 i32) (result i32)
      (local i32 i32 i32)
      global.get $__stack_pointer
      i32.const 128
      i32.sub
      local.tee 2
      global.set $__stack_pointer
      block ;; label = @1
        block ;; label = @2
          block ;; label = @3
            block ;; label = @4
              block ;; label = @5
                local.get 1
                i32.load offset=24
                local.tee 3
                i32.const 16
                i32.and
                br_if 0 (;@5;)
                local.get 3
                i32.const 32
                i32.and
                br_if 1 (;@4;)
                local.get 0
                i64.load32_u
                i32.const 1
                local.get 1
                call $_ZN4core3fmt3num3imp7fmt_u6417h6d919a10f014d51eE
                local.set 0
                br 4 (;@1;)
              end
              local.get 0
              i32.load
              local.set 0
              i32.const 0
              local.set 3
              loop ;; label = @5
                local.get 2
                local.get 3
                i32.add
                i32.const 127
                i32.add
                i32.const 48
                i32.const 87
                local.get 0
                i32.const 15
                i32.and
                local.tee 4
                i32.const 10
                i32.lt_u
                select
                local.get 4
                i32.add
                i32.store8
                local.get 3
                i32.const -1
                i32.add
                local.set 3
                local.get 0
                i32.const 15
                i32.gt_u
                local.set 4
                local.get 0
                i32.const 4
                i32.shr_u
                local.set 0
                local.get 4
                br_if 0 (;@5;)
              end
              local.get 3
              i32.const 128
              i32.add
              local.tee 0
              i32.const 129
              i32.ge_u
              br_if 1 (;@3;)
              local.get 1
              i32.const 1
              i32.const 1052320
              i32.const 2
              local.get 2
              local.get 3
              i32.add
              i32.const 128
              i32.add
              i32.const 0
              local.get 3
              i32.sub
              call $_ZN4core3fmt9Formatter12pad_integral17h682b6fe79568128eE
              local.set 0
              br 3 (;@1;)
            end
            local.get 0
            i32.load
            local.set 0
            i32.const 0
            local.set 3
            loop ;; label = @4
              local.get 2
              local.get 3
              i32.add
              i32.const 127
              i32.add
              i32.const 48
              i32.const 55
              local.get 0
              i32.const 15
              i32.and
              local.tee 4
              i32.const 10
              i32.lt_u
              select
              local.get 4
              i32.add
              i32.store8
              local.get 3
              i32.const -1
              i32.add
              local.set 3
              local.get 0
              i32.const 15
              i32.gt_u
              local.set 4
              local.get 0
              i32.const 4
              i32.shr_u
              local.set 0
              local.get 4
              br_if 0 (;@4;)
            end
            local.get 3
            i32.const 128
            i32.add
            local.tee 0
            i32.const 129
            i32.ge_u
            br_if 1 (;@2;)
            local.get 1
            i32.const 1
            i32.const 1052320
            i32.const 2
            local.get 2
            local.get 3
            i32.add
            i32.const 128
            i32.add
            i32.const 0
            local.get 3
            i32.sub
            call $_ZN4core3fmt9Formatter12pad_integral17h682b6fe79568128eE
            local.set 0
            br 2 (;@1;)
          end
          local.get 0
          i32.const 128
          i32.const 1052304
          call $_ZN4core5slice5index26slice_start_index_len_fail17hc1badbc4c621eed6E
          unreachable
        end
        local.get 0
        i32.const 128
        i32.const 1052304
        call $_ZN4core5slice5index26slice_start_index_len_fail17hc1badbc4c621eed6E
        unreachable
      end
      local.get 2
      i32.const 128
      i32.add
      global.set $__stack_pointer
      local.get 0
    )
    (func $_ZN4core3fmt5write17h7365630cdee3db2cE (;223;) (type 4) (param i32 i32 i32) (result i32)
      (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
      global.get $__stack_pointer
      i32.const 48
      i32.sub
      local.tee 3
      global.set $__stack_pointer
      local.get 3
      i32.const 3
      i32.store8 offset=40
      local.get 3
      i64.const 137438953472
      i64.store offset=32
      i32.const 0
      local.set 4
      local.get 3
      i32.const 0
      i32.store offset=24
      local.get 3
      i32.const 0
      i32.store offset=16
      local.get 3
      local.get 1
      i32.store offset=12
      local.get 3
      local.get 0
      i32.store offset=8
      block ;; label = @1
        block ;; label = @2
          block ;; label = @3
            block ;; label = @4
              local.get 2
              i32.load
              local.tee 5
              br_if 0 (;@4;)
              local.get 2
              i32.const 20
              i32.add
              i32.load
              local.tee 0
              i32.eqz
              br_if 1 (;@3;)
              local.get 2
              i32.load offset=16
              local.set 1
              local.get 0
              i32.const 3
              i32.shl
              local.set 6
              local.get 0
              i32.const -1
              i32.add
              i32.const 536870911
              i32.and
              i32.const 1
              i32.add
              local.set 4
              local.get 2
              i32.load offset=8
              local.set 0
              loop ;; label = @5
                block ;; label = @6
                  local.get 0
                  i32.const 4
                  i32.add
                  i32.load
                  local.tee 7
                  i32.eqz
                  br_if 0 (;@6;)
                  local.get 3
                  i32.load offset=8
                  local.get 0
                  i32.load
                  local.get 7
                  local.get 3
                  i32.load offset=12
                  i32.load offset=12
                  call_indirect (type 4)
                  br_if 4 (;@2;)
                end
                local.get 1
                i32.load
                local.get 3
                i32.const 8
                i32.add
                local.get 1
                i32.const 4
                i32.add
                i32.load
                call_indirect (type 5)
                br_if 3 (;@2;)
                local.get 1
                i32.const 8
                i32.add
                local.set 1
                local.get 0
                i32.const 8
                i32.add
                local.set 0
                local.get 6
                i32.const -8
                i32.add
                local.tee 6
                br_if 0 (;@5;)
                br 2 (;@3;)
              end
            end
            local.get 2
            i32.load offset=4
            local.tee 1
            i32.eqz
            br_if 0 (;@3;)
            local.get 1
            i32.const 5
            i32.shl
            local.set 8
            local.get 1
            i32.const -1
            i32.add
            i32.const 134217727
            i32.and
            i32.const 1
            i32.add
            local.set 4
            local.get 2
            i32.load offset=8
            local.set 0
            i32.const 0
            local.set 6
            loop ;; label = @4
              block ;; label = @5
                local.get 0
                i32.const 4
                i32.add
                i32.load
                local.tee 1
                i32.eqz
                br_if 0 (;@5;)
                local.get 3
                i32.load offset=8
                local.get 0
                i32.load
                local.get 1
                local.get 3
                i32.load offset=12
                i32.load offset=12
                call_indirect (type 4)
                br_if 3 (;@2;)
              end
              local.get 3
              local.get 5
              local.get 6
              i32.add
              local.tee 1
              i32.const 28
              i32.add
              i32.load8_u
              i32.store8 offset=40
              local.get 3
              local.get 1
              i32.const 20
              i32.add
              i64.load align=4
              i64.store offset=32
              local.get 1
              i32.const 16
              i32.add
              i32.load
              local.set 9
              local.get 2
              i32.load offset=16
              local.set 10
              i32.const 0
              local.set 11
              i32.const 0
              local.set 7
              block ;; label = @5
                block ;; label = @6
                  block ;; label = @7
                    local.get 1
                    i32.const 12
                    i32.add
                    i32.load
                    br_table 1 (;@6;) 0 (;@7;) 2 (;@5;) 1 (;@6;)
                  end
                  local.get 9
                  i32.const 3
                  i32.shl
                  local.set 12
                  i32.const 0
                  local.set 7
                  local.get 10
                  local.get 12
                  i32.add
                  local.tee 12
                  i32.const 4
                  i32.add
                  i32.load
                  i32.const 59
                  i32.ne
                  br_if 1 (;@5;)
                  local.get 12
                  i32.load
                  i32.load
                  local.set 9
                end
                i32.const 1
                local.set 7
              end
              local.get 3
              local.get 9
              i32.store offset=20
              local.get 3
              local.get 7
              i32.store offset=16
              local.get 1
              i32.const 8
              i32.add
              i32.load
              local.set 7
              block ;; label = @5
                block ;; label = @6
                  block ;; label = @7
                    local.get 1
                    i32.const 4
                    i32.add
                    i32.load
                    br_table 1 (;@6;) 0 (;@7;) 2 (;@5;) 1 (;@6;)
                  end
                  local.get 7
                  i32.const 3
                  i32.shl
                  local.set 9
                  local.get 10
                  local.get 9
                  i32.add
                  local.tee 9
                  i32.const 4
                  i32.add
                  i32.load
                  i32.const 59
                  i32.ne
                  br_if 1 (;@5;)
                  local.get 9
                  i32.load
                  i32.load
                  local.set 7
                end
                i32.const 1
                local.set 11
              end
              local.get 3
              local.get 7
              i32.store offset=28
              local.get 3
              local.get 11
              i32.store offset=24
              local.get 10
              local.get 1
              i32.load
              i32.const 3
              i32.shl
              i32.add
              local.tee 1
              i32.load
              local.get 3
              i32.const 8
              i32.add
              local.get 1
              i32.load offset=4
              call_indirect (type 5)
              br_if 2 (;@2;)
              local.get 0
              i32.const 8
              i32.add
              local.set 0
              local.get 8
              local.get 6
              i32.const 32
              i32.add
              local.tee 6
              i32.ne
              br_if 0 (;@4;)
            end
          end
          block ;; label = @3
            local.get 4
            local.get 2
            i32.const 12
            i32.add
            i32.load
            i32.ge_u
            br_if 0 (;@3;)
            local.get 3
            i32.load offset=8
            local.get 2
            i32.load offset=8
            local.get 4
            i32.const 3
            i32.shl
            i32.add
            local.tee 1
            i32.load
            local.get 1
            i32.load offset=4
            local.get 3
            i32.load offset=12
            i32.load offset=12
            call_indirect (type 4)
            br_if 1 (;@2;)
          end
          i32.const 0
          local.set 1
          br 1 (;@1;)
        end
        i32.const 1
        local.set 1
      end
      local.get 3
      i32.const 48
      i32.add
      global.set $__stack_pointer
      local.get 1
    )
    (func $_ZN36_$LT$T$u20$as$u20$core..any..Any$GT$7type_id17hf4f7f09bb7463010E (;224;) (type $.data) (param i32) (result i64)
      i64.const -2884136979963543874
    )
    (func $_ZN63_$LT$core..cell..BorrowMutError$u20$as$u20$core..fmt..Debug$GT$3fmt17h78ef429b4963ff03E (;225;) (type 5) (param i32 i32) (result i32)
      local.get 1
      i32.load
      i32.const 1051965
      i32.const 14
      local.get 1
      i32.load offset=4
      i32.load offset=12
      call_indirect (type 4)
    )
    (func $_ZN4core3ffi5c_str4CStr8from_ptr9strlen_rt17h98ae4a7c046d89dcE (;226;) (type 9) (param i32) (result i32)
      local.get 0
      call $strlen
    )
    (func $_ZN4core5slice6memchr14memchr_aligned17h3f32d5203edf09dfE (;227;) (type 8) (param i32 i32 i32 i32)
      (local i32 i32 i32 i32 i32)
      block ;; label = @1
        block ;; label = @2
          block ;; label = @3
            block ;; label = @4
              block ;; label = @5
                block ;; label = @6
                  local.get 2
                  i32.const 3
                  i32.add
                  i32.const -4
                  i32.and
                  local.tee 4
                  local.get 2
                  i32.eq
                  br_if 0 (;@6;)
                  local.get 4
                  local.get 2
                  i32.sub
                  local.tee 4
                  local.get 3
                  local.get 4
                  local.get 3
                  i32.lt_u
                  select
                  local.tee 4
                  i32.eqz
                  br_if 0 (;@6;)
                  i32.const 0
                  local.set 5
                  local.get 1
                  i32.const 255
                  i32.and
                  local.set 6
                  i32.const 1
                  local.set 7
                  loop ;; label = @7
                    local.get 2
                    local.get 5
                    i32.add
                    i32.load8_u
                    local.get 6
                    i32.eq
                    br_if 6 (;@1;)
                    local.get 4
                    local.get 5
                    i32.const 1
                    i32.add
                    local.tee 5
                    i32.ne
                    br_if 0 (;@7;)
                  end
                  local.get 4
                  local.get 3
                  i32.const -8
                  i32.add
                  local.tee 8
                  i32.gt_u
                  br_if 2 (;@4;)
                  br 1 (;@5;)
                end
                local.get 3
                i32.const -8
                i32.add
                local.set 8
                i32.const 0
                local.set 4
              end
              local.get 1
              i32.const 255
              i32.and
              i32.const 16843009
              i32.mul
              local.set 5
              block ;; label = @5
                loop ;; label = @6
                  local.get 2
                  local.get 4
                  i32.add
                  local.tee 7
                  i32.load
                  local.get 5
                  i32.xor
                  local.tee 6
                  i32.const -1
                  i32.xor
                  local.get 6
                  i32.const -16843009
                  i32.add
                  i32.and
                  i32.const -2139062144
                  i32.and
                  br_if 1 (;@5;)
                  local.get 7
                  i32.const 4
                  i32.add
                  i32.load
                  local.get 5
                  i32.xor
                  local.tee 6
                  i32.const -1
                  i32.xor
                  local.get 6
                  i32.const -16843009
                  i32.add
                  i32.and
                  i32.const -2139062144
                  i32.and
                  br_if 1 (;@5;)
                  local.get 4
                  i32.const 8
                  i32.add
                  local.tee 4
                  local.get 8
                  i32.le_u
                  br_if 0 (;@6;)
                end
              end
              local.get 4
              local.get 3
              i32.gt_u
              br_if 1 (;@3;)
            end
            i32.const 0
            local.set 7
            local.get 4
            local.get 3
            i32.eq
            br_if 1 (;@2;)
            local.get 1
            i32.const 255
            i32.and
            local.set 5
            loop ;; label = @4
              block ;; label = @5
                local.get 2
                local.get 4
                i32.add
                i32.load8_u
                local.get 5
                i32.ne
                br_if 0 (;@5;)
                local.get 4
                local.set 5
                i32.const 1
                local.set 7
                br 4 (;@1;)
              end
              local.get 3
              local.get 4
              i32.const 1
              i32.add
              local.tee 4
              i32.eq
              br_if 2 (;@2;)
              br 0 (;@4;)
            end
          end
          local.get 4
          local.get 3
          i32.const 1052592
          call $_ZN4core5slice5index26slice_start_index_len_fail17hc1badbc4c621eed6E
          unreachable
        end
        local.get 3
        local.set 5
      end
      local.get 0
      local.get 5
      i32.store offset=4
      local.get 0
      local.get 7
      i32.store
    )
    (func $_ZN4core3ffi5c_str4CStr19from_bytes_with_nul17he2085b77ca1571c9E (;228;) (type 2) (param i32 i32 i32)
      (local i32 i32 i32)
      global.get $__stack_pointer
      i32.const 16
      i32.sub
      local.tee 3
      global.set $__stack_pointer
      block ;; label = @1
        block ;; label = @2
          local.get 2
          i32.const 8
          i32.lt_u
          br_if 0 (;@2;)
          local.get 3
          i32.const 8
          i32.add
          i32.const 0
          local.get 1
          local.get 2
          call $_ZN4core5slice6memchr14memchr_aligned17h3f32d5203edf09dfE
          local.get 3
          i32.load offset=12
          local.set 4
          local.get 3
          i32.load offset=8
          local.set 5
          br 1 (;@1;)
        end
        block ;; label = @2
          local.get 2
          br_if 0 (;@2;)
          i32.const 0
          local.set 4
          i32.const 0
          local.set 5
          br 1 (;@1;)
        end
        block ;; label = @2
          local.get 1
          i32.load8_u
          br_if 0 (;@2;)
          i32.const 1
          local.set 5
          i32.const 0
          local.set 4
          br 1 (;@1;)
        end
        i32.const 1
        local.set 5
        block ;; label = @2
          local.get 2
          i32.const 1
          i32.eq
          br_if 0 (;@2;)
          block ;; label = @3
            local.get 1
            i32.load8_u offset=1
            br_if 0 (;@3;)
            i32.const 1
            local.set 4
            br 2 (;@1;)
          end
          i32.const 2
          local.set 4
          local.get 2
          i32.const 2
          i32.eq
          br_if 0 (;@2;)
          local.get 1
          i32.load8_u offset=2
          i32.eqz
          br_if 1 (;@1;)
          i32.const 3
          local.set 4
          local.get 2
          i32.const 3
          i32.eq
          br_if 0 (;@2;)
          local.get 1
          i32.load8_u offset=3
          i32.eqz
          br_if 1 (;@1;)
          i32.const 4
          local.set 4
          local.get 2
          i32.const 4
          i32.eq
          br_if 0 (;@2;)
          local.get 1
          i32.load8_u offset=4
          i32.eqz
          br_if 1 (;@1;)
          i32.const 5
          local.set 4
          local.get 2
          i32.const 5
          i32.eq
          br_if 0 (;@2;)
          local.get 1
          i32.load8_u offset=5
          i32.eqz
          br_if 1 (;@1;)
          local.get 2
          local.set 4
          i32.const 0
          local.set 5
          local.get 2
          i32.const 6
          i32.eq
          br_if 1 (;@1;)
          local.get 2
          i32.const 6
          local.get 1
          i32.load8_u offset=6
          local.tee 5
          select
          local.set 4
          local.get 5
          i32.eqz
          local.set 5
          br 1 (;@1;)
        end
        local.get 2
        local.set 4
        i32.const 0
        local.set 5
      end
      block ;; label = @1
        block ;; label = @2
          local.get 5
          br_if 0 (;@2;)
          i32.const 1
          local.set 5
          local.get 0
          i32.const 1
          i32.store offset=4
          br 1 (;@1;)
        end
        i32.const 1
        local.set 5
        block ;; label = @2
          local.get 4
          i32.const 1
          i32.add
          local.get 2
          i32.eq
          br_if 0 (;@2;)
          local.get 0
          i32.const 0
          i32.store offset=4
          local.get 0
          i32.const 8
          i32.add
          local.get 4
          i32.store
          br 1 (;@1;)
        end
        local.get 0
        local.get 1
        i32.store offset=4
        local.get 0
        i32.const 8
        i32.add
        local.get 2
        i32.store
        i32.const 0
        local.set 5
      end
      local.get 0
      local.get 5
      i32.store
      local.get 3
      i32.const 16
      i32.add
      global.set $__stack_pointer
    )
    (func $_ZN4core3str8converts9from_utf817hb0ec4d390965724cE (;229;) (type 2) (param i32 i32 i32)
      (local i32 i32 i32 i32 i32 i32 i32 i32 i32)
      block ;; label = @1
        local.get 2
        i32.eqz
        br_if 0 (;@1;)
        i32.const 0
        local.get 2
        i32.const -7
        i32.add
        local.tee 3
        local.get 3
        local.get 2
        i32.gt_u
        select
        local.set 4
        local.get 1
        i32.const 3
        i32.add
        i32.const -4
        i32.and
        local.get 1
        i32.sub
        local.tee 5
        i32.const -1
        i32.eq
        local.set 6
        i32.const 0
        local.set 3
        loop ;; label = @2
          block ;; label = @3
            block ;; label = @4
              block ;; label = @5
                block ;; label = @6
                  block ;; label = @7
                    block ;; label = @8
                      block ;; label = @9
                        block ;; label = @10
                          block ;; label = @11
                            block ;; label = @12
                              local.get 1
                              local.get 3
                              i32.add
                              i32.load8_u
                              local.tee 7
                              i32.const 24
                              i32.shl
                              i32.const 24
                              i32.shr_s
                              local.tee 8
                              i32.const 0
                              i32.lt_s
                              br_if 0 (;@12;)
                              local.get 6
                              br_if 1 (;@11;)
                              local.get 5
                              local.get 3
                              i32.sub
                              i32.const 3
                              i32.and
                              br_if 1 (;@11;)
                              local.get 3
                              local.get 4
                              i32.lt_u
                              br_if 2 (;@10;)
                              br 8 (;@4;)
                            end
                            i32.const 1
                            local.set 9
                            i32.const 1
                            local.set 10
                            block ;; label = @12
                              block ;; label = @13
                                block ;; label = @14
                                  block ;; label = @15
                                    block ;; label = @16
                                      block ;; label = @17
                                        block ;; label = @18
                                          block ;; label = @19
                                            local.get 7
                                            i32.const 1052676
                                            i32.add
                                            i32.load8_u
                                            i32.const -2
                                            i32.add
                                            br_table 0 (;@19;) 1 (;@18;) 2 (;@17;) 14 (;@5;)
                                          end
                                          local.get 3
                                          i32.const 1
                                          i32.add
                                          local.tee 7
                                          local.get 2
                                          i32.lt_u
                                          br_if 6 (;@12;)
                                          i32.const 0
                                          local.set 10
                                          br 13 (;@5;)
                                        end
                                        i32.const 1
                                        local.set 9
                                        i32.const 0
                                        local.set 10
                                        local.get 3
                                        i32.const 1
                                        i32.add
                                        local.tee 11
                                        local.get 2
                                        i32.ge_u
                                        br_if 12 (;@5;)
                                        local.get 1
                                        local.get 11
                                        i32.add
                                        i32.load8_s
                                        local.set 11
                                        local.get 7
                                        i32.const -224
                                        i32.add
                                        br_table 1 (;@16;) 3 (;@14;) 3 (;@14;) 3 (;@14;) 3 (;@14;) 3 (;@14;) 3 (;@14;) 3 (;@14;) 3 (;@14;) 3 (;@14;) 3 (;@14;) 3 (;@14;) 3 (;@14;) 2 (;@15;) 3 (;@14;)
                                      end
                                      i32.const 1
                                      local.set 9
                                      block ;; label = @17
                                        local.get 3
                                        i32.const 1
                                        i32.add
                                        local.tee 10
                                        local.get 2
                                        i32.lt_u
                                        br_if 0 (;@17;)
                                        i32.const 0
                                        local.set 10
                                        br 12 (;@5;)
                                      end
                                      local.get 1
                                      local.get 10
                                      i32.add
                                      i32.load8_s
                                      local.set 11
                                      block ;; label = @17
                                        block ;; label = @18
                                          block ;; label = @19
                                            local.get 7
                                            i32.const -240
                                            i32.add
                                            br_table 1 (;@18;) 0 (;@19;) 0 (;@19;) 0 (;@19;) 2 (;@17;) 0 (;@19;)
                                          end
                                          i32.const 1
                                          local.set 9
                                          local.get 8
                                          i32.const 15
                                          i32.add
                                          i32.const 255
                                          i32.and
                                          i32.const 2
                                          i32.le_u
                                          br_if 9 (;@9;)
                                          i32.const 1
                                          local.set 10
                                          br 13 (;@5;)
                                        end
                                        local.get 11
                                        i32.const 112
                                        i32.add
                                        i32.const 255
                                        i32.and
                                        i32.const 48
                                        i32.lt_u
                                        br_if 9 (;@8;)
                                        br 11 (;@6;)
                                      end
                                      local.get 11
                                      i32.const -113
                                      i32.gt_s
                                      br_if 10 (;@6;)
                                      br 8 (;@8;)
                                    end
                                    local.get 11
                                    i32.const -32
                                    i32.and
                                    i32.const -96
                                    i32.ne
                                    br_if 9 (;@6;)
                                    br 2 (;@13;)
                                  end
                                  local.get 11
                                  i32.const -96
                                  i32.ge_s
                                  br_if 8 (;@6;)
                                  br 1 (;@13;)
                                end
                                block ;; label = @14
                                  block ;; label = @15
                                    local.get 8
                                    i32.const 31
                                    i32.add
                                    i32.const 255
                                    i32.and
                                    i32.const 12
                                    i32.lt_u
                                    br_if 0 (;@15;)
                                    i32.const 1
                                    local.set 9
                                    local.get 8
                                    i32.const -2
                                    i32.and
                                    i32.const -18
                                    i32.eq
                                    br_if 1 (;@14;)
                                    i32.const 1
                                    local.set 10
                                    br 10 (;@5;)
                                  end
                                  local.get 11
                                  i32.const -65
                                  i32.gt_s
                                  br_if 8 (;@6;)
                                  br 1 (;@13;)
                                end
                                i32.const 1
                                local.set 10
                                local.get 11
                                i32.const -64
                                i32.ge_s
                                br_if 8 (;@5;)
                              end
                              i32.const 0
                              local.set 10
                              local.get 3
                              i32.const 2
                              i32.add
                              local.tee 7
                              local.get 2
                              i32.ge_u
                              br_if 7 (;@5;)
                              local.get 1
                              local.get 7
                              i32.add
                              i32.load8_s
                              i32.const -65
                              i32.le_s
                              br_if 5 (;@7;)
                              i32.const 1
                              local.set 10
                              i32.const 2
                              local.set 9
                              br 7 (;@5;)
                            end
                            local.get 1
                            local.get 7
                            i32.add
                            i32.load8_s
                            i32.const -65
                            i32.gt_s
                            br_if 5 (;@6;)
                            br 4 (;@7;)
                          end
                          local.get 3
                          i32.const 1
                          i32.add
                          local.set 3
                          br 7 (;@3;)
                        end
                        loop ;; label = @10
                          local.get 1
                          local.get 3
                          i32.add
                          local.tee 7
                          i32.load
                          i32.const -2139062144
                          i32.and
                          br_if 6 (;@4;)
                          local.get 7
                          i32.const 4
                          i32.add
                          i32.load
                          i32.const -2139062144
                          i32.and
                          br_if 6 (;@4;)
                          local.get 3
                          i32.const 8
                          i32.add
                          local.tee 3
                          local.get 4
                          i32.ge_u
                          br_if 6 (;@4;)
                          br 0 (;@10;)
                        end
                      end
                      i32.const 1
                      local.set 10
                      local.get 11
                      i32.const -64
                      i32.ge_s
                      br_if 3 (;@5;)
                    end
                    block ;; label = @8
                      local.get 3
                      i32.const 2
                      i32.add
                      local.tee 7
                      local.get 2
                      i32.lt_u
                      br_if 0 (;@8;)
                      i32.const 0
                      local.set 10
                      br 3 (;@5;)
                    end
                    block ;; label = @8
                      local.get 1
                      local.get 7
                      i32.add
                      i32.load8_s
                      i32.const -65
                      i32.le_s
                      br_if 0 (;@8;)
                      i32.const 2
                      local.set 9
                      i32.const 1
                      local.set 10
                      br 3 (;@5;)
                    end
                    i32.const 0
                    local.set 10
                    local.get 3
                    i32.const 3
                    i32.add
                    local.tee 7
                    local.get 2
                    i32.ge_u
                    br_if 2 (;@5;)
                    local.get 1
                    local.get 7
                    i32.add
                    i32.load8_s
                    i32.const -65
                    i32.le_s
                    br_if 0 (;@7;)
                    i32.const 3
                    local.set 9
                    i32.const 1
                    local.set 10
                    br 2 (;@5;)
                  end
                  local.get 7
                  i32.const 1
                  i32.add
                  local.set 3
                  br 3 (;@3;)
                end
                i32.const 1
                local.set 9
                i32.const 1
                local.set 10
              end
              local.get 0
              local.get 3
              i32.store offset=4
              local.get 0
              i32.const 9
              i32.add
              local.get 9
              i32.store8
              local.get 0
              i32.const 8
              i32.add
              local.get 10
              i32.store8
              local.get 0
              i32.const 1
              i32.store
              return
            end
            local.get 3
            local.get 2
            i32.ge_u
            br_if 0 (;@3;)
            loop ;; label = @4
              local.get 1
              local.get 3
              i32.add
              i32.load8_s
              i32.const 0
              i32.lt_s
              br_if 1 (;@3;)
              local.get 2
              local.get 3
              i32.const 1
              i32.add
              local.tee 3
              i32.ne
              br_if 0 (;@4;)
              br 3 (;@1;)
            end
          end
          local.get 3
          local.get 2
          i32.lt_u
          br_if 0 (;@2;)
        end
      end
      local.get 0
      local.get 1
      i32.store offset=4
      local.get 0
      i32.const 8
      i32.add
      local.get 2
      i32.store
      local.get 0
      i32.const 0
      i32.store
    )
    (func $_ZN4core3fmt8builders11DebugStruct5field17h7eb451c1b307b1faE (;230;) (type 14) (param i32 i32 i32 i32 i32) (result i32)
      (local i32 i32 i32 i32 i32 i64 i64)
      global.get $__stack_pointer
      i32.const 64
      i32.sub
      local.tee 5
      global.set $__stack_pointer
      i32.const 1
      local.set 6
      block ;; label = @1
        local.get 0
        i32.load8_u offset=4
        br_if 0 (;@1;)
        local.get 0
        i32.load8_u offset=5
        local.set 7
        block ;; label = @2
          local.get 0
          i32.load
          local.tee 8
          i32.load offset=24
          local.tee 9
          i32.const 4
          i32.and
          br_if 0 (;@2;)
          i32.const 1
          local.set 6
          local.get 8
          i32.load
          i32.const 1052245
          i32.const 1052247
          local.get 7
          i32.const 255
          i32.and
          local.tee 7
          select
          i32.const 2
          i32.const 3
          local.get 7
          select
          local.get 8
          i32.load offset=4
          i32.load offset=12
          call_indirect (type 4)
          br_if 1 (;@1;)
          i32.const 1
          local.set 6
          local.get 8
          i32.load
          local.get 1
          local.get 2
          local.get 8
          i32.load offset=4
          i32.load offset=12
          call_indirect (type 4)
          br_if 1 (;@1;)
          i32.const 1
          local.set 6
          local.get 8
          i32.load
          i32.const 1052192
          i32.const 2
          local.get 8
          i32.load offset=4
          i32.load offset=12
          call_indirect (type 4)
          br_if 1 (;@1;)
          local.get 3
          local.get 8
          local.get 4
          i32.load offset=12
          call_indirect (type 5)
          local.set 6
          br 1 (;@1;)
        end
        block ;; label = @2
          local.get 7
          i32.const 255
          i32.and
          br_if 0 (;@2;)
          i32.const 1
          local.set 6
          local.get 8
          i32.load
          i32.const 1052240
          i32.const 3
          local.get 8
          i32.load offset=4
          i32.load offset=12
          call_indirect (type 4)
          br_if 1 (;@1;)
          local.get 8
          i32.load offset=24
          local.set 9
        end
        i32.const 1
        local.set 6
        local.get 5
        i32.const 1
        i32.store8 offset=23
        local.get 5
        i32.const 1052212
        i32.store offset=28
        local.get 5
        local.get 8
        i64.load align=4
        i64.store offset=8
        local.get 5
        local.get 5
        i32.const 23
        i32.add
        i32.store offset=16
        local.get 8
        i64.load offset=8 align=4
        local.set 10
        local.get 8
        i64.load offset=16 align=4
        local.set 11
        local.get 5
        local.get 8
        i32.load8_u offset=32
        i32.store8 offset=56
        local.get 5
        local.get 8
        i32.load offset=28
        i32.store offset=52
        local.get 5
        local.get 9
        i32.store offset=48
        local.get 5
        local.get 11
        i64.store offset=40
        local.get 5
        local.get 10
        i64.store offset=32
        local.get 5
        local.get 5
        i32.const 8
        i32.add
        i32.store offset=24
        local.get 5
        i32.const 8
        i32.add
        local.get 1
        local.get 2
        call $_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h2e270c010c1a684bE
        br_if 0 (;@1;)
        local.get 5
        i32.const 8
        i32.add
        i32.const 1052192
        i32.const 2
        call $_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h2e270c010c1a684bE
        br_if 0 (;@1;)
        local.get 3
        local.get 5
        i32.const 24
        i32.add
        local.get 4
        i32.load offset=12
        call_indirect (type 5)
        br_if 0 (;@1;)
        local.get 5
        i32.load offset=24
        i32.const 1052243
        i32.const 2
        local.get 5
        i32.load offset=28
        i32.load offset=12
        call_indirect (type 4)
        local.set 6
      end
      local.get 0
      i32.const 1
      i32.store8 offset=5
      local.get 0
      local.get 6
      i32.store8 offset=4
      local.get 5
      i32.const 64
      i32.add
      global.set $__stack_pointer
      local.get 0
    )
    (func $_ZN70_$LT$core..panic..location..Location$u20$as$u20$core..fmt..Display$GT$3fmt17h7b6ca0718ffdd712E (;231;) (type 5) (param i32 i32) (result i32)
      (local i32)
      global.get $__stack_pointer
      i32.const 48
      i32.sub
      local.tee 2
      global.set $__stack_pointer
      local.get 2
      i32.const 20
      i32.add
      i32.const 6
      i32.store
      local.get 2
      i32.const 12
      i32.add
      i32.const 6
      i32.store
      local.get 2
      i32.const 60
      i32.store offset=4
      local.get 2
      local.get 0
      i32.store
      local.get 2
      local.get 0
      i32.const 12
      i32.add
      i32.store offset=16
      local.get 2
      local.get 0
      i32.const 8
      i32.add
      i32.store offset=8
      local.get 1
      i32.load
      local.set 0
      local.get 1
      i32.load offset=4
      local.set 1
      local.get 2
      i32.const 3
      i32.store offset=44
      local.get 2
      i32.const 3
      i32.store offset=36
      local.get 2
      i32.const 1051980
      i32.store offset=32
      local.get 2
      i32.const 0
      i32.store offset=24
      local.get 2
      local.get 2
      i32.store offset=40
      local.get 0
      local.get 1
      local.get 2
      i32.const 24
      i32.add
      call $_ZN4core3fmt5write17h7365630cdee3db2cE
      local.set 0
      local.get 2
      i32.const 48
      i32.add
      global.set $__stack_pointer
      local.get 0
    )
    (func $_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h47f7c08f9aa28946E (;232;) (type 5) (param i32 i32) (result i32)
      local.get 1
      local.get 0
      i32.load
      local.get 0
      i32.load offset=4
      call $_ZN4core3fmt9Formatter3pad17h0ebf4b187a504171E
    )
    (func $_ZN4core5panic10panic_info9PanicInfo7payload17h058db8b903609c84E (;233;) (type 3) (param i32 i32)
      local.get 0
      local.get 1
      i64.load align=4
      i64.store
    )
    (func $_ZN4core5panic10panic_info9PanicInfo7message17h25ed2cf84c4f2ad9E (;234;) (type 9) (param i32) (result i32)
      local.get 0
      i32.load offset=8
    )
    (func $_ZN4core5panic10panic_info9PanicInfo8location17h3d7375e8ae0a75d3E (;235;) (type 9) (param i32) (result i32)
      local.get 0
      i32.load offset=12
    )
    (func $_ZN4core5panic10panic_info9PanicInfo10can_unwind17h13c6fb22fcc25cacE (;236;) (type 9) (param i32) (result i32)
      local.get 0
      i32.load8_u offset=16
    )
    (func $_ZN73_$LT$core..panic..panic_info..PanicInfo$u20$as$u20$core..fmt..Display$GT$3fmt17h1fbf0b746bacd1cfE (;237;) (type 5) (param i32 i32) (result i32)
      (local i32 i32 i32)
      global.get $__stack_pointer
      i32.const 64
      i32.sub
      local.tee 2
      global.set $__stack_pointer
      i32.const 1
      local.set 3
      block ;; label = @1
        local.get 1
        i32.load
        local.tee 4
        i32.const 1052004
        i32.const 12
        local.get 1
        i32.load offset=4
        local.tee 1
        i32.load offset=12
        call_indirect (type 4)
        br_if 0 (;@1;)
        block ;; label = @2
          block ;; label = @3
            local.get 0
            i32.load offset=8
            local.tee 3
            i32.eqz
            br_if 0 (;@3;)
            local.get 2
            local.get 3
            i32.store offset=12
            local.get 2
            i32.const 61
            i32.store offset=20
            local.get 2
            local.get 2
            i32.const 12
            i32.add
            i32.store offset=16
            i32.const 1
            local.set 3
            local.get 2
            i32.const 1
            i32.store offset=60
            local.get 2
            i32.const 2
            i32.store offset=52
            local.get 2
            i32.const 1052020
            i32.store offset=48
            local.get 2
            i32.const 0
            i32.store offset=40
            local.get 2
            local.get 2
            i32.const 16
            i32.add
            i32.store offset=56
            local.get 4
            local.get 1
            local.get 2
            i32.const 40
            i32.add
            call $_ZN4core3fmt5write17h7365630cdee3db2cE
            i32.eqz
            br_if 1 (;@2;)
            br 2 (;@1;)
          end
          local.get 0
          i32.load
          local.tee 3
          local.get 0
          i32.load offset=4
          i32.const 12
          i32.add
          i32.load
          call_indirect (type $.data)
          i64.const -8527728395957036344
          i64.ne
          br_if 0 (;@2;)
          local.get 2
          local.get 3
          i32.store offset=12
          local.get 2
          i32.const 62
          i32.store offset=20
          local.get 2
          local.get 2
          i32.const 12
          i32.add
          i32.store offset=16
          i32.const 1
          local.set 3
          local.get 2
          i32.const 1
          i32.store offset=60
          local.get 2
          i32.const 2
          i32.store offset=52
          local.get 2
          i32.const 1052020
          i32.store offset=48
          local.get 2
          i32.const 0
          i32.store offset=40
          local.get 2
          local.get 2
          i32.const 16
          i32.add
          i32.store offset=56
          local.get 4
          local.get 1
          local.get 2
          i32.const 40
          i32.add
          call $_ZN4core3fmt5write17h7365630cdee3db2cE
          br_if 1 (;@1;)
        end
        local.get 0
        i32.load offset=12
        local.set 3
        local.get 2
        i32.const 36
        i32.add
        i32.const 6
        i32.store
        local.get 2
        i32.const 16
        i32.add
        i32.const 12
        i32.add
        i32.const 6
        i32.store
        local.get 2
        local.get 3
        i32.const 12
        i32.add
        i32.store offset=32
        local.get 2
        local.get 3
        i32.const 8
        i32.add
        i32.store offset=24
        local.get 2
        i32.const 60
        i32.store offset=20
        local.get 2
        local.get 3
        i32.store offset=16
        local.get 2
        i32.const 3
        i32.store offset=60
        local.get 2
        i32.const 3
        i32.store offset=52
        local.get 2
        i32.const 1051980
        i32.store offset=48
        local.get 2
        i32.const 0
        i32.store offset=40
        local.get 2
        local.get 2
        i32.const 16
        i32.add
        i32.store offset=56
        local.get 4
        local.get 1
        local.get 2
        i32.const 40
        i32.add
        call $_ZN4core3fmt5write17h7365630cdee3db2cE
        local.set 3
      end
      local.get 2
      i32.const 64
      i32.add
      global.set $__stack_pointer
      local.get 3
    )
    (func $_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17hd4ab2f78c459e101E (;238;) (type 5) (param i32 i32) (result i32)
      (local i32 i32 i32)
      global.get $__stack_pointer
      i32.const 32
      i32.sub
      local.tee 2
      global.set $__stack_pointer
      local.get 1
      i32.load offset=4
      local.set 3
      local.get 1
      i32.load
      local.set 4
      local.get 2
      i32.const 8
      i32.add
      i32.const 16
      i32.add
      local.get 0
      i32.load
      local.tee 1
      i32.const 16
      i32.add
      i64.load align=4
      i64.store
      local.get 2
      i32.const 8
      i32.add
      i32.const 8
      i32.add
      local.get 1
      i32.const 8
      i32.add
      i64.load align=4
      i64.store
      local.get 2
      local.get 1
      i64.load align=4
      i64.store offset=8
      local.get 4
      local.get 3
      local.get 2
      i32.const 8
      i32.add
      call $_ZN4core3fmt5write17h7365630cdee3db2cE
      local.set 1
      local.get 2
      i32.const 32
      i32.add
      global.set $__stack_pointer
      local.get 1
    )
    (func $_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h064daa430d5481efE (;239;) (type 5) (param i32 i32) (result i32)
      local.get 1
      local.get 0
      i32.load
      local.tee 0
      i32.load
      local.get 0
      i32.load offset=4
      call $_ZN4core3fmt9Formatter3pad17h0ebf4b187a504171E
    )
    (func $_ZN4core9panicking19assert_failed_inner17hb5f899dac140aae4E (;240;) (type 12) (param i32 i32 i32 i32 i32 i32 i32)
      (local i32)
      global.get $__stack_pointer
      i32.const 112
      i32.sub
      local.tee 7
      global.set $__stack_pointer
      local.get 7
      local.get 2
      i32.store offset=12
      local.get 7
      local.get 1
      i32.store offset=8
      local.get 7
      local.get 4
      i32.store offset=20
      local.get 7
      local.get 3
      i32.store offset=16
      block ;; label = @1
        block ;; label = @2
          block ;; label = @3
            block ;; label = @4
              local.get 0
              i32.const 255
              i32.and
              br_table 0 (;@4;) 1 (;@3;) 2 (;@2;) 0 (;@4;)
            end
            local.get 7
            i32.const 1052061
            i32.store offset=24
            i32.const 2
            local.set 2
            br 2 (;@1;)
          end
          local.get 7
          i32.const 1052059
          i32.store offset=24
          i32.const 2
          local.set 2
          br 1 (;@1;)
        end
        local.get 7
        i32.const 1052052
        i32.store offset=24
        i32.const 7
        local.set 2
      end
      local.get 7
      local.get 2
      i32.store offset=28
      block ;; label = @1
        local.get 5
        i32.load offset=8
        br_if 0 (;@1;)
        local.get 7
        i32.const 56
        i32.add
        i32.const 20
        i32.add
        i32.const 63
        i32.store
        local.get 7
        i32.const 56
        i32.add
        i32.const 12
        i32.add
        i32.const 63
        i32.store
        local.get 7
        i32.const 88
        i32.add
        i32.const 12
        i32.add
        i32.const 4
        i32.store
        local.get 7
        i32.const 88
        i32.add
        i32.const 20
        i32.add
        i32.const 3
        i32.store
        local.get 7
        i32.const 1052160
        i32.store offset=96
        local.get 7
        i32.const 0
        i32.store offset=88
        local.get 7
        i32.const 60
        i32.store offset=60
        local.get 7
        local.get 7
        i32.const 56
        i32.add
        i32.store offset=104
        local.get 7
        local.get 7
        i32.const 16
        i32.add
        i32.store offset=72
        local.get 7
        local.get 7
        i32.const 8
        i32.add
        i32.store offset=64
        local.get 7
        local.get 7
        i32.const 24
        i32.add
        i32.store offset=56
        local.get 7
        i32.const 88
        i32.add
        local.get 6
        call $_ZN4core9panicking9panic_fmt17h86214d64a55c1d57E
        unreachable
      end
      local.get 7
      i32.const 32
      i32.add
      i32.const 16
      i32.add
      local.get 5
      i32.const 16
      i32.add
      i64.load align=4
      i64.store
      local.get 7
      i32.const 32
      i32.add
      i32.const 8
      i32.add
      local.get 5
      i32.const 8
      i32.add
      i64.load align=4
      i64.store
      local.get 7
      local.get 5
      i64.load align=4
      i64.store offset=32
      local.get 7
      i32.const 88
      i32.add
      i32.const 12
      i32.add
      i32.const 4
      i32.store
      local.get 7
      i32.const 88
      i32.add
      i32.const 20
      i32.add
      i32.const 4
      i32.store
      local.get 7
      i32.const 84
      i32.add
      i32.const 10
      i32.store
      local.get 7
      i32.const 56
      i32.add
      i32.const 20
      i32.add
      i32.const 63
      i32.store
      local.get 7
      i32.const 56
      i32.add
      i32.const 12
      i32.add
      i32.const 63
      i32.store
      local.get 7
      i32.const 1052124
      i32.store offset=96
      local.get 7
      i32.const 0
      i32.store offset=88
      local.get 7
      i32.const 60
      i32.store offset=60
      local.get 7
      local.get 7
      i32.const 56
      i32.add
      i32.store offset=104
      local.get 7
      local.get 7
      i32.const 32
      i32.add
      i32.store offset=80
      local.get 7
      local.get 7
      i32.const 16
      i32.add
      i32.store offset=72
      local.get 7
      local.get 7
      i32.const 8
      i32.add
      i32.store offset=64
      local.get 7
      local.get 7
      i32.const 24
      i32.add
      i32.store offset=56
      local.get 7
      i32.const 88
      i32.add
      local.get 6
      call $_ZN4core9panicking9panic_fmt17h86214d64a55c1d57E
      unreachable
    )
    (func $_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hd9f442c0e72bf319E (;241;) (type 5) (param i32 i32) (result i32)
      local.get 0
      i32.load
      local.get 1
      local.get 0
      i32.load offset=4
      i32.load offset=12
      call_indirect (type 5)
    )
    (func $_ZN59_$LT$core..fmt..Arguments$u20$as$u20$core..fmt..Display$GT$3fmt17he29b6fddec732b8fE (;242;) (type 5) (param i32 i32) (result i32)
      (local i32 i32)
      global.get $__stack_pointer
      i32.const 32
      i32.sub
      local.tee 2
      global.set $__stack_pointer
      local.get 1
      i32.load offset=4
      local.set 3
      local.get 1
      i32.load
      local.set 1
      local.get 2
      i32.const 8
      i32.add
      i32.const 16
      i32.add
      local.get 0
      i32.const 16
      i32.add
      i64.load align=4
      i64.store
      local.get 2
      i32.const 8
      i32.add
      i32.const 8
      i32.add
      local.get 0
      i32.const 8
      i32.add
      i64.load align=4
      i64.store
      local.get 2
      local.get 0
      i64.load align=4
      i64.store offset=8
      local.get 1
      local.get 3
      local.get 2
      i32.const 8
      i32.add
      call $_ZN4core3fmt5write17h7365630cdee3db2cE
      local.set 0
      local.get 2
      i32.const 32
      i32.add
      global.set $__stack_pointer
      local.get 0
    )
    (func $_ZN4core6result13unwrap_failed17h97c1c0aa7b263f08E (;243;) (type 10) (param i32 i32 i32 i32 i32)
      (local i32)
      global.get $__stack_pointer
      i32.const 64
      i32.sub
      local.tee 5
      global.set $__stack_pointer
      local.get 5
      local.get 1
      i32.store offset=12
      local.get 5
      local.get 0
      i32.store offset=8
      local.get 5
      local.get 3
      i32.store offset=20
      local.get 5
      local.get 2
      i32.store offset=16
      local.get 5
      i32.const 24
      i32.add
      i32.const 12
      i32.add
      i32.const 2
      i32.store
      local.get 5
      i32.const 44
      i32.add
      i32.const 2
      i32.store
      local.get 5
      i32.const 48
      i32.add
      i32.const 12
      i32.add
      i32.const 63
      i32.store
      local.get 5
      i32.const 1052196
      i32.store offset=32
      local.get 5
      i32.const 0
      i32.store offset=24
      local.get 5
      i32.const 60
      i32.store offset=52
      local.get 5
      local.get 5
      i32.const 48
      i32.add
      i32.store offset=40
      local.get 5
      local.get 5
      i32.const 16
      i32.add
      i32.store offset=56
      local.get 5
      local.get 5
      i32.const 8
      i32.add
      i32.store offset=48
      local.get 5
      i32.const 24
      i32.add
      local.get 4
      call $_ZN4core9panicking9panic_fmt17h86214d64a55c1d57E
      unreachable
    )
    (func $_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h2e270c010c1a684bE (;244;) (type 4) (param i32 i32 i32) (result i32)
      (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
      global.get $__stack_pointer
      i32.const 48
      i32.sub
      local.tee 3
      global.set $__stack_pointer
      local.get 3
      i64.const 42949672961
      i64.store offset=32
      local.get 3
      local.get 2
      i32.store offset=28
      i32.const 0
      local.set 4
      local.get 3
      i32.const 0
      i32.store offset=24
      local.get 3
      local.get 2
      i32.store offset=20
      local.get 3
      local.get 1
      i32.store offset=16
      local.get 3
      local.get 2
      i32.store offset=12
      local.get 3
      i32.const 0
      i32.store offset=8
      local.get 0
      i32.load offset=4
      local.set 5
      local.get 0
      i32.load
      local.set 6
      local.get 0
      i32.load offset=8
      local.set 7
      i32.const 0
      local.set 8
      i32.const 0
      local.set 9
      block ;; label = @1
        loop ;; label = @2
          block ;; label = @3
            block ;; label = @4
              local.get 9
              i32.const 255
              i32.and
              br_if 0 (;@4;)
              block ;; label = @5
                local.get 8
                local.get 2
                i32.gt_u
                br_if 0 (;@5;)
                loop ;; label = @6
                  local.get 1
                  local.get 8
                  i32.add
                  local.set 10
                  block ;; label = @7
                    block ;; label = @8
                      local.get 2
                      local.get 8
                      i32.sub
                      local.tee 11
                      i32.const 8
                      i32.lt_u
                      br_if 0 (;@8;)
                      local.get 3
                      i32.const 10
                      local.get 10
                      local.get 11
                      call $_ZN4core5slice6memchr14memchr_aligned17h3f32d5203edf09dfE
                      local.get 3
                      i32.load offset=4
                      local.set 0
                      local.get 3
                      i32.load
                      local.set 10
                      br 1 (;@7;)
                    end
                    i32.const 0
                    local.set 0
                    block ;; label = @8
                      local.get 11
                      br_if 0 (;@8;)
                      i32.const 0
                      local.set 10
                      br 1 (;@7;)
                    end
                    loop ;; label = @8
                      block ;; label = @9
                        local.get 10
                        local.get 0
                        i32.add
                        i32.load8_u
                        i32.const 10
                        i32.ne
                        br_if 0 (;@9;)
                        i32.const 1
                        local.set 10
                        br 2 (;@7;)
                      end
                      local.get 11
                      local.get 0
                      i32.const 1
                      i32.add
                      local.tee 0
                      i32.ne
                      br_if 0 (;@8;)
                    end
                    i32.const 0
                    local.set 10
                    local.get 11
                    local.set 0
                  end
                  block ;; label = @7
                    local.get 10
                    i32.const 1
                    i32.eq
                    br_if 0 (;@7;)
                    local.get 2
                    local.set 8
                    br 2 (;@5;)
                  end
                  local.get 8
                  local.get 0
                  i32.add
                  local.tee 0
                  i32.const 1
                  i32.add
                  local.set 8
                  block ;; label = @7
                    local.get 0
                    local.get 2
                    i32.ge_u
                    br_if 0 (;@7;)
                    local.get 1
                    local.get 0
                    i32.add
                    i32.load8_u
                    i32.const 10
                    i32.ne
                    br_if 0 (;@7;)
                    i32.const 0
                    local.set 9
                    local.get 8
                    local.set 12
                    local.get 8
                    local.set 0
                    br 4 (;@3;)
                  end
                  local.get 8
                  local.get 2
                  i32.le_u
                  br_if 0 (;@6;)
                end
              end
              i32.const 1
              local.set 9
              local.get 4
              local.set 12
              local.get 2
              local.set 0
              local.get 4
              local.get 2
              i32.ne
              br_if 1 (;@3;)
            end
            i32.const 0
            local.set 0
            br 2 (;@1;)
          end
          block ;; label = @3
            block ;; label = @4
              local.get 7
              i32.load8_u
              i32.eqz
              br_if 0 (;@4;)
              local.get 6
              i32.const 1052236
              i32.const 4
              local.get 5
              i32.load offset=12
              call_indirect (type 4)
              br_if 1 (;@3;)
            end
            local.get 1
            local.get 4
            i32.add
            local.set 11
            local.get 0
            local.get 4
            i32.sub
            local.set 10
            i32.const 0
            local.set 13
            block ;; label = @4
              local.get 0
              local.get 4
              i32.eq
              br_if 0 (;@4;)
              local.get 10
              local.get 11
              i32.add
              i32.const -1
              i32.add
              i32.load8_u
              i32.const 10
              i32.eq
              local.set 13
            end
            local.get 7
            local.get 13
            i32.store8
            local.get 12
            local.set 4
            local.get 6
            local.get 11
            local.get 10
            local.get 5
            i32.load offset=12
            call_indirect (type 4)
            i32.eqz
            br_if 1 (;@2;)
          end
        end
        i32.const 1
        local.set 0
      end
      local.get 3
      i32.const 48
      i32.add
      global.set $__stack_pointer
      local.get 0
    )
    (func $_ZN4core3fmt8builders10DebugTuple5field17hcda8eb4b057b8cecE (;245;) (type 4) (param i32 i32 i32) (result i32)
      (local i32 i32 i32 i32 i32 i64 i64)
      global.get $__stack_pointer
      i32.const 64
      i32.sub
      local.tee 3
      global.set $__stack_pointer
      block ;; label = @1
        block ;; label = @2
          local.get 0
          i32.load8_u offset=8
          i32.eqz
          br_if 0 (;@2;)
          local.get 0
          i32.load
          local.set 4
          i32.const 1
          local.set 5
          br 1 (;@1;)
        end
        local.get 0
        i32.load
        local.set 4
        block ;; label = @2
          local.get 0
          i32.const 4
          i32.add
          i32.load
          local.tee 6
          i32.load offset=24
          local.tee 7
          i32.const 4
          i32.and
          br_if 0 (;@2;)
          i32.const 1
          local.set 5
          local.get 6
          i32.load
          i32.const 1052245
          i32.const 1052255
          local.get 4
          select
          i32.const 2
          i32.const 1
          local.get 4
          select
          local.get 6
          i32.load offset=4
          i32.load offset=12
          call_indirect (type 4)
          br_if 1 (;@1;)
          local.get 1
          local.get 6
          local.get 2
          i32.load offset=12
          call_indirect (type 5)
          local.set 5
          br 1 (;@1;)
        end
        block ;; label = @2
          local.get 4
          br_if 0 (;@2;)
          block ;; label = @3
            local.get 6
            i32.load
            i32.const 1052253
            i32.const 2
            local.get 6
            i32.load offset=4
            i32.load offset=12
            call_indirect (type 4)
            i32.eqz
            br_if 0 (;@3;)
            i32.const 1
            local.set 5
            i32.const 0
            local.set 4
            br 2 (;@1;)
          end
          local.get 6
          i32.load offset=24
          local.set 7
        end
        i32.const 1
        local.set 5
        local.get 3
        i32.const 1
        i32.store8 offset=23
        local.get 3
        i32.const 1052212
        i32.store offset=28
        local.get 3
        local.get 6
        i64.load align=4
        i64.store offset=8
        local.get 3
        local.get 3
        i32.const 23
        i32.add
        i32.store offset=16
        local.get 6
        i64.load offset=8 align=4
        local.set 8
        local.get 6
        i64.load offset=16 align=4
        local.set 9
        local.get 3
        local.get 6
        i32.load8_u offset=32
        i32.store8 offset=56
        local.get 3
        local.get 6
        i32.load offset=28
        i32.store offset=52
        local.get 3
        local.get 7
        i32.store offset=48
        local.get 3
        local.get 9
        i64.store offset=40
        local.get 3
        local.get 8
        i64.store offset=32
        local.get 3
        local.get 3
        i32.const 8
        i32.add
        i32.store offset=24
        local.get 1
        local.get 3
        i32.const 24
        i32.add
        local.get 2
        i32.load offset=12
        call_indirect (type 5)
        br_if 0 (;@1;)
        local.get 3
        i32.load offset=24
        i32.const 1052243
        i32.const 2
        local.get 3
        i32.load offset=28
        i32.load offset=12
        call_indirect (type 4)
        local.set 5
      end
      local.get 0
      local.get 5
      i32.store8 offset=8
      local.get 0
      local.get 4
      i32.const 1
      i32.add
      i32.store
      local.get 3
      i32.const 64
      i32.add
      global.set $__stack_pointer
      local.get 0
    )
    (func $_ZN4core3fmt8builders10DebugInner5entry17h157442ef226a275fE (;246;) (type 2) (param i32 i32 i32)
      (local i32 i32 i32 i32 i64 i64)
      global.get $__stack_pointer
      i32.const 64
      i32.sub
      local.tee 3
      global.set $__stack_pointer
      i32.const 1
      local.set 4
      block ;; label = @1
        local.get 0
        i32.load8_u offset=4
        br_if 0 (;@1;)
        local.get 0
        i32.load8_u offset=5
        local.set 4
        block ;; label = @2
          block ;; label = @3
            block ;; label = @4
              block ;; label = @5
                local.get 0
                i32.load
                local.tee 5
                i32.load offset=24
                local.tee 6
                i32.const 4
                i32.and
                br_if 0 (;@5;)
                local.get 4
                i32.const 255
                i32.and
                br_if 1 (;@4;)
                br 3 (;@2;)
              end
              local.get 4
              i32.const 255
              i32.and
              br_if 1 (;@3;)
              i32.const 1
              local.set 4
              local.get 5
              i32.load
              i32.const 1052257
              i32.const 1
              local.get 5
              i32.load offset=4
              i32.load offset=12
              call_indirect (type 4)
              br_if 3 (;@1;)
              local.get 5
              i32.load offset=24
              local.set 6
              br 1 (;@3;)
            end
            i32.const 1
            local.set 4
            local.get 5
            i32.load
            i32.const 1052245
            i32.const 2
            local.get 5
            i32.load offset=4
            i32.load offset=12
            call_indirect (type 4)
            i32.eqz
            br_if 1 (;@2;)
            br 2 (;@1;)
          end
          i32.const 1
          local.set 4
          local.get 3
          i32.const 1
          i32.store8 offset=23
          local.get 3
          i32.const 1052212
          i32.store offset=28
          local.get 3
          local.get 5
          i64.load align=4
          i64.store offset=8
          local.get 3
          local.get 3
          i32.const 23
          i32.add
          i32.store offset=16
          local.get 5
          i64.load offset=8 align=4
          local.set 7
          local.get 5
          i64.load offset=16 align=4
          local.set 8
          local.get 3
          local.get 5
          i32.load8_u offset=32
          i32.store8 offset=56
          local.get 3
          local.get 5
          i32.load offset=28
          i32.store offset=52
          local.get 3
          local.get 6
          i32.store offset=48
          local.get 3
          local.get 8
          i64.store offset=40
          local.get 3
          local.get 7
          i64.store offset=32
          local.get 3
          local.get 3
          i32.const 8
          i32.add
          i32.store offset=24
          local.get 1
          local.get 3
          i32.const 24
          i32.add
          local.get 2
          i32.load offset=12
          call_indirect (type 5)
          br_if 1 (;@1;)
          local.get 3
          i32.load offset=24
          i32.const 1052243
          i32.const 2
          local.get 3
          i32.load offset=28
          i32.load offset=12
          call_indirect (type 4)
          local.set 4
          br 1 (;@1;)
        end
        local.get 1
        local.get 5
        local.get 2
        i32.load offset=12
        call_indirect (type 5)
        local.set 4
      end
      local.get 0
      i32.const 1
      i32.store8 offset=5
      local.get 0
      local.get 4
      i32.store8 offset=4
      local.get 3
      i32.const 64
      i32.add
      global.set $__stack_pointer
    )
    (func $_ZN4core3fmt8builders8DebugSet5entry17h507c2789846452c1E (;247;) (type 4) (param i32 i32 i32) (result i32)
      local.get 0
      local.get 1
      local.get 2
      call $_ZN4core3fmt8builders10DebugInner5entry17h157442ef226a275fE
      local.get 0
    )
    (func $_ZN4core3fmt8builders9DebugList6finish17h1bd9f3564a0d5f70E (;248;) (type 9) (param i32) (result i32)
      (local i32)
      i32.const 1
      local.set 1
      block ;; label = @1
        local.get 0
        i32.load8_u offset=4
        br_if 0 (;@1;)
        local.get 0
        i32.load
        local.tee 0
        i32.load
        i32.const 1052276
        i32.const 1
        local.get 0
        i32.const 4
        i32.add
        i32.load
        i32.load offset=12
        call_indirect (type 4)
        local.set 1
      end
      local.get 1
    )
    (func $_ZN4core3fmt9Formatter12pad_integral17h682b6fe79568128eE (;249;) (type 15) (param i32 i32 i32 i32 i32 i32) (result i32)
      (local i32 i32 i32 i32 i32 i32 i32)
      block ;; label = @1
        block ;; label = @2
          local.get 1
          i32.eqz
          br_if 0 (;@2;)
          i32.const 43
          i32.const 1114112
          local.get 0
          i32.load offset=24
          local.tee 6
          i32.const 1
          i32.and
          local.tee 1
          select
          local.set 7
          local.get 1
          local.get 5
          i32.add
          local.set 8
          br 1 (;@1;)
        end
        local.get 5
        i32.const 1
        i32.add
        local.set 8
        local.get 0
        i32.load offset=24
        local.set 6
        i32.const 45
        local.set 7
      end
      block ;; label = @1
        block ;; label = @2
          local.get 6
          i32.const 4
          i32.and
          br_if 0 (;@2;)
          i32.const 0
          local.set 2
          br 1 (;@1;)
        end
        block ;; label = @2
          block ;; label = @3
            local.get 3
            i32.const 16
            i32.lt_u
            br_if 0 (;@3;)
            local.get 2
            local.get 3
            call $_ZN4core3str5count14do_count_chars17h4cdee80687050aefE
            local.set 9
            br 1 (;@2;)
          end
          block ;; label = @3
            local.get 3
            br_if 0 (;@3;)
            i32.const 0
            local.set 9
            br 1 (;@2;)
          end
          local.get 3
          i32.const 3
          i32.and
          local.set 10
          block ;; label = @3
            block ;; label = @4
              local.get 3
              i32.const -1
              i32.add
              i32.const 3
              i32.ge_u
              br_if 0 (;@4;)
              i32.const 0
              local.set 9
              local.get 2
              local.set 1
              br 1 (;@3;)
            end
            local.get 3
            i32.const -4
            i32.and
            local.set 11
            i32.const 0
            local.set 9
            local.get 2
            local.set 1
            loop ;; label = @4
              local.get 9
              local.get 1
              i32.load8_s
              i32.const -65
              i32.gt_s
              i32.add
              local.get 1
              i32.load8_s offset=1
              i32.const -65
              i32.gt_s
              i32.add
              local.get 1
              i32.load8_s offset=2
              i32.const -65
              i32.gt_s
              i32.add
              local.get 1
              i32.load8_s offset=3
              i32.const -65
              i32.gt_s
              i32.add
              local.set 9
              local.get 1
              i32.const 4
              i32.add
              local.set 1
              local.get 11
              i32.const -4
              i32.add
              local.tee 11
              br_if 0 (;@4;)
            end
          end
          local.get 10
          i32.eqz
          br_if 0 (;@2;)
          loop ;; label = @3
            local.get 9
            local.get 1
            i32.load8_s
            i32.const -65
            i32.gt_s
            i32.add
            local.set 9
            local.get 1
            i32.const 1
            i32.add
            local.set 1
            local.get 10
            i32.const -1
            i32.add
            local.tee 10
            br_if 0 (;@3;)
          end
        end
        local.get 9
        local.get 8
        i32.add
        local.set 8
      end
      block ;; label = @1
        block ;; label = @2
          local.get 0
          i32.load offset=8
          br_if 0 (;@2;)
          i32.const 1
          local.set 1
          local.get 0
          i32.load
          local.tee 9
          local.get 0
          i32.const 4
          i32.add
          i32.load
          local.tee 0
          local.get 7
          local.get 2
          local.get 3
          call $_ZN4core3fmt9Formatter12pad_integral12write_prefix17ha753668ace25ce92E
          br_if 1 (;@1;)
          local.get 9
          local.get 4
          local.get 5
          local.get 0
          i32.load offset=12
          call_indirect (type 4)
          return
        end
        block ;; label = @2
          block ;; label = @3
            block ;; label = @4
              block ;; label = @5
                block ;; label = @6
                  local.get 0
                  i32.const 12
                  i32.add
                  i32.load
                  local.tee 11
                  local.get 8
                  i32.le_u
                  br_if 0 (;@6;)
                  local.get 6
                  i32.const 8
                  i32.and
                  br_if 4 (;@2;)
                  local.get 11
                  local.get 8
                  i32.sub
                  local.tee 9
                  local.set 11
                  i32.const 1
                  local.get 0
                  i32.load8_u offset=32
                  local.tee 1
                  local.get 1
                  i32.const 3
                  i32.eq
                  select
                  i32.const 3
                  i32.and
                  local.tee 1
                  br_table 3 (;@3;) 1 (;@5;) 2 (;@4;) 3 (;@3;)
                end
                i32.const 1
                local.set 1
                local.get 0
                i32.load
                local.tee 9
                local.get 0
                i32.const 4
                i32.add
                i32.load
                local.tee 0
                local.get 7
                local.get 2
                local.get 3
                call $_ZN4core3fmt9Formatter12pad_integral12write_prefix17ha753668ace25ce92E
                br_if 4 (;@1;)
                local.get 9
                local.get 4
                local.get 5
                local.get 0
                i32.load offset=12
                call_indirect (type 4)
                return
              end
              i32.const 0
              local.set 11
              local.get 9
              local.set 1
              br 1 (;@3;)
            end
            local.get 9
            i32.const 1
            i32.shr_u
            local.set 1
            local.get 9
            i32.const 1
            i32.add
            i32.const 1
            i32.shr_u
            local.set 11
          end
          local.get 1
          i32.const 1
          i32.add
          local.set 1
          local.get 0
          i32.const 4
          i32.add
          i32.load
          local.set 10
          local.get 0
          i32.load offset=28
          local.set 9
          local.get 0
          i32.load
          local.set 0
          block ;; label = @3
            loop ;; label = @4
              local.get 1
              i32.const -1
              i32.add
              local.tee 1
              i32.eqz
              br_if 1 (;@3;)
              local.get 0
              local.get 9
              local.get 10
              i32.load offset=16
              call_indirect (type 5)
              i32.eqz
              br_if 0 (;@4;)
            end
            i32.const 1
            return
          end
          i32.const 1
          local.set 1
          local.get 9
          i32.const 1114112
          i32.eq
          br_if 1 (;@1;)
          local.get 0
          local.get 10
          local.get 7
          local.get 2
          local.get 3
          call $_ZN4core3fmt9Formatter12pad_integral12write_prefix17ha753668ace25ce92E
          br_if 1 (;@1;)
          local.get 0
          local.get 4
          local.get 5
          local.get 10
          i32.load offset=12
          call_indirect (type 4)
          br_if 1 (;@1;)
          i32.const 0
          local.set 1
          block ;; label = @3
            loop ;; label = @4
              block ;; label = @5
                local.get 11
                local.get 1
                i32.ne
                br_if 0 (;@5;)
                local.get 11
                local.set 1
                br 2 (;@3;)
              end
              local.get 1
              i32.const 1
              i32.add
              local.set 1
              local.get 0
              local.get 9
              local.get 10
              i32.load offset=16
              call_indirect (type 5)
              i32.eqz
              br_if 0 (;@4;)
            end
            local.get 1
            i32.const -1
            i32.add
            local.set 1
          end
          local.get 1
          local.get 11
          i32.lt_u
          local.set 1
          br 1 (;@1;)
        end
        local.get 0
        i32.load offset=28
        local.set 6
        local.get 0
        i32.const 48
        i32.store offset=28
        local.get 0
        i32.load8_u offset=32
        local.set 12
        i32.const 1
        local.set 1
        local.get 0
        i32.const 1
        i32.store8 offset=32
        local.get 0
        i32.load
        local.tee 9
        local.get 0
        i32.const 4
        i32.add
        i32.load
        local.tee 10
        local.get 7
        local.get 2
        local.get 3
        call $_ZN4core3fmt9Formatter12pad_integral12write_prefix17ha753668ace25ce92E
        br_if 0 (;@1;)
        local.get 11
        local.get 8
        i32.sub
        i32.const 1
        i32.add
        local.set 1
        block ;; label = @2
          loop ;; label = @3
            local.get 1
            i32.const -1
            i32.add
            local.tee 1
            i32.eqz
            br_if 1 (;@2;)
            local.get 9
            i32.const 48
            local.get 10
            i32.load offset=16
            call_indirect (type 5)
            i32.eqz
            br_if 0 (;@3;)
          end
          i32.const 1
          return
        end
        i32.const 1
        local.set 1
        local.get 9
        local.get 4
        local.get 5
        local.get 10
        i32.load offset=12
        call_indirect (type 4)
        br_if 0 (;@1;)
        local.get 0
        local.get 12
        i32.store8 offset=32
        local.get 0
        local.get 6
        i32.store offset=28
        i32.const 0
        return
      end
      local.get 1
    )
    (func $_ZN4core3fmt5Write10write_char17hd5ac30356e52f5abE (;250;) (type 5) (param i32 i32) (result i32)
      (local i32)
      global.get $__stack_pointer
      i32.const 16
      i32.sub
      local.tee 2
      global.set $__stack_pointer
      local.get 2
      i32.const 0
      i32.store offset=12
      block ;; label = @1
        block ;; label = @2
          local.get 1
          i32.const 128
          i32.lt_u
          br_if 0 (;@2;)
          block ;; label = @3
            local.get 1
            i32.const 2048
            i32.lt_u
            br_if 0 (;@3;)
            block ;; label = @4
              local.get 1
              i32.const 65536
              i32.lt_u
              br_if 0 (;@4;)
              local.get 2
              local.get 1
              i32.const 63
              i32.and
              i32.const 128
              i32.or
              i32.store8 offset=15
              local.get 2
              local.get 1
              i32.const 6
              i32.shr_u
              i32.const 63
              i32.and
              i32.const 128
              i32.or
              i32.store8 offset=14
              local.get 2
              local.get 1
              i32.const 12
              i32.shr_u
              i32.const 63
              i32.and
              i32.const 128
              i32.or
              i32.store8 offset=13
              local.get 2
              local.get 1
              i32.const 18
              i32.shr_u
              i32.const 7
              i32.and
              i32.const 240
              i32.or
              i32.store8 offset=12
              i32.const 4
              local.set 1
              br 3 (;@1;)
            end
            local.get 2
            local.get 1
            i32.const 63
            i32.and
            i32.const 128
            i32.or
            i32.store8 offset=14
            local.get 2
            local.get 1
            i32.const 12
            i32.shr_u
            i32.const 224
            i32.or
            i32.store8 offset=12
            local.get 2
            local.get 1
            i32.const 6
            i32.shr_u
            i32.const 63
            i32.and
            i32.const 128
            i32.or
            i32.store8 offset=13
            i32.const 3
            local.set 1
            br 2 (;@1;)
          end
          local.get 2
          local.get 1
          i32.const 63
          i32.and
          i32.const 128
          i32.or
          i32.store8 offset=13
          local.get 2
          local.get 1
          i32.const 6
          i32.shr_u
          i32.const 192
          i32.or
          i32.store8 offset=12
          i32.const 2
          local.set 1
          br 1 (;@1;)
        end
        local.get 2
        local.get 1
        i32.store8 offset=12
        i32.const 1
        local.set 1
      end
      local.get 0
      local.get 2
      i32.const 12
      i32.add
      local.get 1
      call $_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h2e270c010c1a684bE
      local.set 1
      local.get 2
      i32.const 16
      i32.add
      global.set $__stack_pointer
      local.get 1
    )
    (func $_ZN4core3fmt5Write9write_fmt17hbf7fae094015db52E (;251;) (type 5) (param i32 i32) (result i32)
      (local i32)
      global.get $__stack_pointer
      i32.const 32
      i32.sub
      local.tee 2
      global.set $__stack_pointer
      local.get 2
      local.get 0
      i32.store offset=4
      local.get 2
      i32.const 8
      i32.add
      i32.const 16
      i32.add
      local.get 1
      i32.const 16
      i32.add
      i64.load align=4
      i64.store
      local.get 2
      i32.const 8
      i32.add
      i32.const 8
      i32.add
      local.get 1
      i32.const 8
      i32.add
      i64.load align=4
      i64.store
      local.get 2
      local.get 1
      i64.load align=4
      i64.store offset=8
      local.get 2
      i32.const 4
      i32.add
      i32.const 1052524
      local.get 2
      i32.const 8
      i32.add
      call $_ZN4core3fmt5write17h7365630cdee3db2cE
      local.set 1
      local.get 2
      i32.const 32
      i32.add
      global.set $__stack_pointer
      local.get 1
    )
    (func $_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17hb621824e9d8f4daaE (;252;) (type 4) (param i32 i32 i32) (result i32)
      local.get 0
      i32.load
      local.get 1
      local.get 2
      call $_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h2e270c010c1a684bE
    )
    (func $_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h1ade5349912d7315E (;253;) (type 5) (param i32 i32) (result i32)
      (local i32)
      global.get $__stack_pointer
      i32.const 16
      i32.sub
      local.tee 2
      global.set $__stack_pointer
      local.get 0
      i32.load
      local.set 0
      local.get 2
      i32.const 0
      i32.store offset=12
      block ;; label = @1
        block ;; label = @2
          local.get 1
          i32.const 128
          i32.lt_u
          br_if 0 (;@2;)
          block ;; label = @3
            local.get 1
            i32.const 2048
            i32.lt_u
            br_if 0 (;@3;)
            block ;; label = @4
              local.get 1
              i32.const 65536
              i32.lt_u
              br_if 0 (;@4;)
              local.get 2
              local.get 1
              i32.const 63
              i32.and
              i32.const 128
              i32.or
              i32.store8 offset=15
              local.get 2
              local.get 1
              i32.const 6
              i32.shr_u
              i32.const 63
              i32.and
              i32.const 128
              i32.or
              i32.store8 offset=14
              local.get 2
              local.get 1
              i32.const 12
              i32.shr_u
              i32.const 63
              i32.and
              i32.const 128
              i32.or
              i32.store8 offset=13
              local.get 2
              local.get 1
              i32.const 18
              i32.shr_u
              i32.const 7
              i32.and
              i32.const 240
              i32.or
              i32.store8 offset=12
              i32.const 4
              local.set 1
              br 3 (;@1;)
            end
            local.get 2
            local.get 1
            i32.const 63
            i32.and
            i32.const 128
            i32.or
            i32.store8 offset=14
            local.get 2
            local.get 1
            i32.const 12
            i32.shr_u
            i32.const 224
            i32.or
            i32.store8 offset=12
            local.get 2
            local.get 1
            i32.const 6
            i32.shr_u
            i32.const 63
            i32.and
            i32.const 128
            i32.or
            i32.store8 offset=13
            i32.const 3
            local.set 1
            br 2 (;@1;)
          end
          local.get 2
          local.get 1
          i32.const 63
          i32.and
          i32.const 128
          i32.or
          i32.store8 offset=13
          local.get 2
          local.get 1
          i32.const 6
          i32.shr_u
          i32.const 192
          i32.or
          i32.store8 offset=12
          i32.const 2
          local.set 1
          br 1 (;@1;)
        end
        local.get 2
        local.get 1
        i32.store8 offset=12
        i32.const 1
        local.set 1
      end
      local.get 0
      local.get 2
      i32.const 12
      i32.add
      local.get 1
      call $_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h2e270c010c1a684bE
      local.set 1
      local.get 2
      i32.const 16
      i32.add
      global.set $__stack_pointer
      local.get 1
    )
    (func $_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_fmt17h3b5f41a79ea726dfE (;254;) (type 5) (param i32 i32) (result i32)
      (local i32)
      global.get $__stack_pointer
      i32.const 32
      i32.sub
      local.tee 2
      global.set $__stack_pointer
      local.get 2
      local.get 0
      i32.load
      i32.store offset=4
      local.get 2
      i32.const 8
      i32.add
      i32.const 16
      i32.add
      local.get 1
      i32.const 16
      i32.add
      i64.load align=4
      i64.store
      local.get 2
      i32.const 8
      i32.add
      i32.const 8
      i32.add
      local.get 1
      i32.const 8
      i32.add
      i64.load align=4
      i64.store
      local.get 2
      local.get 1
      i64.load align=4
      i64.store offset=8
      local.get 2
      i32.const 4
      i32.add
      i32.const 1052524
      local.get 2
      i32.const 8
      i32.add
      call $_ZN4core3fmt5write17h7365630cdee3db2cE
      local.set 1
      local.get 2
      i32.const 32
      i32.add
      global.set $__stack_pointer
      local.get 1
    )
    (func $_ZN4core3str5count14do_count_chars17h4cdee80687050aefE (;255;) (type 5) (param i32 i32) (result i32)
      (local i32 i32 i32 i32 i32 i32 i32 i32 i32)
      block ;; label = @1
        block ;; label = @2
          local.get 0
          i32.const 3
          i32.add
          i32.const -4
          i32.and
          local.tee 2
          local.get 0
          i32.sub
          local.tee 3
          local.get 1
          i32.gt_u
          br_if 0 (;@2;)
          local.get 3
          i32.const 4
          i32.gt_u
          br_if 0 (;@2;)
          local.get 1
          local.get 3
          i32.sub
          local.tee 4
          i32.const 4
          i32.lt_u
          br_if 0 (;@2;)
          local.get 4
          i32.const 3
          i32.and
          local.set 5
          i32.const 0
          local.set 6
          i32.const 0
          local.set 1
          block ;; label = @3
            local.get 2
            local.get 0
            i32.eq
            br_if 0 (;@3;)
            local.get 3
            i32.const 3
            i32.and
            local.set 7
            block ;; label = @4
              block ;; label = @5
                local.get 2
                local.get 0
                i32.const -1
                i32.xor
                i32.add
                i32.const 3
                i32.ge_u
                br_if 0 (;@5;)
                i32.const 0
                local.set 1
                local.get 0
                local.set 2
                br 1 (;@4;)
              end
              local.get 3
              i32.const -4
              i32.and
              local.set 8
              i32.const 0
              local.set 1
              local.get 0
              local.set 2
              loop ;; label = @5
                local.get 1
                local.get 2
                i32.load8_s
                i32.const -65
                i32.gt_s
                i32.add
                local.get 2
                i32.load8_s offset=1
                i32.const -65
                i32.gt_s
                i32.add
                local.get 2
                i32.load8_s offset=2
                i32.const -65
                i32.gt_s
                i32.add
                local.get 2
                i32.load8_s offset=3
                i32.const -65
                i32.gt_s
                i32.add
                local.set 1
                local.get 2
                i32.const 4
                i32.add
                local.set 2
                local.get 8
                i32.const -4
                i32.add
                local.tee 8
                br_if 0 (;@5;)
              end
            end
            local.get 7
            i32.eqz
            br_if 0 (;@3;)
            loop ;; label = @4
              local.get 1
              local.get 2
              i32.load8_s
              i32.const -65
              i32.gt_s
              i32.add
              local.set 1
              local.get 2
              i32.const 1
              i32.add
              local.set 2
              local.get 7
              i32.const -1
              i32.add
              local.tee 7
              br_if 0 (;@4;)
            end
          end
          local.get 0
          local.get 3
          i32.add
          local.set 0
          block ;; label = @3
            local.get 5
            i32.eqz
            br_if 0 (;@3;)
            local.get 0
            local.get 4
            i32.const -4
            i32.and
            i32.add
            local.tee 2
            i32.load8_s
            i32.const -65
            i32.gt_s
            local.set 6
            local.get 5
            i32.const 1
            i32.eq
            br_if 0 (;@3;)
            local.get 6
            local.get 2
            i32.load8_s offset=1
            i32.const -65
            i32.gt_s
            i32.add
            local.set 6
            local.get 5
            i32.const 2
            i32.eq
            br_if 0 (;@3;)
            local.get 6
            local.get 2
            i32.load8_s offset=2
            i32.const -65
            i32.gt_s
            i32.add
            local.set 6
          end
          local.get 4
          i32.const 2
          i32.shr_u
          local.set 3
          local.get 6
          local.get 1
          i32.add
          local.set 7
          loop ;; label = @3
            local.get 0
            local.set 6
            local.get 3
            i32.eqz
            br_if 2 (;@1;)
            local.get 3
            i32.const 192
            local.get 3
            i32.const 192
            i32.lt_u
            select
            local.tee 4
            i32.const 3
            i32.and
            local.set 5
            local.get 4
            i32.const 2
            i32.shl
            local.set 9
            block ;; label = @4
              block ;; label = @5
                local.get 4
                i32.const 252
                i32.and
                local.tee 10
                br_if 0 (;@5;)
                i32.const 0
                local.set 2
                br 1 (;@4;)
              end
              local.get 6
              local.get 10
              i32.const 2
              i32.shl
              i32.add
              local.set 8
              i32.const 0
              local.set 2
              local.get 6
              local.set 0
              loop ;; label = @5
                local.get 0
                i32.eqz
                br_if 1 (;@4;)
                local.get 0
                i32.const 12
                i32.add
                i32.load
                local.tee 1
                i32.const -1
                i32.xor
                i32.const 7
                i32.shr_u
                local.get 1
                i32.const 6
                i32.shr_u
                i32.or
                i32.const 16843009
                i32.and
                local.get 0
                i32.const 8
                i32.add
                i32.load
                local.tee 1
                i32.const -1
                i32.xor
                i32.const 7
                i32.shr_u
                local.get 1
                i32.const 6
                i32.shr_u
                i32.or
                i32.const 16843009
                i32.and
                local.get 0
                i32.const 4
                i32.add
                i32.load
                local.tee 1
                i32.const -1
                i32.xor
                i32.const 7
                i32.shr_u
                local.get 1
                i32.const 6
                i32.shr_u
                i32.or
                i32.const 16843009
                i32.and
                local.get 0
                i32.load
                local.tee 1
                i32.const -1
                i32.xor
                i32.const 7
                i32.shr_u
                local.get 1
                i32.const 6
                i32.shr_u
                i32.or
                i32.const 16843009
                i32.and
                local.get 2
                i32.add
                i32.add
                i32.add
                i32.add
                local.set 2
                local.get 0
                i32.const 16
                i32.add
                local.tee 0
                local.get 8
                i32.ne
                br_if 0 (;@5;)
              end
            end
            local.get 3
            local.get 4
            i32.sub
            local.set 3
            local.get 6
            local.get 9
            i32.add
            local.set 0
            local.get 2
            i32.const 8
            i32.shr_u
            i32.const 16711935
            i32.and
            local.get 2
            i32.const 16711935
            i32.and
            i32.add
            i32.const 65537
            i32.mul
            i32.const 16
            i32.shr_u
            local.get 7
            i32.add
            local.set 7
            local.get 5
            i32.eqz
            br_if 0 (;@3;)
          end
          block ;; label = @3
            block ;; label = @4
              local.get 6
              br_if 0 (;@4;)
              i32.const 0
              local.set 2
              br 1 (;@3;)
            end
            local.get 6
            local.get 10
            i32.const 2
            i32.shl
            i32.add
            local.set 0
            local.get 5
            i32.const -1
            i32.add
            i32.const 1073741823
            i32.and
            local.tee 2
            i32.const 1
            i32.add
            local.tee 8
            i32.const 3
            i32.and
            local.set 1
            block ;; label = @4
              block ;; label = @5
                local.get 2
                i32.const 3
                i32.ge_u
                br_if 0 (;@5;)
                i32.const 0
                local.set 2
                br 1 (;@4;)
              end
              local.get 8
              i32.const 2147483644
              i32.and
              local.set 8
              i32.const 0
              local.set 2
              loop ;; label = @5
                local.get 0
                i32.const 12
                i32.add
                i32.load
                local.tee 3
                i32.const -1
                i32.xor
                i32.const 7
                i32.shr_u
                local.get 3
                i32.const 6
                i32.shr_u
                i32.or
                i32.const 16843009
                i32.and
                local.get 0
                i32.const 8
                i32.add
                i32.load
                local.tee 3
                i32.const -1
                i32.xor
                i32.const 7
                i32.shr_u
                local.get 3
                i32.const 6
                i32.shr_u
                i32.or
                i32.const 16843009
                i32.and
                local.get 0
                i32.const 4
                i32.add
                i32.load
                local.tee 3
                i32.const -1
                i32.xor
                i32.const 7
                i32.shr_u
                local.get 3
                i32.const 6
                i32.shr_u
                i32.or
                i32.const 16843009
                i32.and
                local.get 0
                i32.load
                local.tee 3
                i32.const -1
                i32.xor
                i32.const 7
                i32.shr_u
                local.get 3
                i32.const 6
                i32.shr_u
                i32.or
                i32.const 16843009
                i32.and
                local.get 2
                i32.add
                i32.add
                i32.add
                i32.add
                local.set 2
                local.get 0
                i32.const 16
                i32.add
                local.set 0
                local.get 8
                i32.const -4
                i32.add
                local.tee 8
                br_if 0 (;@5;)
              end
            end
            local.get 1
            i32.eqz
            br_if 0 (;@3;)
            loop ;; label = @4
              local.get 0
              i32.load
              local.tee 8
              i32.const -1
              i32.xor
              i32.const 7
              i32.shr_u
              local.get 8
              i32.const 6
              i32.shr_u
              i32.or
              i32.const 16843009
              i32.and
              local.get 2
              i32.add
              local.set 2
              local.get 0
              i32.const 4
              i32.add
              local.set 0
              local.get 1
              i32.const -1
              i32.add
              local.tee 1
              br_if 0 (;@4;)
            end
          end
          local.get 2
          i32.const 8
          i32.shr_u
          i32.const 16711935
          i32.and
          local.get 2
          i32.const 16711935
          i32.and
          i32.add
          i32.const 65537
          i32.mul
          i32.const 16
          i32.shr_u
          local.get 7
          i32.add
          return
        end
        block ;; label = @2
          local.get 1
          br_if 0 (;@2;)
          i32.const 0
          return
        end
        local.get 1
        i32.const 3
        i32.and
        local.set 2
        block ;; label = @2
          block ;; label = @3
            local.get 1
            i32.const -1
            i32.add
            i32.const 3
            i32.ge_u
            br_if 0 (;@3;)
            i32.const 0
            local.set 7
            br 1 (;@2;)
          end
          local.get 1
          i32.const -4
          i32.and
          local.set 1
          i32.const 0
          local.set 7
          loop ;; label = @3
            local.get 7
            local.get 0
            i32.load8_s
            i32.const -65
            i32.gt_s
            i32.add
            local.get 0
            i32.load8_s offset=1
            i32.const -65
            i32.gt_s
            i32.add
            local.get 0
            i32.load8_s offset=2
            i32.const -65
            i32.gt_s
            i32.add
            local.get 0
            i32.load8_s offset=3
            i32.const -65
            i32.gt_s
            i32.add
            local.set 7
            local.get 0
            i32.const 4
            i32.add
            local.set 0
            local.get 1
            i32.const -4
            i32.add
            local.tee 1
            br_if 0 (;@3;)
          end
        end
        local.get 2
        i32.eqz
        br_if 0 (;@1;)
        loop ;; label = @2
          local.get 7
          local.get 0
          i32.load8_s
          i32.const -65
          i32.gt_s
          i32.add
          local.set 7
          local.get 0
          i32.const 1
          i32.add
          local.set 0
          local.get 2
          i32.const -1
          i32.add
          local.tee 2
          br_if 0 (;@2;)
        end
      end
      local.get 7
    )
    (func $_ZN4core3fmt9Formatter12pad_integral12write_prefix17ha753668ace25ce92E (;256;) (type 14) (param i32 i32 i32 i32 i32) (result i32)
      (local i32)
      block ;; label = @1
        block ;; label = @2
          block ;; label = @3
            local.get 2
            i32.const 1114112
            i32.eq
            br_if 0 (;@3;)
            i32.const 1
            local.set 5
            local.get 0
            local.get 2
            local.get 1
            i32.load offset=16
            call_indirect (type 5)
            br_if 1 (;@2;)
          end
          local.get 3
          br_if 1 (;@1;)
          i32.const 0
          local.set 5
        end
        local.get 5
        return
      end
      local.get 0
      local.get 3
      local.get 4
      local.get 1
      i32.load offset=12
      call_indirect (type 4)
    )
    (func $_ZN4core3fmt9Formatter9write_fmt17h8770c78158883680E (;257;) (type 5) (param i32 i32) (result i32)
      (local i32 i32)
      global.get $__stack_pointer
      i32.const 32
      i32.sub
      local.tee 2
      global.set $__stack_pointer
      local.get 0
      i32.load offset=4
      local.set 3
      local.get 0
      i32.load
      local.set 0
      local.get 2
      i32.const 8
      i32.add
      i32.const 16
      i32.add
      local.get 1
      i32.const 16
      i32.add
      i64.load align=4
      i64.store
      local.get 2
      i32.const 8
      i32.add
      i32.const 8
      i32.add
      local.get 1
      i32.const 8
      i32.add
      i64.load align=4
      i64.store
      local.get 2
      local.get 1
      i64.load align=4
      i64.store offset=8
      local.get 0
      local.get 3
      local.get 2
      i32.const 8
      i32.add
      call $_ZN4core3fmt5write17h7365630cdee3db2cE
      local.set 1
      local.get 2
      i32.const 32
      i32.add
      global.set $__stack_pointer
      local.get 1
    )
    (func $_ZN4core3fmt9Formatter15debug_lower_hex17h87337c0810a503c8E (;258;) (type 9) (param i32) (result i32)
      local.get 0
      i32.load8_u offset=24
      i32.const 16
      i32.and
      i32.const 4
      i32.shr_u
    )
    (func $_ZN4core3fmt9Formatter15debug_upper_hex17h87a99dafeab8d76eE (;259;) (type 9) (param i32) (result i32)
      local.get 0
      i32.load8_u offset=24
      i32.const 32
      i32.and
      i32.const 5
      i32.shr_u
    )
    (func $_ZN4core3fmt9Formatter26debug_struct_field2_finish17h19a38651216a3aa4E (;260;) (type 16) (param i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32) (result i32)
      (local i32)
      global.get $__stack_pointer
      i32.const 16
      i32.sub
      local.tee 11
      global.set $__stack_pointer
      local.get 0
      i32.load
      local.get 1
      local.get 2
      local.get 0
      i32.load offset=4
      i32.load offset=12
      call_indirect (type 4)
      local.set 2
      local.get 11
      i32.const 0
      i32.store8 offset=13
      local.get 11
      local.get 2
      i32.store8 offset=12
      local.get 11
      local.get 0
      i32.store offset=8
      local.get 11
      i32.const 8
      i32.add
      local.get 3
      local.get 4
      local.get 5
      local.get 6
      call $_ZN4core3fmt8builders11DebugStruct5field17h7eb451c1b307b1faE
      local.get 7
      local.get 8
      local.get 9
      local.get 10
      call $_ZN4core3fmt8builders11DebugStruct5field17h7eb451c1b307b1faE
      local.set 2
      local.get 11
      i32.load8_u offset=12
      local.set 0
      block ;; label = @1
        local.get 11
        i32.load8_u offset=13
        i32.eqz
        br_if 0 (;@1;)
        local.get 0
        i32.const 255
        i32.and
        local.set 1
        i32.const 1
        local.set 0
        local.get 1
        br_if 0 (;@1;)
        block ;; label = @2
          local.get 2
          i32.load
          local.tee 0
          i32.load8_u offset=24
          i32.const 4
          i32.and
          br_if 0 (;@2;)
          local.get 0
          i32.load
          i32.const 1052251
          i32.const 2
          local.get 0
          i32.load offset=4
          i32.load offset=12
          call_indirect (type 4)
          local.set 0
          br 1 (;@1;)
        end
        local.get 0
        i32.load
        i32.const 1052250
        i32.const 1
        local.get 0
        i32.load offset=4
        i32.load offset=12
        call_indirect (type 4)
        local.set 0
      end
      local.get 11
      i32.const 16
      i32.add
      global.set $__stack_pointer
      local.get 0
      i32.const 255
      i32.and
      i32.const 0
      i32.ne
    )
    (func $_ZN4core3fmt9Formatter10debug_list17h229e3aca1c1cdebaE (;261;) (type 3) (param i32 i32)
      (local i32)
      local.get 1
      i32.load
      i32.const 1052258
      i32.const 1
      local.get 1
      i32.load offset=4
      i32.load offset=12
      call_indirect (type 4)
      local.set 2
      local.get 0
      i32.const 0
      i32.store8 offset=5
      local.get 0
      local.get 2
      i32.store8 offset=4
      local.get 0
      local.get 1
      i32.store
    )
    (func $_ZN43_$LT$bool$u20$as$u20$core..fmt..Display$GT$3fmt17hadc0d1234036acceE (;262;) (type 5) (param i32 i32) (result i32)
      block ;; label = @1
        local.get 0
        i32.load8_u
        br_if 0 (;@1;)
        local.get 1
        i32.const 1052552
        i32.const 5
        call $_ZN4core3fmt9Formatter3pad17h0ebf4b187a504171E
        return
      end
      local.get 1
      i32.const 1052548
      i32.const 4
      call $_ZN4core3fmt9Formatter3pad17h0ebf4b187a504171E
    )
    (func $_ZN42_$LT$str$u20$as$u20$core..fmt..Display$GT$3fmt17hfc435e20242f7c7fE (;263;) (type 4) (param i32 i32 i32) (result i32)
      local.get 2
      local.get 0
      local.get 1
      call $_ZN4core3fmt9Formatter3pad17h0ebf4b187a504171E
    )
    (func $_ZN4core5slice5index29slice_start_index_len_fail_rt17h0a9a4130a2ce7d93E (;264;) (type 2) (param i32 i32 i32)
      (local i32)
      global.get $__stack_pointer
      i32.const 48
      i32.sub
      local.tee 3
      global.set $__stack_pointer
      local.get 3
      local.get 1
      i32.store offset=4
      local.get 3
      local.get 0
      i32.store
      local.get 3
      i32.const 8
      i32.add
      i32.const 12
      i32.add
      i32.const 2
      i32.store
      local.get 3
      i32.const 28
      i32.add
      i32.const 2
      i32.store
      local.get 3
      i32.const 32
      i32.add
      i32.const 12
      i32.add
      i32.const 6
      i32.store
      local.get 3
      i32.const 1052660
      i32.store offset=16
      local.get 3
      i32.const 0
      i32.store offset=8
      local.get 3
      i32.const 6
      i32.store offset=36
      local.get 3
      local.get 3
      i32.const 32
      i32.add
      i32.store offset=24
      local.get 3
      local.get 3
      i32.const 4
      i32.add
      i32.store offset=40
      local.get 3
      local.get 3
      i32.store offset=32
      local.get 3
      i32.const 8
      i32.add
      local.get 2
      call $_ZN4core9panicking9panic_fmt17h86214d64a55c1d57E
      unreachable
    )
    (func $_ZN4core3fmt3num3imp51_$LT$impl$u20$core..fmt..Display$u20$for$u20$u8$GT$3fmt17hbc9a71d37153ccf8E (;265;) (type 5) (param i32 i32) (result i32)
      local.get 0
      i64.load8_u
      i32.const 1
      local.get 1
      call $_ZN4core3fmt3num3imp7fmt_u6417h6d919a10f014d51eE
    )
    (func $_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$i8$GT$3fmt17h42265dc17b52598cE (;266;) (type 5) (param i32 i32) (result i32)
      (local i32 i32 i32)
      global.get $__stack_pointer
      i32.const 128
      i32.sub
      local.tee 2
      global.set $__stack_pointer
      local.get 0
      i32.load8_u
      local.set 3
      i32.const 0
      local.set 0
      loop ;; label = @1
        local.get 2
        local.get 0
        i32.add
        i32.const 127
        i32.add
        i32.const 48
        i32.const 55
        local.get 3
        i32.const 15
        i32.and
        local.tee 4
        i32.const 10
        i32.lt_u
        select
        local.get 4
        i32.add
        i32.store8
        local.get 0
        i32.const -1
        i32.add
        local.set 0
        local.get 3
        i32.const 255
        i32.and
        local.tee 4
        i32.const 4
        i32.shr_u
        local.set 3
        local.get 4
        i32.const 15
        i32.gt_u
        br_if 0 (;@1;)
      end
      block ;; label = @1
        local.get 0
        i32.const 128
        i32.add
        local.tee 3
        i32.const 129
        i32.lt_u
        br_if 0 (;@1;)
        local.get 3
        i32.const 128
        i32.const 1052304
        call $_ZN4core5slice5index26slice_start_index_len_fail17hc1badbc4c621eed6E
        unreachable
      end
      local.get 1
      i32.const 1
      i32.const 1052320
      i32.const 2
      local.get 2
      local.get 0
      i32.add
      i32.const 128
      i32.add
      i32.const 0
      local.get 0
      i32.sub
      call $_ZN4core3fmt9Formatter12pad_integral17h682b6fe79568128eE
      local.set 0
      local.get 2
      i32.const 128
      i32.add
      global.set $__stack_pointer
      local.get 0
    )
    (func $_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$i32$GT$3fmt17hf7484c0e3ebedd67E (;267;) (type 5) (param i32 i32) (result i32)
      (local i32 i32 i32)
      global.get $__stack_pointer
      i32.const 128
      i32.sub
      local.tee 2
      global.set $__stack_pointer
      local.get 0
      i32.load
      local.set 0
      i32.const 0
      local.set 3
      loop ;; label = @1
        local.get 2
        local.get 3
        i32.add
        i32.const 127
        i32.add
        i32.const 48
        i32.const 87
        local.get 0
        i32.const 15
        i32.and
        local.tee 4
        i32.const 10
        i32.lt_u
        select
        local.get 4
        i32.add
        i32.store8
        local.get 3
        i32.const -1
        i32.add
        local.set 3
        local.get 0
        i32.const 15
        i32.gt_u
        local.set 4
        local.get 0
        i32.const 4
        i32.shr_u
        local.set 0
        local.get 4
        br_if 0 (;@1;)
      end
      block ;; label = @1
        local.get 3
        i32.const 128
        i32.add
        local.tee 0
        i32.const 129
        i32.lt_u
        br_if 0 (;@1;)
        local.get 0
        i32.const 128
        i32.const 1052304
        call $_ZN4core5slice5index26slice_start_index_len_fail17hc1badbc4c621eed6E
        unreachable
      end
      local.get 1
      i32.const 1
      i32.const 1052320
      i32.const 2
      local.get 2
      local.get 3
      i32.add
      i32.const 128
      i32.add
      i32.const 0
      local.get 3
      i32.sub
      call $_ZN4core3fmt9Formatter12pad_integral17h682b6fe79568128eE
      local.set 0
      local.get 2
      i32.const 128
      i32.add
      global.set $__stack_pointer
      local.get 0
    )
    (func $_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$i8$GT$3fmt17h395face85a74c6e8E (;268;) (type 5) (param i32 i32) (result i32)
      (local i32 i32 i32)
      global.get $__stack_pointer
      i32.const 128
      i32.sub
      local.tee 2
      global.set $__stack_pointer
      local.get 0
      i32.load8_u
      local.set 3
      i32.const 0
      local.set 0
      loop ;; label = @1
        local.get 2
        local.get 0
        i32.add
        i32.const 127
        i32.add
        i32.const 48
        i32.const 87
        local.get 3
        i32.const 15
        i32.and
        local.tee 4
        i32.const 10
        i32.lt_u
        select
        local.get 4
        i32.add
        i32.store8
        local.get 0
        i32.const -1
        i32.add
        local.set 0
        local.get 3
        i32.const 255
        i32.and
        local.tee 4
        i32.const 4
        i32.shr_u
        local.set 3
        local.get 4
        i32.const 15
        i32.gt_u
        br_if 0 (;@1;)
      end
      block ;; label = @1
        local.get 0
        i32.const 128
        i32.add
        local.tee 3
        i32.const 129
        i32.lt_u
        br_if 0 (;@1;)
        local.get 3
        i32.const 128
        i32.const 1052304
        call $_ZN4core5slice5index26slice_start_index_len_fail17hc1badbc4c621eed6E
        unreachable
      end
      local.get 1
      i32.const 1
      i32.const 1052320
      i32.const 2
      local.get 2
      local.get 0
      i32.add
      i32.const 128
      i32.add
      i32.const 0
      local.get 0
      i32.sub
      call $_ZN4core3fmt9Formatter12pad_integral17h682b6fe79568128eE
      local.set 0
      local.get 2
      i32.const 128
      i32.add
      global.set $__stack_pointer
      local.get 0
    )
    (func $_ZN4core3fmt3num49_$LT$impl$u20$core..fmt..Debug$u20$for$u20$u8$GT$3fmt17haef1d416362ff582E (;269;) (type 5) (param i32 i32) (result i32)
      (local i32 i32 i32)
      global.get $__stack_pointer
      i32.const 128
      i32.sub
      local.tee 2
      global.set $__stack_pointer
      block ;; label = @1
        block ;; label = @2
          block ;; label = @3
            block ;; label = @4
              block ;; label = @5
                local.get 1
                i32.load offset=24
                local.tee 3
                i32.const 16
                i32.and
                br_if 0 (;@5;)
                local.get 3
                i32.const 32
                i32.and
                br_if 1 (;@4;)
                local.get 0
                i64.extend_i32_u
                i64.const 255
                i64.and
                i32.const 1
                local.get 1
                call $_ZN4core3fmt3num3imp7fmt_u6417h6d919a10f014d51eE
                local.set 0
                br 4 (;@1;)
              end
              i32.const 0
              local.set 3
              loop ;; label = @5
                local.get 2
                local.get 3
                i32.add
                i32.const 127
                i32.add
                i32.const 48
                i32.const 87
                local.get 0
                i32.const 15
                i32.and
                local.tee 4
                i32.const 10
                i32.lt_u
                select
                local.get 4
                i32.add
                i32.store8
                local.get 3
                i32.const -1
                i32.add
                local.set 3
                local.get 0
                i32.const 255
                i32.and
                local.tee 4
                i32.const 4
                i32.shr_u
                local.set 0
                local.get 4
                i32.const 15
                i32.gt_u
                br_if 0 (;@5;)
              end
              local.get 3
              i32.const 128
              i32.add
              local.tee 0
              i32.const 129
              i32.ge_u
              br_if 1 (;@3;)
              local.get 1
              i32.const 1
              i32.const 1052320
              i32.const 2
              local.get 2
              local.get 3
              i32.add
              i32.const 128
              i32.add
              i32.const 0
              local.get 3
              i32.sub
              call $_ZN4core3fmt9Formatter12pad_integral17h682b6fe79568128eE
              local.set 0
              br 3 (;@1;)
            end
            i32.const 0
            local.set 3
            loop ;; label = @4
              local.get 2
              local.get 3
              i32.add
              i32.const 127
              i32.add
              i32.const 48
              i32.const 55
              local.get 0
              i32.const 15
              i32.and
              local.tee 4
              i32.const 10
              i32.lt_u
              select
              local.get 4
              i32.add
              i32.store8
              local.get 3
              i32.const -1
              i32.add
              local.set 3
              local.get 0
              i32.const 255
              i32.and
              local.tee 4
              i32.const 4
              i32.shr_u
              local.set 0
              local.get 4
              i32.const 15
              i32.gt_u
              br_if 0 (;@4;)
            end
            local.get 3
            i32.const 128
            i32.add
            local.tee 0
            i32.const 129
            i32.ge_u
            br_if 1 (;@2;)
            local.get 1
            i32.const 1
            i32.const 1052320
            i32.const 2
            local.get 2
            local.get 3
            i32.add
            i32.const 128
            i32.add
            i32.const 0
            local.get 3
            i32.sub
            call $_ZN4core3fmt9Formatter12pad_integral17h682b6fe79568128eE
            local.set 0
            br 2 (;@1;)
          end
          local.get 0
          i32.const 128
          i32.const 1052304
          call $_ZN4core5slice5index26slice_start_index_len_fail17hc1badbc4c621eed6E
          unreachable
        end
        local.get 0
        i32.const 128
        i32.const 1052304
        call $_ZN4core5slice5index26slice_start_index_len_fail17hc1badbc4c621eed6E
        unreachable
      end
      local.get 2
      i32.const 128
      i32.add
      global.set $__stack_pointer
      local.get 0
    )
    (func $_ZN4core3fmt3num3imp7fmt_u6417h6d919a10f014d51eE (;270;) (type 17) (param i64 i32 i32) (result i32)
      (local i32 i32 i64 i32 i32 i32)
      global.get $__stack_pointer
      i32.const 48
      i32.sub
      local.tee 3
      global.set $__stack_pointer
      i32.const 39
      local.set 4
      block ;; label = @1
        block ;; label = @2
          local.get 0
          i64.const 10000
          i64.ge_u
          br_if 0 (;@2;)
          local.get 0
          local.set 5
          br 1 (;@1;)
        end
        i32.const 39
        local.set 4
        loop ;; label = @2
          local.get 3
          i32.const 9
          i32.add
          local.get 4
          i32.add
          local.tee 6
          i32.const -4
          i32.add
          local.get 0
          local.get 0
          i64.const 10000
          i64.div_u
          local.tee 5
          i64.const 10000
          i64.mul
          i64.sub
          i32.wrap_i64
          local.tee 7
          i32.const 65535
          i32.and
          i32.const 100
          i32.div_u
          local.tee 8
          i32.const 1
          i32.shl
          i32.const 1052322
          i32.add
          i32.load16_u align=1
          i32.store16 align=1
          local.get 6
          i32.const -2
          i32.add
          local.get 7
          local.get 8
          i32.const 100
          i32.mul
          i32.sub
          i32.const 65535
          i32.and
          i32.const 1
          i32.shl
          i32.const 1052322
          i32.add
          i32.load16_u align=1
          i32.store16 align=1
          local.get 4
          i32.const -4
          i32.add
          local.set 4
          local.get 0
          i64.const 99999999
          i64.gt_u
          local.set 6
          local.get 5
          local.set 0
          local.get 6
          br_if 0 (;@2;)
        end
      end
      block ;; label = @1
        local.get 5
        i32.wrap_i64
        local.tee 6
        i32.const 99
        i32.le_u
        br_if 0 (;@1;)
        local.get 3
        i32.const 9
        i32.add
        local.get 4
        i32.const -2
        i32.add
        local.tee 4
        i32.add
        local.get 5
        i32.wrap_i64
        local.tee 6
        local.get 6
        i32.const 65535
        i32.and
        i32.const 100
        i32.div_u
        local.tee 6
        i32.const 100
        i32.mul
        i32.sub
        i32.const 65535
        i32.and
        i32.const 1
        i32.shl
        i32.const 1052322
        i32.add
        i32.load16_u align=1
        i32.store16 align=1
      end
      block ;; label = @1
        block ;; label = @2
          local.get 6
          i32.const 10
          i32.lt_u
          br_if 0 (;@2;)
          local.get 3
          i32.const 9
          i32.add
          local.get 4
          i32.const -2
          i32.add
          local.tee 4
          i32.add
          local.get 6
          i32.const 1
          i32.shl
          i32.const 1052322
          i32.add
          i32.load16_u align=1
          i32.store16 align=1
          br 1 (;@1;)
        end
        local.get 3
        i32.const 9
        i32.add
        local.get 4
        i32.const -1
        i32.add
        local.tee 4
        i32.add
        local.get 6
        i32.const 48
        i32.add
        i32.store8
      end
      local.get 2
      local.get 1
      i32.const 1051964
      i32.const 0
      local.get 3
      i32.const 9
      i32.add
      local.get 4
      i32.add
      i32.const 39
      local.get 4
      i32.sub
      call $_ZN4core3fmt9Formatter12pad_integral17h682b6fe79568128eE
      local.set 4
      local.get 3
      i32.const 48
      i32.add
      global.set $__stack_pointer
      local.get 4
    )
    (func $_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$i32$GT$3fmt17h4ea068d30a37770fE (;271;) (type 5) (param i32 i32) (result i32)
      (local i32 i32 i32)
      global.get $__stack_pointer
      i32.const 128
      i32.sub
      local.tee 2
      global.set $__stack_pointer
      local.get 0
      i32.load
      local.set 0
      i32.const 0
      local.set 3
      loop ;; label = @1
        local.get 2
        local.get 3
        i32.add
        i32.const 127
        i32.add
        i32.const 48
        i32.const 55
        local.get 0
        i32.const 15
        i32.and
        local.tee 4
        i32.const 10
        i32.lt_u
        select
        local.get 4
        i32.add
        i32.store8
        local.get 3
        i32.const -1
        i32.add
        local.set 3
        local.get 0
        i32.const 15
        i32.gt_u
        local.set 4
        local.get 0
        i32.const 4
        i32.shr_u
        local.set 0
        local.get 4
        br_if 0 (;@1;)
      end
      block ;; label = @1
        local.get 3
        i32.const 128
        i32.add
        local.tee 0
        i32.const 129
        i32.lt_u
        br_if 0 (;@1;)
        local.get 0
        i32.const 128
        i32.const 1052304
        call $_ZN4core5slice5index26slice_start_index_len_fail17hc1badbc4c621eed6E
        unreachable
      end
      local.get 1
      i32.const 1
      i32.const 1052320
      i32.const 2
      local.get 2
      local.get 3
      i32.add
      i32.const 128
      i32.add
      i32.const 0
      local.get 3
      i32.sub
      call $_ZN4core3fmt9Formatter12pad_integral17h682b6fe79568128eE
      local.set 0
      local.get 2
      i32.const 128
      i32.add
      global.set $__stack_pointer
      local.get 0
    )
    (func $_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h615874cacc07778eE (;272;) (type 5) (param i32 i32) (result i32)
      local.get 0
      i32.load
      local.get 1
      call $_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$u32$GT$3fmt17hcc288a85adfcec3fE
    )
    (func $_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h961101d0d53d0c87E (;273;) (type 5) (param i32 i32) (result i32)
      (local i32 i32)
      global.get $__stack_pointer
      i32.const 32
      i32.sub
      local.tee 2
      global.set $__stack_pointer
      block ;; label = @1
        block ;; label = @2
          local.get 0
          i32.load
          local.tee 3
          i32.load8_u
          br_if 0 (;@2;)
          local.get 1
          i32.load
          i32.const 1052936
          i32.const 4
          local.get 1
          i32.load offset=4
          i32.load offset=12
          call_indirect (type 4)
          local.set 1
          br 1 (;@1;)
        end
        i32.const 1
        local.set 0
        local.get 2
        local.get 3
        i32.const 1
        i32.add
        i32.store offset=12
        local.get 2
        local.get 1
        i32.load
        i32.const 1052932
        i32.const 4
        local.get 1
        i32.load offset=4
        i32.load offset=12
        call_indirect (type 4)
        i32.store8 offset=24
        local.get 2
        local.get 1
        i32.store offset=20
        local.get 2
        i32.const 0
        i32.store8 offset=25
        local.get 2
        i32.const 0
        i32.store offset=16
        local.get 2
        i32.const 16
        i32.add
        local.get 2
        i32.const 12
        i32.add
        i32.const 1052260
        call $_ZN4core3fmt8builders10DebugTuple5field17hcda8eb4b057b8cecE
        local.set 1
        local.get 2
        i32.load8_u offset=24
        local.set 3
        block ;; label = @2
          block ;; label = @3
            local.get 1
            i32.load
            local.tee 1
            br_if 0 (;@3;)
            local.get 3
            local.set 0
            br 1 (;@2;)
          end
          local.get 3
          i32.const 255
          i32.and
          br_if 0 (;@2;)
          local.get 2
          i32.load offset=20
          local.set 3
          block ;; label = @3
            local.get 1
            i32.const 1
            i32.ne
            br_if 0 (;@3;)
            local.get 2
            i32.load8_u offset=25
            i32.const 255
            i32.and
            i32.eqz
            br_if 0 (;@3;)
            local.get 3
            i32.load8_u offset=24
            i32.const 4
            i32.and
            br_if 0 (;@3;)
            i32.const 1
            local.set 0
            local.get 3
            i32.load
            i32.const 1052256
            i32.const 1
            local.get 3
            i32.load offset=4
            i32.load offset=12
            call_indirect (type 4)
            br_if 1 (;@2;)
          end
          local.get 3
          i32.load
          i32.const 1051964
          i32.const 1
          local.get 3
          i32.load offset=4
          i32.load offset=12
          call_indirect (type 4)
          local.set 0
        end
        local.get 0
        i32.const 255
        i32.and
        i32.const 0
        i32.ne
        local.set 1
      end
      local.get 2
      i32.const 32
      i32.add
      global.set $__stack_pointer
      local.get 1
    )
    (func $_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hd4b834de1923474fE (;274;) (type 5) (param i32 i32) (result i32)
      local.get 0
      i32.load
      i32.load8_u
      local.get 1
      call $_ZN4core3fmt3num49_$LT$impl$u20$core..fmt..Debug$u20$for$u20$u8$GT$3fmt17haef1d416362ff582E
    )
    (func $_ZN64_$LT$core..str..error..Utf8Error$u20$as$u20$core..fmt..Debug$GT$3fmt17h62c812984eae65c6E (;275;) (type 5) (param i32 i32) (result i32)
      (local i32 i32)
      global.get $__stack_pointer
      i32.const 16
      i32.sub
      local.tee 2
      global.set $__stack_pointer
      local.get 2
      local.get 0
      i32.store
      local.get 2
      local.get 0
      i32.const 4
      i32.add
      i32.store offset=4
      local.get 1
      i32.load
      i32.const 1052956
      i32.const 9
      local.get 1
      i32.load offset=4
      i32.load offset=12
      call_indirect (type 4)
      local.set 0
      local.get 2
      i32.const 0
      i32.store8 offset=13
      local.get 2
      local.get 0
      i32.store8 offset=12
      local.get 2
      local.get 1
      i32.store offset=8
      local.get 2
      i32.const 8
      i32.add
      i32.const 1052965
      i32.const 11
      local.get 2
      i32.const 1052940
      call $_ZN4core3fmt8builders11DebugStruct5field17h7eb451c1b307b1faE
      i32.const 1052976
      i32.const 9
      local.get 2
      i32.const 4
      i32.add
      i32.const 1052988
      call $_ZN4core3fmt8builders11DebugStruct5field17h7eb451c1b307b1faE
      local.set 0
      local.get 2
      i32.load8_u offset=12
      local.set 1
      block ;; label = @1
        local.get 2
        i32.load8_u offset=13
        i32.eqz
        br_if 0 (;@1;)
        local.get 1
        i32.const 255
        i32.and
        local.set 3
        i32.const 1
        local.set 1
        local.get 3
        br_if 0 (;@1;)
        block ;; label = @2
          local.get 0
          i32.load
          local.tee 1
          i32.load8_u offset=24
          i32.const 4
          i32.and
          br_if 0 (;@2;)
          local.get 1
          i32.load
          i32.const 1052251
          i32.const 2
          local.get 1
          i32.load offset=4
          i32.load offset=12
          call_indirect (type 4)
          local.set 1
          br 1 (;@1;)
        end
        local.get 1
        i32.load
        i32.const 1052250
        i32.const 1
        local.get 1
        i32.load offset=4
        i32.load offset=12
        call_indirect (type 4)
        local.set 1
      end
      local.get 2
      i32.const 16
      i32.add
      global.set $__stack_pointer
      local.get 1
      i32.const 255
      i32.and
      i32.const 0
      i32.ne
    )
    (func $_ZN69_$LT$core..alloc..layout..LayoutError$u20$as$u20$core..fmt..Debug$GT$3fmt17h0f47d1843e0f8065E (;276;) (type 5) (param i32 i32) (result i32)
      local.get 1
      i32.load
      i32.const 1053004
      i32.const 11
      local.get 1
      i32.load offset=4
      i32.load offset=12
      call_indirect (type 4)
    )
    (table (;0;) 75 75 funcref)
    (memory (;0;) 17)
    (global $__stack_pointer (;0;) (mut i32) i32.const 1048576)
    (export "memory" (memory 0))
    (export "gen-response" (func $gen-response))
    (export "cabi_post_gen-response" (func $cabi_post_gen-response))
    (export "cabi_realloc" (func $cabi_realloc))
    (elem (;0;) (i32.const 1) func $_ZN4core3ptr49drop_in_place$LT$alloc..string..FromUtf8Error$GT$17hf64261d96c034e41E $_ZN65_$LT$alloc..string..FromUtf8Error$u20$as$u20$core..fmt..Debug$GT$3fmt17h67b0f9c60ec55d75E $_ZN4core3ptr30drop_in_place$LT$$RF$usize$GT$17hf1d9610e0783d91dE $_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17ha6cdf156894842d9E $_ZN91_$LT$std..sys_common..backtrace.._print..DisplayBacktrace$u20$as$u20$core..fmt..Display$GT$3fmt17h0c2737a3e28cbab8E $_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17h094d0608d5797a86E $_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h49d2fed3412d8364E $_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17hedb2065737f3fde5E $_ZN73_$LT$core..panic..panic_info..PanicInfo$u20$as$u20$core..fmt..Display$GT$3fmt17h1fbf0b746bacd1cfE $_ZN59_$LT$core..fmt..Arguments$u20$as$u20$core..fmt..Display$GT$3fmt17he29b6fddec732b8fE $_ZN3std5alloc24default_alloc_error_hook17hf9fc10e82bf046f4E $_ZN4core3ptr100drop_in_place$LT$$RF$mut$u20$std..io..Write..write_fmt..Adapter$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$17h349c8c5d7377f4e7E $_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17hc164a28e775488b6E $_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17hf30391acb63dc78cE $_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_fmt17h21b5c32e364029c5E $_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h60163d5878dbcf43E $_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17ha261b6e3307b3bdcE $_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_fmt17hfae38d004ae9eed9E $_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17he9dd83d1d6dfd198E $_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17hb4067b84d41cee29E $_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_fmt17he9c5ca99d3c7b286E $_ZN63_$LT$core..cell..BorrowMutError$u20$as$u20$core..fmt..Debug$GT$3fmt17h78ef429b4963ff03E $_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h5160b48ccc48314aE $_ZN4core3ptr88drop_in_place$LT$std..io..Write..write_fmt..Adapter$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$17h6b1cf27555d6cbb4E $_ZN80_$LT$std..io..Write..write_fmt..Adapter$LT$T$GT$$u20$as$u20$core..fmt..Write$GT$9write_str17h21be1a18f27a535cE $_ZN4core3fmt5Write10write_char17hd300a41da9ed30d9E $_ZN4core3fmt5Write9write_fmt17h92fe164063206e0dE $_ZN80_$LT$std..io..Write..write_fmt..Adapter$LT$T$GT$$u20$as$u20$core..fmt..Write$GT$9write_str17h87277678b379804cE $_ZN4core3fmt5Write10write_char17hee67041dd0281dafE $_ZN4core3fmt5Write9write_fmt17h233446b54f828e69E $_ZN64_$LT$std..sys..wasi..stdio..Stderr$u20$as$u20$std..io..Write$GT$5write17hf83e706dcf4ad1dbE $_ZN64_$LT$std..sys..wasi..stdio..Stderr$u20$as$u20$std..io..Write$GT$14write_vectored17h0cb15814ac734b1eE $_ZN64_$LT$std..sys..wasi..stdio..Stderr$u20$as$u20$std..io..Write$GT$17is_write_vectored17hda7eb5785716af6dE $_ZN64_$LT$std..sys..wasi..stdio..Stderr$u20$as$u20$std..io..Write$GT$5flush17h99e626e7a1a187fcE $_ZN3std2io5Write9write_all17h6a2df35d231059edE $_ZN3std2io5Write18write_all_vectored17h19e61a36cb3d6d91E $_ZN3std2io5Write9write_fmt17h0af290cbcfa413c3E $_ZN4core3ptr205drop_in_place$LT$$LT$alloc..boxed..Box$LT$dyn$u20$core..error..Error$u2b$core..marker..Send$u2b$core..marker..Sync$GT$$u20$as$u20$core..convert..From$LT$alloc..string..String$GT$$GT$..from..StringError$GT$17h8c01aac05db91130E $_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$5write17h3bbc92ac2094c10eE $_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$14write_vectored17hb929fc95492cbc3fE $_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$17is_write_vectored17ha477b2335c60d28cE $_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$5flush17h7e1cdbe1a33e1227E $_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17h18a07051beee1ee4E $_ZN3std2io5Write18write_all_vectored17h29dfa6af2fdd77d1E $_ZN3std2io5Write9write_fmt17h0676ae775d41bea9E $_ZN36_$LT$T$u20$as$u20$core..any..Any$GT$7type_id17h13f4b085b8aca05bE $_ZN36_$LT$T$u20$as$u20$core..any..Any$GT$7type_id17h3f02bc54c3459368E $_ZN4core3ptr70drop_in_place$LT$std..panicking..begin_panic_handler..PanicPayload$GT$17hf1533a74c6311b13E $_ZN90_$LT$std..panicking..begin_panic_handler..PanicPayload$u20$as$u20$core..panic..BoxMeUp$GT$8take_box17h961e0a3d1cf878bbE $_ZN90_$LT$std..panicking..begin_panic_handler..PanicPayload$u20$as$u20$core..panic..BoxMeUp$GT$3get17h00f4944f4bc98927E $_ZN93_$LT$std..panicking..begin_panic_handler..StrPanicPayload$u20$as$u20$core..panic..BoxMeUp$GT$8take_box17hd06d90df68e79323E $_ZN93_$LT$std..panicking..begin_panic_handler..StrPanicPayload$u20$as$u20$core..panic..BoxMeUp$GT$3get17hf82b269cd966afcaE $_ZN36_$LT$T$u20$as$u20$core..any..Any$GT$7type_id17h1399d2823d8ad95eE $_ZN4core3ptr27drop_in_place$LT$$RF$u8$GT$17h38ec4773e683853eE $_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h89f821ce0b91942fE $_ZN69_$LT$core..alloc..layout..LayoutError$u20$as$u20$core..fmt..Debug$GT$3fmt17h0f47d1843e0f8065E $_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h0055595d4a41ccbeE $_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h006e97bbc13f2ee8E $_ZN4core3ops8function6FnOnce9call_once17hc909775333f03a72E $_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h47f7c08f9aa28946E $_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17hd4ab2f78c459e101E $_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h064daa430d5481efE $_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hd9f442c0e72bf319E $_ZN4core3ptr102drop_in_place$LT$$RF$core..iter..adapters..copied..Copied$LT$core..slice..iter..Iter$LT$u8$GT$$GT$$GT$17hbcae9dac05562343E $_ZN36_$LT$T$u20$as$u20$core..any..Any$GT$7type_id17hf4f7f09bb7463010E $_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h2e270c010c1a684bE $_ZN4core3fmt5Write10write_char17hd5ac30356e52f5abE $_ZN4core3fmt5Write9write_fmt17hbf7fae094015db52E $_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hd4b834de1923474fE $_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17hb621824e9d8f4daaE $_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h1ade5349912d7315E $_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_fmt17h3b5f41a79ea726dfE $_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h615874cacc07778eE $_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h961101d0d53d0c87E)
    (data (;0;) (i32.const 1048576) "guest/src/lib.rs\00\00\10\00\10\00\00\00\01\00\00\00\01\00\00\00attempt to add with overflowcalled `Result::unwrap()` on an `Err` value\00\01\00\00\00\14\00\00\00\04\00\00\00\02\00\00\00/rustc/2c8cc343237b8f7d5a3c3703e3a87f2eb2c54a74/library/core/src/alloc/layout.rsx\00\10\00P\00\00\00\c4\01\00\00)\00\00\00\00\00\00\00\00\00\00\00attempt to divide by zeroTried to shrink to a larger capacity\00\00\00\f9\00\10\00$\00\00\00/rustc/2c8cc343237b8f7d5a3c3703e3a87f2eb2c54a74/library/alloc/src/raw_vec.rs(\01\10\00L\00\00\00\aa\01\00\00\09\00\00\00guest/src/lib.rs\84\01\10\00\10\00\00\00\01\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00attempt to add with overflowinvalid args\cc\01\10\00\0c\00\00\00/rustc/2c8cc343237b8f7d5a3c3703e3a87f2eb2c54a74/library/core/src/fmt/mod.rs\00\e0\01\10\00K\00\00\00\91\01\00\00\0d\00\00\00assertion failed: 0 < pointee_size && pointee_size <= isize::MAX as usize/rustc/2c8cc343237b8f7d5a3c3703e3a87f2eb2c54a74/library/core/src/ptr/const_ptr.rs\00\00\85\02\10\00Q\00\00\00&\03\00\00\09\00\00\00invalid args\e8\02\10\00\0c\00\00\00/rustc/2c8cc343237b8f7d5a3c3703e3a87f2eb2c54a74/library/core/src/fmt/mod.rs\00\fc\02\10\00K\00\00\00\91\01\00\00\0d\00\00\00\03\00\00\00\04\00\00\00\04\00\00\00\04\00\00\00\00\00\00\00non-zero old_len requires non-zero new_len!\00l\03\10\00+\00\00\00/home/aobatuv/.cargo/git/checkouts/wit-bindgen-f98ccff846621481/7ab30c4/crates/guest-rust/src/lib.rs\a0\03\10\00d\00\00\00A\00\00\00\0d\00\00\00\0c\00\00\00\04\00\00\00\04\00\00\00\0d\00\00\00\0e\00\00\00\0f\00\00\00\0c\00\00\00\04\00\00\00\04\00\00\00\10\00\00\00\11\00\00\00\12\00\00\00\0c\00\00\00\04\00\00\00\04\00\00\00\13\00\00\00\14\00\00\00\15\00\00\00already borrowed\0c\00\00\00\00\00\00\00\01\00\00\00\16\00\00\00\00\00\00\00\0c\00\00\00\04\00\00\00\04\00\00\00\17\00\00\00called `Option::unwrap()` on a `None` valueinternal error: entered unreachable codefatal runtime error: \0a\00\00\00\e3\04\10\00\15\00\00\00\f8\04\10\00\01\00\00\00library/std/src/thread/mod.rsfailed to generate unique thread ID: bitspace exhausted)\05\10\007\00\00\00\0c\05\10\00\1d\00\00\00]\04\00\00\0d\00\00\00RUST_BACKTRACE\00\00\5c\04\10\00\00\00\00\00library/std/src/io/mod.rs\00\00\00\90\05\10\00\19\00\00\00$\05\00\00\16\00\00\00advancing io slices beyond their length\00\bc\05\10\00'\00\00\00\90\05\10\00\19\00\00\00&\05\00\00\0d\00\00\00\90\05\10\00\19\00\00\00\0d\06\00\00!\00\00\00failed to write whole buffer\0c\06\10\00\1c\00\00\00\17\00\00\00\18\00\00\00\0c\00\00\00\04\00\00\00\19\00\00\00\1a\00\00\00\1b\00\00\00formatter error\00L\06\10\00\0f\00\00\00(\00\00\00\18\00\00\00\0c\00\00\00\04\00\00\00\1c\00\00\00\1d\00\00\00\1e\00\00\00library/std/src/panic.rs\80\06\10\00\18\00\00\00\f3\00\00\00\12\00\00\00file name contained an unexpected NUL byte\00\00\a8\06\10\00*\00\00\00\14\00\00\00\02\00\00\00\d4\06\10\00stack backtrace:\0a\00\00\00\e8\06\10\00\11\00\00\00note: Some details are omitted, run with `RUST_BACKTRACE=full` for a verbose backtrace.\0a\04\07\10\00X\00\00\00library/std/src/sys_common/thread_info.rs\00\00\00d\07\10\00)\00\00\00\16\00\00\003\00\00\00memory allocation of  bytes failed\00\00\a0\07\10\00\15\00\00\00\b5\07\10\00\0d\00\00\00library/std/src/alloc.rs\d4\07\10\00\18\00\00\00U\01\00\00\09\00\00\00 bytes failed\0a\00\00\a0\07\10\00\15\00\00\00\fc\07\10\00\0e\00\00\00library/std/src/panicking.rsBox<dyn Any><unnamed>\00\00\00\0c\00\00\00\00\00\00\00\01\00\00\00\1f\00\00\00 \00\00\00!\00\00\00\22\00\00\00#\00\00\00$\00\00\00%\00\00\00&\00\00\00\0c\00\00\00\04\00\00\00'\00\00\00(\00\00\00)\00\00\00*\00\00\00+\00\00\00,\00\00\00-\00\00\00\1c\08\10\00\1c\00\00\00\f5\00\00\00$\00\00\00thread '' panicked at '', \00\00\b0\08\10\00\08\00\00\00\b8\08\10\00\0f\00\00\00\c7\08\10\00\03\00\00\00\f8\04\10\00\01\00\00\00note: run with `RUST_BACKTRACE=1` environment variable to display a backtrace\0a\00\00\ec\08\10\00N\00\00\00\1c\08\10\00\1c\00\00\00>\02\00\00\1e\00\00\00\1c\08\10\00\1c\00\00\00=\02\00\00\1f\00\00\00&\00\00\00\0c\00\00\00\04\00\00\00.\00\00\00\0c\00\00\00\08\00\00\00\04\00\00\00/\00\00\000\00\00\00\10\00\00\00\04\00\00\001\00\00\002\00\00\00\0c\00\00\00\08\00\00\00\04\00\00\003\00\00\004\00\00\00thread panicked while processing panic. aborting.\0a\00\00\ac\09\10\002\00\00\00\0c\00\00\00\00\00\00\00\01\00\00\005\00\00\00\0apanicked after panic::always_abort(), aborting.\0a\00\00\00\5c\04\10\00\00\00\00\00\f8\09\10\001\00\00\00thread caused non-unwinding panic. aborting.\0a\00\00\00<\0a\10\00-\00\00\00thread panicked while panicking. aborting.\0a\00t\0a\10\00+\00\00\00failed to initiate panic, error \a8\0a\10\00 \00\00\00advancing IoSlice beyond its length\00\d0\0a\10\00#\00\00\00library/std/src/sys/wasi/io.rs\00\00\fc\0a\10\00\1e\00\00\00\17\00\00\00\0d\00\00\00cannot recursively acquire mutex,\0b\10\00 \00\00\00library/std/src/sys/wasi/../unsupported/locks/mutex.rs\00\00T\0b\10\006\00\00\00\14\00\00\00\09\00\00\00rwlock locked for writing\00\00\00\9c\0b\10\00\19\00\00\00\0e\00\0f\00?\00\02\00@\005\00\0d\00\04\00\03\00,\00\1b\00\1c\00I\00\14\00\06\004\000\00/\006\00\00\00\04\00\00\00\04\00\00\007\00\00\00library/alloc/src/raw_vec.rscapacity overflow\00\00\00\10\0c\10\00\11\00\00\00\f4\0b\10\00\1c\00\00\00\06\02\00\00\05\00\00\00called `Option::unwrap()` on a `None` valuelibrary/alloc/src/ffi/c_str.rs\00\00\00g\0c\10\00\1e\00\00\00\1b\01\00\007\00\00\00called `Result::unwrap()` on an `Err` value\006\00\00\00\00\00\00\00\01\00\00\008\00\00\00library/alloc/src/sync.rs\00\00\00\d4\0c\10\00\19\00\00\00V\01\00\002\00\00\006\00\00\00\04\00\00\00\04\00\00\009\00\00\00byteserror\00\006\00\00\00\04\00\00\00\04\00\00\00:\00\00\00FromUtf8Error\00\00\00)BorrowMutError:<\0d\10\00\00\00\00\00K\0d\10\00\01\00\00\00K\0d\10\00\01\00\00\00panicked at '', p\0d\10\00\01\00\00\00q\0d\10\00\03\00\00\00@\00\00\00\00\00\00\00\01\00\00\00A\00\00\00matches!===assertion failed: `(left  right)`\0a  left: ``,\0a right: ``: \00\00\00\9f\0d\10\00\19\00\00\00\b8\0d\10\00\12\00\00\00\ca\0d\10\00\0c\00\00\00\d6\0d\10\00\03\00\00\00`\00\00\00\9f\0d\10\00\19\00\00\00\b8\0d\10\00\12\00\00\00\ca\0d\10\00\0c\00\00\00\fc\0d\10\00\01\00\00\00: \00\00<\0d\10\00\00\00\00\00 \0e\10\00\02\00\00\00@\00\00\00\0c\00\00\00\04\00\00\00B\00\00\00C\00\00\00D\00\00\00     {\0a,\0a,  { } }(\0a(,\0a[\00@\00\00\00\04\00\00\00\04\00\00\00E\00\00\00]library/core/src/fmt/num.rsu\0e\10\00\1b\00\00\00e\00\00\00\14\00\00\000x00010203040506070809101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899\00\00@\00\00\00\04\00\00\00\04\00\00\00F\00\00\00G\00\00\00H\00\00\00truefalselibrary/core/src/slice/memchr.rs\00\00\00\8d\0f\10\00 \00\00\00h\00\00\00'\00\00\00range start index  out of range for slice of length \c0\0f\10\00\12\00\00\00\d2\0f\10\00\22\00\00\00\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\04\04\04\04\04\00\00\00\00\00\00\00\00\00\00\00SomeNone@\00\00\00\04\00\00\00\04\00\00\00I\00\00\00Utf8Errorvalid_up_toerror_len\00\00\00@\00\00\00\04\00\00\00\04\00\00\00J\00\00\00LayoutError")
    (data (;1;) (i32.const 1053016) "\01\00\00\00\e2\0b\10\00")
  )
  (core module (;1;)
    (type (;0;) (func (param i32)))
    (type (;1;) (func (result i32)))
    (type (;2;) (func (param i32 i32)))
    (type (;3;) (func (param i32 i32 i32)))
    (type (;4;) (func (param i32 i32 i32 i32)))
    (type (;5;) (func (param i32) (result i32)))
    (type (;6;) (func (param i32 i64) (result i32)))
    (type (;7;) (func (param i32 i32 i32 i32) (result i32)))
    (type (;8;) (func (param i32 i32 i32) (result i32)))
    (type (;9;) (func (param i32 i32) (result i32)))
    (type (;10;) (func))
    (import "env" "memory" (memory (;0;) 0))
    (import "streams" "drop-input-stream" (func $_ZN22wasi_snapshot_preview18bindings7streams17drop_input_stream10wit_import17hd6948fc1139d77c2E (;0;) (type 0)))
    (import "streams" "drop-output-stream" (func $_ZN22wasi_snapshot_preview18bindings7streams18drop_output_stream10wit_import17h0573597c88110d14E (;1;) (type 0)))
    (import "filesystem" "drop-descriptor" (func $_ZN22wasi_snapshot_preview18bindings10filesystem15drop_descriptor10wit_import17h2238ae15a927c3feE (;2;) (type 0)))
    (import "stderr" "print" (func $_ZN22wasi_snapshot_preview18bindings6stderr5print10wit_import17ha5429ee8670257c8E (;3;) (type 2)))
    (import "filesystem" "write-via-stream" (func $_ZN22wasi_snapshot_preview18bindings10filesystem16write_via_stream10wit_import17h1e904e2d6ee2224dE (;4;) (type 6)))
    (import "filesystem" "append-via-stream" (func $_ZN22wasi_snapshot_preview18bindings10filesystem17append_via_stream10wit_import17hdd531f28b7e3e25dE (;5;) (type 5)))
    (import "__main_module__" "cabi_realloc" (func $_ZN22wasi_snapshot_preview15State3new12cabi_realloc17h1bae235bf45384adE (;6;) (type 7)))
    (import "environment" "get-environment" (func $_ZN22wasi_snapshot_preview15State15get_environment22get_environment_import17h8ca4c06b2348050bE (;7;) (type 0)))
    (import "exit" "exit" (func $_ZN22wasi_snapshot_preview18bindings4exit4exit10wit_import17h53c2cbd6daf74c89E (;8;) (type 0)))
    (import "streams" "write" (func $_ZN22wasi_snapshot_preview18bindings7streams5write10wit_import17hab90d072b615f55bE (;9;) (type 4)))
    (func $_ZN4core3ptr55drop_in_place$LT$wasi_snapshot_preview1..Descriptor$GT$17h68c6484d727aa731E (;10;) (type 0) (param i32)
      (local i32 i32)
      global.get $__stack_pointer
      i32.const 32
      i32.sub
      local.tee 1
      global.set $__stack_pointer
      block ;; label = @1
        local.get 0
        i32.load
        i32.const 1
        i32.ne
        br_if 0 (;@1;)
        block ;; label = @2
          local.get 0
          i32.load offset=8
          i32.const 1
          i32.ne
          br_if 0 (;@2;)
          local.get 0
          i32.const 12
          i32.add
          i32.load
          call $_ZN22wasi_snapshot_preview18bindings7streams17drop_input_stream10wit_import17hd6948fc1139d77c2E
        end
        block ;; label = @2
          local.get 0
          i32.const 16
          i32.add
          i32.load
          i32.const 1
          i32.ne
          br_if 0 (;@2;)
          local.get 0
          i32.const 20
          i32.add
          i32.load
          call $_ZN22wasi_snapshot_preview18bindings7streams18drop_output_stream10wit_import17h0573597c88110d14E
        end
        i32.const 2
        local.get 0
        i32.const 40
        i32.add
        i32.load8_u
        local.tee 2
        i32.const -2
        i32.add
        local.get 2
        i32.const 2
        i32.lt_u
        select
        i32.const 255
        i32.and
        local.tee 2
        i32.const 2
        i32.lt_u
        br_if 0 (;@1;)
        block ;; label = @2
          block ;; label = @3
            local.get 2
            i32.const -2
            i32.add
            br_table 1 (;@2;) 0 (;@3;) 1 (;@2;)
          end
          local.get 1
          i32.const 32
          i32.store8 offset=31
          local.get 1
          i32.const 1701734764
          i32.store offset=27 align=1
          local.get 1
          i64.const 2338600898263348341
          i64.store offset=19 align=1
          local.get 1
          i64.const 7162263158133189730
          i64.store offset=11 align=1
          local.get 1
          i64.const 7018969289221893749
          i64.store offset=3 align=1
          local.get 1
          i32.const 3
          i32.add
          i32.const 29
          call $_ZN22wasi_snapshot_preview16macros5print17h944c62581c012ba1E
          i32.const 2224
          call $_ZN22wasi_snapshot_preview16macros10eprint_u3217h05e50f969897603cE
          local.get 1
          i32.const 10
          i32.store8 offset=3
          local.get 1
          i32.const 3
          i32.add
          i32.const 1
          call $_ZN22wasi_snapshot_preview16macros5print17h944c62581c012ba1E
          unreachable
          unreachable
        end
        local.get 0
        i32.const 24
        i32.add
        i32.load
        call $_ZN22wasi_snapshot_preview18bindings10filesystem15drop_descriptor10wit_import17h2238ae15a927c3feE
      end
      local.get 1
      i32.const 32
      i32.add
      global.set $__stack_pointer
    )
    (func $cabi_import_realloc (;11;) (type 7) (param i32 i32 i32 i32) (result i32)
      (local i32)
      call $allocate_stack
      global.get $__stack_pointer
      i32.const 48
      i32.sub
      local.tee 4
      global.set $__stack_pointer
      block ;; label = @1
        block ;; label = @2
          block ;; label = @3
            block ;; label = @4
              block ;; label = @5
                local.get 0
                br_if 0 (;@5;)
                local.get 1
                br_if 0 (;@5;)
                call $_ZN22wasi_snapshot_preview15State3ptr17h0133be74e5082fa6E
                local.tee 0
                i32.load
                local.tee 1
                i32.const 2147483647
                i32.ge_u
                br_if 1 (;@4;)
                local.get 0
                local.get 1
                i32.const 1
                i32.add
                i32.store
                local.get 0
                i32.load offset=8
                i32.const 560490357
                i32.ne
                br_if 2 (;@3;)
                block ;; label = @6
                  local.get 0
                  i32.const 65532
                  i32.add
                  i32.load
                  i32.const 560490357
                  i32.ne
                  br_if 0 (;@6;)
                  block ;; label = @7
                    local.get 0
                    i32.const 20
                    i32.add
                    i32.load
                    local.tee 1
                    i32.eqz
                    br_if 0 (;@7;)
                    local.get 1
                    local.get 2
                    local.get 3
                    call $_ZN22wasi_snapshot_preview19BumpArena5alloc17h496f7cf4a18061e8E
                    local.set 2
                    br 6 (;@1;)
                  end
                  local.get 0
                  i32.load offset=12
                  local.tee 1
                  i32.eqz
                  br_if 4 (;@2;)
                  block ;; label = @7
                    local.get 2
                    local.get 1
                    i32.add
                    i32.const -1
                    i32.add
                    i32.const 0
                    local.get 2
                    i32.sub
                    i32.and
                    local.tee 2
                    local.get 3
                    i32.add
                    local.tee 3
                    local.get 2
                    i32.ge_u
                    local.get 3
                    call $_ZN97_$LT$core..option..Option$LT$T$GT$$u20$as$u20$wasi_snapshot_preview1..TrappingUnwrap$LT$T$GT$$GT$15trapping_unwrap17h008287a4799fba94E
                    local.get 1
                    local.get 0
                    i32.const 16
                    i32.add
                    i32.load
                    i32.add
                    local.tee 3
                    local.get 1
                    i32.ge_u
                    local.get 3
                    call $_ZN97_$LT$core..option..Option$LT$T$GT$$u20$as$u20$wasi_snapshot_preview1..TrappingUnwrap$LT$T$GT$$GT$15trapping_unwrap17h008287a4799fba94E
                    i32.gt_u
                    br_if 0 (;@7;)
                    local.get 0
                    i32.const 0
                    i32.store offset=12
                    br 6 (;@1;)
                  end
                  local.get 4
                  i32.const 32
                  i32.store8 offset=39
                  local.get 4
                  i32.const 1701734764
                  i32.store offset=35 align=1
                  local.get 4
                  i64.const 2338600898263348341
                  i64.store offset=27 align=1
                  local.get 4
                  i64.const 7162263158133189730
                  i64.store offset=19 align=1
                  local.get 4
                  i64.const 7018969289221893749
                  i64.store offset=11 align=1
                  local.get 4
                  i32.const 11
                  i32.add
                  i32.const 29
                  call $_ZN22wasi_snapshot_preview16macros5print17h944c62581c012ba1E
                  i32.const 245
                  call $_ZN22wasi_snapshot_preview16macros10eprint_u3217h05e50f969897603cE
                  local.get 4
                  i32.const 8250
                  i32.store16 offset=11 align=1
                  local.get 4
                  i32.const 11
                  i32.add
                  i32.const 2
                  call $_ZN22wasi_snapshot_preview16macros5print17h944c62581c012ba1E
                  local.get 4
                  i32.const 2681
                  i32.store16 offset=23 align=1
                  local.get 4
                  i32.const 1919905125
                  i32.store offset=19 align=1
                  local.get 4
                  i64.const 7863397576860792175
                  i64.store offset=11 align=1
                  local.get 4
                  i32.const 11
                  i32.add
                  i32.const 14
                  call $_ZN22wasi_snapshot_preview16macros5print17h944c62581c012ba1E
                  local.get 4
                  i32.const 10
                  i32.store8 offset=11
                  local.get 4
                  i32.const 11
                  i32.add
                  i32.const 1
                  call $_ZN22wasi_snapshot_preview16macros5print17h944c62581c012ba1E
                  unreachable
                  unreachable
                end
                local.get 4
                i32.const 32
                i32.store8 offset=39
                local.get 4
                i32.const 1701734764
                i32.store offset=35 align=1
                local.get 4
                i64.const 2338600898263348341
                i64.store offset=27 align=1
                local.get 4
                i64.const 7162263158133189730
                i64.store offset=19 align=1
                local.get 4
                i64.const 7018969289221893749
                i64.store offset=11 align=1
                local.get 4
                i32.const 11
                i32.add
                i32.const 29
                call $_ZN22wasi_snapshot_preview16macros5print17h944c62581c012ba1E
                i32.const 2416
                call $_ZN22wasi_snapshot_preview16macros10eprint_u3217h05e50f969897603cE
                local.get 4
                i32.const 8250
                i32.store16 offset=11 align=1
                local.get 4
                i32.const 11
                i32.add
                i32.const 2
                call $_ZN22wasi_snapshot_preview16macros5print17h944c62581c012ba1E
                local.get 4
                i32.const 10
                i32.store8 offset=27
                local.get 4
                i64.const 7234307576302018670
                i64.store offset=19 align=1
                local.get 4
                i64.const 8028075845441778529
                i64.store offset=11 align=1
                local.get 4
                i32.const 11
                i32.add
                i32.const 17
                call $_ZN22wasi_snapshot_preview16macros5print17h944c62581c012ba1E
                local.get 4
                i32.const 10
                i32.store8 offset=11
                local.get 4
                i32.const 11
                i32.add
                i32.const 1
                call $_ZN22wasi_snapshot_preview16macros5print17h944c62581c012ba1E
                unreachable
                unreachable
              end
              local.get 4
              i32.const 32
              i32.store8 offset=39
              local.get 4
              i32.const 1701734764
              i32.store offset=35 align=1
              local.get 4
              i64.const 2338600898263348341
              i64.store offset=27 align=1
              local.get 4
              i64.const 7162263158133189730
              i64.store offset=19 align=1
              local.get 4
              i64.const 7018969289221893749
              i64.store offset=11 align=1
              local.get 4
              i32.const 11
              i32.add
              i32.const 29
              call $_ZN22wasi_snapshot_preview16macros5print17h944c62581c012ba1E
              i32.const 132
              call $_ZN22wasi_snapshot_preview16macros10eprint_u3217h05e50f969897603cE
              local.get 4
              i32.const 10
              i32.store8 offset=11
              local.get 4
              i32.const 11
              i32.add
              i32.const 1
              call $_ZN22wasi_snapshot_preview16macros5print17h944c62581c012ba1E
              unreachable
              unreachable
            end
            local.get 4
            i32.const 32
            i32.store8 offset=39
            local.get 4
            i32.const 1701734764
            i32.store offset=35 align=1
            local.get 4
            i64.const 2338600898263348341
            i64.store offset=27 align=1
            local.get 4
            i64.const 7162263158133189730
            i64.store offset=19 align=1
            local.get 4
            i64.const 7018969289221893749
            i64.store offset=11 align=1
            local.get 4
            i32.const 11
            i32.add
            i32.const 29
            call $_ZN22wasi_snapshot_preview16macros5print17h944c62581c012ba1E
            i32.const 2414
            call $_ZN22wasi_snapshot_preview16macros10eprint_u3217h05e50f969897603cE
            local.get 4
            i32.const 10
            i32.store8 offset=11
            local.get 4
            i32.const 11
            i32.add
            i32.const 1
            call $_ZN22wasi_snapshot_preview16macros5print17h944c62581c012ba1E
            unreachable
            unreachable
          end
          local.get 4
          i32.const 32
          i32.store8 offset=39
          local.get 4
          i32.const 1701734764
          i32.store offset=35 align=1
          local.get 4
          i64.const 2338600898263348341
          i64.store offset=27 align=1
          local.get 4
          i64.const 7162263158133189730
          i64.store offset=19 align=1
          local.get 4
          i64.const 7018969289221893749
          i64.store offset=11 align=1
          local.get 4
          i32.const 11
          i32.add
          i32.const 29
          call $_ZN22wasi_snapshot_preview16macros5print17h944c62581c012ba1E
          i32.const 2415
          call $_ZN22wasi_snapshot_preview16macros10eprint_u3217h05e50f969897603cE
          local.get 4
          i32.const 8250
          i32.store16 offset=11 align=1
          local.get 4
          i32.const 11
          i32.add
          i32.const 2
          call $_ZN22wasi_snapshot_preview16macros5print17h944c62581c012ba1E
          local.get 4
          i32.const 10
          i32.store8 offset=27
          local.get 4
          i64.const 7234307576302018670
          i64.store offset=19 align=1
          local.get 4
          i64.const 8028075845441778529
          i64.store offset=11 align=1
          local.get 4
          i32.const 11
          i32.add
          i32.const 17
          call $_ZN22wasi_snapshot_preview16macros5print17h944c62581c012ba1E
          local.get 4
          i32.const 10
          i32.store8 offset=11
          local.get 4
          i32.const 11
          i32.add
          i32.const 1
          call $_ZN22wasi_snapshot_preview16macros5print17h944c62581c012ba1E
          unreachable
          unreachable
        end
        local.get 4
        i32.const 32
        i32.store8 offset=39
        local.get 4
        i32.const 1701734764
        i32.store offset=35 align=1
        local.get 4
        i64.const 2338600898263348341
        i64.store offset=27 align=1
        local.get 4
        i64.const 7162263158133189730
        i64.store offset=19 align=1
        local.get 4
        i64.const 7018969289221893749
        i64.store offset=11 align=1
        local.get 4
        i32.const 11
        i32.add
        i32.const 29
        call $_ZN22wasi_snapshot_preview16macros5print17h944c62581c012ba1E
        i32.const 238
        call $_ZN22wasi_snapshot_preview16macros10eprint_u3217h05e50f969897603cE
        local.get 4
        i32.const 8250
        i32.store16 offset=11 align=1
        local.get 4
        i32.const 11
        i32.add
        i32.const 2
        call $_ZN22wasi_snapshot_preview16macros5print17h944c62581c012ba1E
        local.get 4
        i32.const 10
        i32.store8 offset=47
        local.get 4
        i32.const 1684370293
        i32.store offset=43 align=1
        local.get 4
        i64.const 2340011850872286305
        i64.store offset=35 align=1
        local.get 4
        i64.const 2338053340533122404
        i64.store offset=27 align=1
        local.get 4
        i64.const 7599383958532420719
        i64.store offset=19 align=1
        local.get 4
        i64.const 7935468323262068066
        i64.store offset=11 align=1
        local.get 4
        i32.const 11
        i32.add
        i32.const 37
        call $_ZN22wasi_snapshot_preview16macros5print17h944c62581c012ba1E
        local.get 4
        i32.const 10
        i32.store8 offset=11
        local.get 4
        i32.const 11
        i32.add
        i32.const 1
        call $_ZN22wasi_snapshot_preview16macros5print17h944c62581c012ba1E
        unreachable
        unreachable
      end
      local.get 0
      local.get 0
      i32.load
      i32.const -1
      i32.add
      i32.store
      local.get 4
      i32.const 48
      i32.add
      global.set $__stack_pointer
      local.get 2
    )
    (func $_ZN22wasi_snapshot_preview15State3ptr17h0133be74e5082fa6E (;12;) (type 1) (result i32)
      (local i32)
      block ;; label = @1
        call $get_state_ptr
        local.tee 0
        br_if 0 (;@1;)
        call $_ZN22wasi_snapshot_preview15State3new17h9dd884e87ff9d121E
        local.tee 0
        call $set_state_ptr
      end
      local.get 0
    )
    (func $_ZN22wasi_snapshot_preview19BumpArena5alloc17h496f7cf4a18061e8E (;13;) (type 8) (param i32 i32 i32) (result i32)
      (local i32)
      global.get $__stack_pointer
      i32.const 32
      i32.sub
      local.tee 3
      global.set $__stack_pointer
      block ;; label = @1
        local.get 0
        local.get 1
        i32.add
        local.get 0
        i32.load offset=54892
        i32.add
        i32.const -1
        i32.add
        i32.const 0
        local.get 1
        i32.sub
        i32.and
        local.tee 1
        local.get 0
        i32.sub
        local.get 2
        i32.add
        local.tee 2
        i32.const 54892
        i32.gt_u
        br_if 0 (;@1;)
        local.get 0
        local.get 2
        i32.store offset=54892
        local.get 3
        i32.const 32
        i32.add
        global.set $__stack_pointer
        local.get 1
        return
      end
      local.get 3
      i32.const 32
      i32.store8 offset=31
      local.get 3
      i32.const 1701734764
      i32.store offset=27 align=1
      local.get 3
      i64.const 2338600898263348341
      i64.store offset=19 align=1
      local.get 3
      i64.const 7162263158133189730
      i64.store offset=11 align=1
      local.get 3
      i64.const 7018969289221893749
      i64.store offset=3 align=1
      local.get 3
      i32.const 3
      i32.add
      i32.const 29
      call $_ZN22wasi_snapshot_preview16macros5print17h944c62581c012ba1E
      i32.const 162
      call $_ZN22wasi_snapshot_preview16macros10eprint_u3217h05e50f969897603cE
      local.get 3
      i32.const 8250
      i32.store16 offset=3 align=1
      local.get 3
      i32.const 3
      i32.add
      i32.const 2
      call $_ZN22wasi_snapshot_preview16macros5print17h944c62581c012ba1E
      local.get 3
      i32.const 2681
      i32.store16 offset=15 align=1
      local.get 3
      i32.const 1919905125
      i32.store offset=11 align=1
      local.get 3
      i64.const 7863397576860792175
      i64.store offset=3 align=1
      local.get 3
      i32.const 3
      i32.add
      i32.const 14
      call $_ZN22wasi_snapshot_preview16macros5print17h944c62581c012ba1E
      local.get 3
      i32.const 10
      i32.store8 offset=3
      local.get 3
      i32.const 3
      i32.add
      i32.const 1
      call $_ZN22wasi_snapshot_preview16macros5print17h944c62581c012ba1E
      unreachable
      unreachable
    )
    (func $cabi_export_realloc (;14;) (type 7) (param i32 i32 i32 i32) (result i32)
      (local i32)
      call $allocate_stack
      global.get $__stack_pointer
      i32.const 32
      i32.sub
      local.tee 4
      global.set $__stack_pointer
      block ;; label = @1
        block ;; label = @2
          block ;; label = @3
            block ;; label = @4
              local.get 0
              br_if 0 (;@4;)
              local.get 1
              br_if 0 (;@4;)
              call $_ZN22wasi_snapshot_preview15State3ptr17h0133be74e5082fa6E
              local.tee 0
              i32.load
              br_if 1 (;@3;)
              local.get 0
              i32.const -1
              i32.store
              local.get 0
              i32.load offset=8
              i32.const 560490357
              i32.ne
              br_if 2 (;@2;)
              local.get 0
              i32.const 65532
              i32.add
              i32.load
              i32.const 560490357
              i32.ne
              br_if 3 (;@1;)
              local.get 0
              i32.const 10280
              i32.add
              local.get 2
              local.get 3
              call $_ZN22wasi_snapshot_preview19BumpArena5alloc17h496f7cf4a18061e8E
              local.set 1
              local.get 0
              local.get 0
              i32.load
              i32.const 1
              i32.add
              i32.store
              local.get 4
              i32.const 32
              i32.add
              global.set $__stack_pointer
              local.get 1
              return
            end
            local.get 4
            i32.const 32
            i32.store8 offset=31
            local.get 4
            i32.const 1701734764
            i32.store offset=27 align=1
            local.get 4
            i64.const 2338600898263348341
            i64.store offset=19 align=1
            local.get 4
            i64.const 7162263158133189730
            i64.store offset=11 align=1
            local.get 4
            i64.const 7018969289221893749
            i64.store offset=3 align=1
            local.get 4
            i32.const 3
            i32.add
            i32.const 29
            call $_ZN22wasi_snapshot_preview16macros5print17h944c62581c012ba1E
            i32.const 268
            call $_ZN22wasi_snapshot_preview16macros10eprint_u3217h05e50f969897603cE
            local.get 4
            i32.const 10
            i32.store8 offset=3
            local.get 4
            i32.const 3
            i32.add
            i32.const 1
            call $_ZN22wasi_snapshot_preview16macros5print17h944c62581c012ba1E
            unreachable
            unreachable
          end
          local.get 4
          i32.const 32
          i32.store8 offset=31
          local.get 4
          i32.const 1701734764
          i32.store offset=27 align=1
          local.get 4
          i64.const 2338600898263348341
          i64.store offset=19 align=1
          local.get 4
          i64.const 7162263158133189730
          i64.store offset=11 align=1
          local.get 4
          i64.const 7018969289221893749
          i64.store offset=3 align=1
          local.get 4
          i32.const 3
          i32.add
          i32.const 29
          call $_ZN22wasi_snapshot_preview16macros5print17h944c62581c012ba1E
          i32.const 2426
          call $_ZN22wasi_snapshot_preview16macros10eprint_u3217h05e50f969897603cE
          local.get 4
          i32.const 10
          i32.store8 offset=3
          local.get 4
          i32.const 3
          i32.add
          i32.const 1
          call $_ZN22wasi_snapshot_preview16macros5print17h944c62581c012ba1E
          unreachable
          unreachable
        end
        local.get 4
        i32.const 32
        i32.store8 offset=31
        local.get 4
        i32.const 1701734764
        i32.store offset=27 align=1
        local.get 4
        i64.const 2338600898263348341
        i64.store offset=19 align=1
        local.get 4
        i64.const 7162263158133189730
        i64.store offset=11 align=1
        local.get 4
        i64.const 7018969289221893749
        i64.store offset=3 align=1
        local.get 4
        i32.const 3
        i32.add
        i32.const 29
        call $_ZN22wasi_snapshot_preview16macros5print17h944c62581c012ba1E
        i32.const 2427
        call $_ZN22wasi_snapshot_preview16macros10eprint_u3217h05e50f969897603cE
        local.get 4
        i32.const 8250
        i32.store16 offset=3 align=1
        local.get 4
        i32.const 3
        i32.add
        i32.const 2
        call $_ZN22wasi_snapshot_preview16macros5print17h944c62581c012ba1E
        local.get 4
        i32.const 10
        i32.store8 offset=19
        local.get 4
        i64.const 7234307576302018670
        i64.store offset=11 align=1
        local.get 4
        i64.const 8028075845441778529
        i64.store offset=3 align=1
        local.get 4
        i32.const 3
        i32.add
        i32.const 17
        call $_ZN22wasi_snapshot_preview16macros5print17h944c62581c012ba1E
        local.get 4
        i32.const 10
        i32.store8 offset=3
        local.get 4
        i32.const 3
        i32.add
        i32.const 1
        call $_ZN22wasi_snapshot_preview16macros5print17h944c62581c012ba1E
        unreachable
        unreachable
      end
      local.get 4
      i32.const 32
      i32.store8 offset=31
      local.get 4
      i32.const 1701734764
      i32.store offset=27 align=1
      local.get 4
      i64.const 2338600898263348341
      i64.store offset=19 align=1
      local.get 4
      i64.const 7162263158133189730
      i64.store offset=11 align=1
      local.get 4
      i64.const 7018969289221893749
      i64.store offset=3 align=1
      local.get 4
      i32.const 3
      i32.add
      i32.const 29
      call $_ZN22wasi_snapshot_preview16macros5print17h944c62581c012ba1E
      i32.const 2428
      call $_ZN22wasi_snapshot_preview16macros10eprint_u3217h05e50f969897603cE
      local.get 4
      i32.const 8250
      i32.store16 offset=3 align=1
      local.get 4
      i32.const 3
      i32.add
      i32.const 2
      call $_ZN22wasi_snapshot_preview16macros5print17h944c62581c012ba1E
      local.get 4
      i32.const 10
      i32.store8 offset=19
      local.get 4
      i64.const 7234307576302018670
      i64.store offset=11 align=1
      local.get 4
      i64.const 8028075845441778529
      i64.store offset=3 align=1
      local.get 4
      i32.const 3
      i32.add
      i32.const 17
      call $_ZN22wasi_snapshot_preview16macros5print17h944c62581c012ba1E
      local.get 4
      i32.const 10
      i32.store8 offset=3
      local.get 4
      i32.const 3
      i32.add
      i32.const 1
      call $_ZN22wasi_snapshot_preview16macros5print17h944c62581c012ba1E
      unreachable
      unreachable
    )
    (func $environ_get (;15;) (type 9) (param i32 i32) (result i32)
      (local i32 i32 i32 i32 i32)
      call $allocate_stack
      global.get $__stack_pointer
      i32.const 48
      i32.sub
      local.tee 2
      global.set $__stack_pointer
      block ;; label = @1
        block ;; label = @2
          block ;; label = @3
            call $_ZN22wasi_snapshot_preview15State3ptr17h0133be74e5082fa6E
            local.tee 3
            i32.load
            local.tee 4
            i32.const 2147483647
            i32.ge_u
            br_if 0 (;@3;)
            local.get 3
            local.get 4
            i32.const 1
            i32.add
            i32.store
            local.get 3
            i32.load offset=8
            i32.const 560490357
            i32.ne
            br_if 1 (;@2;)
            local.get 3
            i32.const 65532
            i32.add
            i32.load
            i32.const 560490357
            i32.ne
            br_if 2 (;@1;)
            local.get 2
            i32.const 8
            i32.add
            local.get 3
            i32.const 8
            i32.add
            call $_ZN22wasi_snapshot_preview15State15get_environment17hac5fd7dfcb8c6f0fE
            block ;; label = @4
              local.get 2
              i32.load offset=12
              local.tee 5
              i32.eqz
              br_if 0 (;@4;)
              local.get 2
              i32.load offset=8
              local.tee 4
              local.get 5
              i32.const 4
              i32.shl
              i32.add
              local.set 6
              loop ;; label = @5
                local.get 0
                local.get 1
                i32.store
                local.get 1
                local.get 4
                i32.load
                local.get 4
                i32.const 4
                i32.add
                local.tee 5
                i32.load
                call $memcpy
                local.get 5
                i32.load
                i32.add
                local.tee 1
                i32.const 61
                i32.store8
                local.get 1
                i32.const 1
                i32.add
                local.get 4
                i32.const 8
                i32.add
                i32.load
                local.get 4
                i32.const 12
                i32.add
                local.tee 1
                i32.load
                call $memcpy
                local.get 1
                i32.load
                i32.add
                local.tee 1
                i32.const 0
                i32.store8
                local.get 1
                i32.const 1
                i32.add
                local.set 1
                local.get 0
                i32.const 4
                i32.add
                local.set 0
                local.get 4
                i32.const 16
                i32.add
                local.tee 4
                local.get 6
                i32.ne
                br_if 0 (;@5;)
              end
            end
            local.get 3
            local.get 3
            i32.load
            i32.const -1
            i32.add
            i32.store
            local.get 2
            i32.const 48
            i32.add
            global.set $__stack_pointer
            i32.const 0
            return
          end
          local.get 2
          i32.const 32
          i32.store8 offset=47
          local.get 2
          i32.const 1701734764
          i32.store offset=43 align=1
          local.get 2
          i64.const 2338600898263348341
          i64.store offset=35 align=1
          local.get 2
          i64.const 7162263158133189730
          i64.store offset=27 align=1
          local.get 2
          i64.const 7018969289221893749
          i64.store offset=19 align=1
          local.get 2
          i32.const 19
          i32.add
          i32.const 29
          call $_ZN22wasi_snapshot_preview16macros5print17h944c62581c012ba1E
          i32.const 2414
          call $_ZN22wasi_snapshot_preview16macros10eprint_u3217h05e50f969897603cE
          local.get 2
          i32.const 10
          i32.store8 offset=19
          local.get 2
          i32.const 19
          i32.add
          i32.const 1
          call $_ZN22wasi_snapshot_preview16macros5print17h944c62581c012ba1E
          unreachable
          unreachable
        end
        local.get 2
        i32.const 32
        i32.store8 offset=47
        local.get 2
        i32.const 1701734764
        i32.store offset=43 align=1
        local.get 2
        i64.const 2338600898263348341
        i64.store offset=35 align=1
        local.get 2
        i64.const 7162263158133189730
        i64.store offset=27 align=1
        local.get 2
        i64.const 7018969289221893749
        i64.store offset=19 align=1
        local.get 2
        i32.const 19
        i32.add
        i32.const 29
        call $_ZN22wasi_snapshot_preview16macros5print17h944c62581c012ba1E
        i32.const 2415
        call $_ZN22wasi_snapshot_preview16macros10eprint_u3217h05e50f969897603cE
        local.get 2
        i32.const 8250
        i32.store16 offset=19 align=1
        local.get 2
        i32.const 19
        i32.add
        i32.const 2
        call $_ZN22wasi_snapshot_preview16macros5print17h944c62581c012ba1E
        local.get 2
        i32.const 10
        i32.store8 offset=35
        local.get 2
        i64.const 7234307576302018670
        i64.store offset=27 align=1
        local.get 2
        i64.const 8028075845441778529
        i64.store offset=19 align=1
        local.get 2
        i32.const 19
        i32.add
        i32.const 17
        call $_ZN22wasi_snapshot_preview16macros5print17h944c62581c012ba1E
        local.get 2
        i32.const 10
        i32.store8 offset=19
        local.get 2
        i32.const 19
        i32.add
        i32.const 1
        call $_ZN22wasi_snapshot_preview16macros5print17h944c62581c012ba1E
        unreachable
        unreachable
      end
      local.get 2
      i32.const 32
      i32.store8 offset=47
      local.get 2
      i32.const 1701734764
      i32.store offset=43 align=1
      local.get 2
      i64.const 2338600898263348341
      i64.store offset=35 align=1
      local.get 2
      i64.const 7162263158133189730
      i64.store offset=27 align=1
      local.get 2
      i64.const 7018969289221893749
      i64.store offset=19 align=1
      local.get 2
      i32.const 19
      i32.add
      i32.const 29
      call $_ZN22wasi_snapshot_preview16macros5print17h944c62581c012ba1E
      i32.const 2416
      call $_ZN22wasi_snapshot_preview16macros10eprint_u3217h05e50f969897603cE
      local.get 2
      i32.const 8250
      i32.store16 offset=19 align=1
      local.get 2
      i32.const 19
      i32.add
      i32.const 2
      call $_ZN22wasi_snapshot_preview16macros5print17h944c62581c012ba1E
      local.get 2
      i32.const 10
      i32.store8 offset=35
      local.get 2
      i64.const 7234307576302018670
      i64.store offset=27 align=1
      local.get 2
      i64.const 8028075845441778529
      i64.store offset=19 align=1
      local.get 2
      i32.const 19
      i32.add
      i32.const 17
      call $_ZN22wasi_snapshot_preview16macros5print17h944c62581c012ba1E
      local.get 2
      i32.const 10
      i32.store8 offset=19
      local.get 2
      i32.const 19
      i32.add
      i32.const 1
      call $_ZN22wasi_snapshot_preview16macros5print17h944c62581c012ba1E
      unreachable
      unreachable
    )
    (func $_ZN22wasi_snapshot_preview15State15get_environment17hac5fd7dfcb8c6f0fE (;16;) (type 2) (param i32 i32)
      (local i32 i32 i32)
      global.get $__stack_pointer
      i32.const 48
      i32.sub
      local.tee 2
      global.set $__stack_pointer
      block ;; label = @1
        block ;; label = @2
          local.get 1
          i32.load offset=65176
          local.tee 3
          i32.eqz
          br_if 0 (;@2;)
          local.get 1
          i32.const 65180
          i32.add
          i32.load
          local.set 4
          br 1 (;@1;)
        end
        local.get 2
        i64.const 0
        i64.store offset=8
        block ;; label = @2
          block ;; label = @3
            local.get 1
            i32.load offset=4
            br_if 0 (;@3;)
            local.get 1
            i32.const 12
            i32.add
            local.tee 3
            i32.load
            local.set 4
            local.get 3
            local.get 1
            i32.const 10272
            i32.add
            i32.store
            local.get 4
            br_if 1 (;@2;)
            local.get 2
            i32.const 8
            i32.add
            call $_ZN22wasi_snapshot_preview15State15get_environment22get_environment_import17h8ca4c06b2348050bE
            local.get 1
            i32.const 0
            i32.store offset=12
            local.get 1
            i32.const 65180
            i32.add
            local.get 2
            i32.load offset=12
            local.tee 4
            i32.store
            local.get 1
            local.get 2
            i32.load offset=8
            local.tee 3
            i32.store offset=65176
            br 2 (;@1;)
          end
          local.get 2
          i32.const 32
          i32.store8 offset=47
          local.get 2
          i32.const 1701734764
          i32.store offset=43 align=1
          local.get 2
          i64.const 2338600898263348341
          i64.store offset=35 align=1
          local.get 2
          i64.const 7162263158133189730
          i64.store offset=27 align=1
          local.get 2
          i64.const 7018969289221893749
          i64.store offset=19 align=1
          local.get 2
          i32.const 19
          i32.add
          i32.const 29
          call $_ZN22wasi_snapshot_preview16macros5print17h944c62581c012ba1E
          i32.const 217
          call $_ZN22wasi_snapshot_preview16macros10eprint_u3217h05e50f969897603cE
          local.get 2
          i32.const 8250
          i32.store16 offset=19 align=1
          local.get 2
          i32.const 19
          i32.add
          i32.const 2
          call $_ZN22wasi_snapshot_preview16macros5print17h944c62581c012ba1E
          local.get 2
          i32.const 174417007
          i32.store offset=27 align=1
          local.get 2
          i64.const 7863410729224140130
          i64.store offset=19 align=1
          local.get 2
          i32.const 19
          i32.add
          i32.const 12
          call $_ZN22wasi_snapshot_preview16macros5print17h944c62581c012ba1E
          local.get 2
          i32.const 10
          i32.store8 offset=19
          local.get 2
          i32.const 19
          i32.add
          i32.const 1
          call $_ZN22wasi_snapshot_preview16macros5print17h944c62581c012ba1E
          unreachable
          unreachable
        end
        local.get 2
        i32.const 32
        i32.store8 offset=47
        local.get 2
        i32.const 1701734764
        i32.store offset=43 align=1
        local.get 2
        i64.const 2338600898263348341
        i64.store offset=35 align=1
        local.get 2
        i64.const 7162263158133189730
        i64.store offset=27 align=1
        local.get 2
        i64.const 7018969289221893749
        i64.store offset=19 align=1
        local.get 2
        i32.const 19
        i32.add
        i32.const 29
        call $_ZN22wasi_snapshot_preview16macros5print17h944c62581c012ba1E
        i32.const 224
        call $_ZN22wasi_snapshot_preview16macros10eprint_u3217h05e50f969897603cE
        local.get 2
        i32.const 8250
        i32.store16 offset=19 align=1
        local.get 2
        i32.const 19
        i32.add
        i32.const 2
        call $_ZN22wasi_snapshot_preview16macros5print17h944c62581c012ba1E
        local.get 2
        i64.const 748000395109933170
        i64.store offset=35 align=1
        local.get 2
        i64.const 7307218417350680677
        i64.store offset=27 align=1
        local.get 2
        i64.const 8390050488160450159
        i64.store offset=19 align=1
        local.get 2
        i32.const 19
        i32.add
        i32.const 24
        call $_ZN22wasi_snapshot_preview16macros5print17h944c62581c012ba1E
        local.get 2
        i32.const 10
        i32.store8 offset=19
        local.get 2
        i32.const 19
        i32.add
        i32.const 1
        call $_ZN22wasi_snapshot_preview16macros5print17h944c62581c012ba1E
        unreachable
        unreachable
      end
      local.get 2
      local.get 3
      local.get 4
      call $_ZN97_$LT$core..option..Option$LT$T$GT$$u20$as$u20$wasi_snapshot_preview1..TrappingUnwrap$LT$T$GT$$GT$15trapping_unwrap17h694f198625c6a5a2E
      local.get 2
      i32.load offset=4
      local.set 1
      local.get 0
      local.get 2
      i32.load
      i32.store
      local.get 0
      local.get 1
      i32.store offset=4
      local.get 2
      i32.const 48
      i32.add
      global.set $__stack_pointer
    )
    (func $environ_sizes_get (;17;) (type 9) (param i32 i32) (result i32)
      (local i32 i32 i32 i32 i32)
      call $allocate_stack
      global.get $__stack_pointer
      i32.const 48
      i32.sub
      local.tee 2
      global.set $__stack_pointer
      block ;; label = @1
        block ;; label = @2
          block ;; label = @3
            block ;; label = @4
              block ;; label = @5
                call $get_allocation_state
                i32.const -2
                i32.add
                i32.const -3
                i32.and
                i32.eqz
                br_if 0 (;@5;)
                local.get 0
                i32.const 0
                i32.store
                local.get 1
                i32.const 0
                i32.store
                br 1 (;@4;)
              end
              call $_ZN22wasi_snapshot_preview15State3ptr17h0133be74e5082fa6E
              local.tee 3
              i32.load
              local.tee 4
              i32.const 2147483647
              i32.ge_u
              br_if 1 (;@3;)
              local.get 3
              local.get 4
              i32.const 1
              i32.add
              i32.store
              local.get 3
              i32.load offset=8
              i32.const 560490357
              i32.ne
              br_if 2 (;@2;)
              local.get 3
              i32.const 65532
              i32.add
              i32.load
              i32.const 560490357
              i32.ne
              br_if 3 (;@1;)
              local.get 2
              i32.const 8
              i32.add
              local.get 3
              i32.const 8
              i32.add
              call $_ZN22wasi_snapshot_preview15State15get_environment17hac5fd7dfcb8c6f0fE
              local.get 2
              i32.load offset=8
              local.set 5
              local.get 0
              local.get 2
              i32.load offset=12
              local.tee 4
              i32.store
              block ;; label = @5
                block ;; label = @6
                  local.get 4
                  br_if 0 (;@6;)
                  i32.const 0
                  local.set 4
                  br 1 (;@5;)
                end
                local.get 4
                i32.const 4
                i32.shl
                local.set 6
                local.get 5
                i32.const 12
                i32.add
                local.set 0
                i32.const 0
                local.set 4
                loop ;; label = @6
                  local.get 4
                  local.get 0
                  i32.const -8
                  i32.add
                  i32.load
                  i32.add
                  local.get 0
                  i32.load
                  i32.add
                  i32.const 2
                  i32.add
                  local.set 4
                  local.get 0
                  i32.const 16
                  i32.add
                  local.set 0
                  local.get 6
                  i32.const -16
                  i32.add
                  local.tee 6
                  br_if 0 (;@6;)
                end
              end
              local.get 1
              local.get 4
              i32.store
              local.get 3
              local.get 3
              i32.load
              i32.const -1
              i32.add
              i32.store
            end
            local.get 2
            i32.const 48
            i32.add
            global.set $__stack_pointer
            i32.const 0
            return
          end
          local.get 2
          i32.const 32
          i32.store8 offset=47
          local.get 2
          i32.const 1701734764
          i32.store offset=43 align=1
          local.get 2
          i64.const 2338600898263348341
          i64.store offset=35 align=1
          local.get 2
          i64.const 7162263158133189730
          i64.store offset=27 align=1
          local.get 2
          i64.const 7018969289221893749
          i64.store offset=19 align=1
          local.get 2
          i32.const 19
          i32.add
          i32.const 29
          call $_ZN22wasi_snapshot_preview16macros5print17h944c62581c012ba1E
          i32.const 2414
          call $_ZN22wasi_snapshot_preview16macros10eprint_u3217h05e50f969897603cE
          local.get 2
          i32.const 10
          i32.store8 offset=19
          local.get 2
          i32.const 19
          i32.add
          i32.const 1
          call $_ZN22wasi_snapshot_preview16macros5print17h944c62581c012ba1E
          unreachable
          unreachable
        end
        local.get 2
        i32.const 32
        i32.store8 offset=47
        local.get 2
        i32.const 1701734764
        i32.store offset=43 align=1
        local.get 2
        i64.const 2338600898263348341
        i64.store offset=35 align=1
        local.get 2
        i64.const 7162263158133189730
        i64.store offset=27 align=1
        local.get 2
        i64.const 7018969289221893749
        i64.store offset=19 align=1
        local.get 2
        i32.const 19
        i32.add
        i32.const 29
        call $_ZN22wasi_snapshot_preview16macros5print17h944c62581c012ba1E
        i32.const 2415
        call $_ZN22wasi_snapshot_preview16macros10eprint_u3217h05e50f969897603cE
        local.get 2
        i32.const 8250
        i32.store16 offset=19 align=1
        local.get 2
        i32.const 19
        i32.add
        i32.const 2
        call $_ZN22wasi_snapshot_preview16macros5print17h944c62581c012ba1E
        local.get 2
        i32.const 10
        i32.store8 offset=35
        local.get 2
        i64.const 7234307576302018670
        i64.store offset=27 align=1
        local.get 2
        i64.const 8028075845441778529
        i64.store offset=19 align=1
        local.get 2
        i32.const 19
        i32.add
        i32.const 17
        call $_ZN22wasi_snapshot_preview16macros5print17h944c62581c012ba1E
        local.get 2
        i32.const 10
        i32.store8 offset=19
        local.get 2
        i32.const 19
        i32.add
        i32.const 1
        call $_ZN22wasi_snapshot_preview16macros5print17h944c62581c012ba1E
        unreachable
        unreachable
      end
      local.get 2
      i32.const 32
      i32.store8 offset=47
      local.get 2
      i32.const 1701734764
      i32.store offset=43 align=1
      local.get 2
      i64.const 2338600898263348341
      i64.store offset=35 align=1
      local.get 2
      i64.const 7162263158133189730
      i64.store offset=27 align=1
      local.get 2
      i64.const 7018969289221893749
      i64.store offset=19 align=1
      local.get 2
      i32.const 19
      i32.add
      i32.const 29
      call $_ZN22wasi_snapshot_preview16macros5print17h944c62581c012ba1E
      i32.const 2416
      call $_ZN22wasi_snapshot_preview16macros10eprint_u3217h05e50f969897603cE
      local.get 2
      i32.const 8250
      i32.store16 offset=19 align=1
      local.get 2
      i32.const 19
      i32.add
      i32.const 2
      call $_ZN22wasi_snapshot_preview16macros5print17h944c62581c012ba1E
      local.get 2
      i32.const 10
      i32.store8 offset=35
      local.get 2
      i64.const 7234307576302018670
      i64.store offset=27 align=1
      local.get 2
      i64.const 8028075845441778529
      i64.store offset=19 align=1
      local.get 2
      i32.const 19
      i32.add
      i32.const 17
      call $_ZN22wasi_snapshot_preview16macros5print17h944c62581c012ba1E
      local.get 2
      i32.const 10
      i32.store8 offset=19
      local.get 2
      i32.const 19
      i32.add
      i32.const 1
      call $_ZN22wasi_snapshot_preview16macros5print17h944c62581c012ba1E
      unreachable
      unreachable
    )
    (func $fd_write (;18;) (type 7) (param i32 i32 i32 i32) (result i32)
      (local i32 i32 i32 i64)
      call $allocate_stack
      global.get $__stack_pointer
      i32.const 48
      i32.sub
      local.tee 4
      global.set $__stack_pointer
      block ;; label = @1
        block ;; label = @2
          block ;; label = @3
            block ;; label = @4
              block ;; label = @5
                block ;; label = @6
                  block ;; label = @7
                    call $get_allocation_state
                    i32.const -2
                    i32.add
                    i32.const -3
                    i32.and
                    br_if 0 (;@7;)
                    block ;; label = @8
                      block ;; label = @9
                        local.get 2
                        i32.eqz
                        br_if 0 (;@9;)
                        loop ;; label = @10
                          local.get 1
                          i32.const 4
                          i32.add
                          i32.load
                          local.tee 5
                          br_if 2 (;@8;)
                          local.get 1
                          i32.const 8
                          i32.add
                          local.set 1
                          local.get 2
                          i32.const -1
                          i32.add
                          local.tee 2
                          br_if 0 (;@10;)
                        end
                      end
                      i32.const 0
                      local.set 1
                      local.get 3
                      i32.const 0
                      i32.store
                      br 7 (;@1;)
                    end
                    local.get 1
                    i32.load
                    local.set 6
                    call $_ZN22wasi_snapshot_preview15State3ptr17h0133be74e5082fa6E
                    local.tee 2
                    i32.load
                    local.tee 1
                    i32.const 2147483647
                    i32.ge_u
                    br_if 1 (;@6;)
                    local.get 2
                    local.get 1
                    i32.const 1
                    i32.add
                    i32.store
                    local.get 2
                    i32.load offset=8
                    i32.const 560490357
                    i32.ne
                    br_if 2 (;@5;)
                    block ;; label = @8
                      block ;; label = @9
                        local.get 2
                        i32.const 65532
                        i32.add
                        i32.load
                        i32.const 560490357
                        i32.ne
                        br_if 0 (;@9;)
                        i32.const 8
                        local.set 1
                        local.get 2
                        i32.const 24
                        i32.add
                        i32.load16_u
                        local.get 0
                        i32.le_u
                        br_if 7 (;@2;)
                        block ;; label = @10
                          local.get 2
                          local.get 0
                          i32.const 48
                          i32.mul
                          i32.add
                          i32.const 32
                          i32.add
                          local.tee 0
                          i32.load
                          br_table 8 (;@2;) 0 (;@10;) 2 (;@8;) 8 (;@2;)
                        end
                        local.get 4
                        i32.const 16
                        i32.add
                        local.get 0
                        i32.const 8
                        i32.add
                        call $_ZN22wasi_snapshot_preview17Streams16get_write_stream17h5c80a181ff8c94fcE
                        block ;; label = @10
                          local.get 4
                          i32.load16_u offset=16
                          i32.eqz
                          br_if 0 (;@10;)
                          local.get 4
                          i32.load16_u offset=18
                          local.set 1
                          br 8 (;@2;)
                        end
                        local.get 4
                        local.get 4
                        i32.load offset=20
                        local.get 6
                        local.get 5
                        call $_ZN22wasi_snapshot_preview18bindings7streams5write17h6b4f3d6c3ed21219E
                        i32.const 29
                        local.set 1
                        local.get 4
                        i32.load
                        br_if 7 (;@2;)
                        local.get 4
                        i64.load offset=8
                        local.set 7
                        local.get 0
                        i32.const 40
                        i32.add
                        i32.load8_u
                        br_if 5 (;@4;)
                        local.get 0
                        i32.const 32
                        i32.add
                        local.tee 1
                        local.get 1
                        i64.load
                        local.get 7
                        i64.add
                        i64.store
                        br 5 (;@4;)
                      end
                      local.get 4
                      i32.const 32
                      i32.store8 offset=44
                      local.get 4
                      i32.const 1701734764
                      i32.store offset=40 align=1
                      local.get 4
                      i64.const 2338600898263348341
                      i64.store offset=32 align=1
                      local.get 4
                      i64.const 7162263158133189730
                      i64.store offset=24 align=1
                      local.get 4
                      i64.const 7018969289221893749
                      i64.store offset=16 align=1
                      local.get 4
                      i32.const 16
                      i32.add
                      i32.const 29
                      call $_ZN22wasi_snapshot_preview16macros5print17h944c62581c012ba1E
                      i32.const 2416
                      call $_ZN22wasi_snapshot_preview16macros10eprint_u3217h05e50f969897603cE
                      local.get 4
                      i32.const 8250
                      i32.store16 offset=16 align=1
                      local.get 4
                      i32.const 16
                      i32.add
                      i32.const 2
                      call $_ZN22wasi_snapshot_preview16macros5print17h944c62581c012ba1E
                      local.get 4
                      i32.const 10
                      i32.store8 offset=32
                      local.get 4
                      i64.const 7234307576302018670
                      i64.store offset=24 align=1
                      local.get 4
                      i64.const 8028075845441778529
                      i64.store offset=16 align=1
                      local.get 4
                      i32.const 16
                      i32.add
                      i32.const 17
                      call $_ZN22wasi_snapshot_preview16macros5print17h944c62581c012ba1E
                      local.get 4
                      i32.const 10
                      i32.store8 offset=16
                      local.get 4
                      i32.const 16
                      i32.add
                      i32.const 1
                      call $_ZN22wasi_snapshot_preview16macros5print17h944c62581c012ba1E
                      unreachable
                      unreachable
                    end
                    local.get 6
                    local.get 5
                    call $_ZN22wasi_snapshot_preview18bindings6stderr5print10wit_import17ha5429ee8670257c8E
                    local.get 3
                    local.get 5
                    i32.store
                    br 4 (;@3;)
                  end
                  local.get 3
                  i32.const 0
                  i32.store
                  i32.const 29
                  local.set 1
                  br 5 (;@1;)
                end
                local.get 4
                i32.const 32
                i32.store8 offset=44
                local.get 4
                i32.const 1701734764
                i32.store offset=40 align=1
                local.get 4
                i64.const 2338600898263348341
                i64.store offset=32 align=1
                local.get 4
                i64.const 7162263158133189730
                i64.store offset=24 align=1
                local.get 4
                i64.const 7018969289221893749
                i64.store offset=16 align=1
                local.get 4
                i32.const 16
                i32.add
                i32.const 29
                call $_ZN22wasi_snapshot_preview16macros5print17h944c62581c012ba1E
                i32.const 2414
                call $_ZN22wasi_snapshot_preview16macros10eprint_u3217h05e50f969897603cE
                local.get 4
                i32.const 10
                i32.store8 offset=16
                local.get 4
                i32.const 16
                i32.add
                i32.const 1
                call $_ZN22wasi_snapshot_preview16macros5print17h944c62581c012ba1E
                unreachable
                unreachable
              end
              local.get 4
              i32.const 32
              i32.store8 offset=44
              local.get 4
              i32.const 1701734764
              i32.store offset=40 align=1
              local.get 4
              i64.const 2338600898263348341
              i64.store offset=32 align=1
              local.get 4
              i64.const 7162263158133189730
              i64.store offset=24 align=1
              local.get 4
              i64.const 7018969289221893749
              i64.store offset=16 align=1
              local.get 4
              i32.const 16
              i32.add
              i32.const 29
              call $_ZN22wasi_snapshot_preview16macros5print17h944c62581c012ba1E
              i32.const 2415
              call $_ZN22wasi_snapshot_preview16macros10eprint_u3217h05e50f969897603cE
              local.get 4
              i32.const 8250
              i32.store16 offset=16 align=1
              local.get 4
              i32.const 16
              i32.add
              i32.const 2
              call $_ZN22wasi_snapshot_preview16macros5print17h944c62581c012ba1E
              local.get 4
              i32.const 10
              i32.store8 offset=32
              local.get 4
              i64.const 7234307576302018670
              i64.store offset=24 align=1
              local.get 4
              i64.const 8028075845441778529
              i64.store offset=16 align=1
              local.get 4
              i32.const 16
              i32.add
              i32.const 17
              call $_ZN22wasi_snapshot_preview16macros5print17h944c62581c012ba1E
              local.get 4
              i32.const 10
              i32.store8 offset=16
              local.get 4
              i32.const 16
              i32.add
              i32.const 1
              call $_ZN22wasi_snapshot_preview16macros5print17h944c62581c012ba1E
              unreachable
              unreachable
            end
            local.get 3
            local.get 7
            i64.store32
          end
          i32.const 0
          local.set 1
        end
        local.get 2
        local.get 2
        i32.load
        i32.const -1
        i32.add
        i32.store
      end
      local.get 4
      i32.const 48
      i32.add
      global.set $__stack_pointer
      local.get 1
      i32.const 65535
      i32.and
    )
    (func $_ZN22wasi_snapshot_preview17Streams16get_write_stream17h5c80a181ff8c94fcE (;19;) (type 2) (param i32 i32)
      (local i32)
      block ;; label = @1
        block ;; label = @2
          block ;; label = @3
            block ;; label = @4
              block ;; label = @5
                block ;; label = @6
                  block ;; label = @7
                    local.get 1
                    i32.load offset=8
                    i32.const 1
                    i32.eq
                    br_if 0 (;@7;)
                    local.get 1
                    i32.const 32
                    i32.add
                    i32.load8_u
                    br_table 2 (;@5;) 3 (;@4;) 1 (;@6;) 1 (;@6;) 3 (;@4;) 1 (;@6;)
                  end
                  local.get 0
                  local.get 1
                  i32.const 12
                  i32.add
                  i32.load
                  i32.store offset=4
                  br 4 (;@2;)
                end
                local.get 0
                i32.const 8
                i32.store16 offset=2
                i32.const 1
                local.set 1
                br 4 (;@1;)
              end
              local.get 1
              i32.load offset=16
              local.get 1
              i32.const 24
              i32.add
              i64.load
              call $_ZN22wasi_snapshot_preview18bindings10filesystem16write_via_stream10wit_import17h1e904e2d6ee2224dE
              local.set 2
              br 1 (;@3;)
            end
            local.get 1
            i32.load offset=16
            call $_ZN22wasi_snapshot_preview18bindings10filesystem17append_via_stream10wit_import17hdd531f28b7e3e25dE
            local.set 2
          end
          local.get 1
          i32.const 1
          i32.store offset=8
          local.get 0
          local.get 2
          i32.store offset=4
          local.get 1
          i32.const 12
          i32.add
          local.get 2
          i32.store
        end
        i32.const 0
        local.set 1
      end
      local.get 0
      local.get 1
      i32.store16
    )
    (func $proc_exit (;20;) (type 0) (param i32)
      (local i32)
      call $allocate_stack
      global.get $__stack_pointer
      i32.const 48
      i32.sub
      local.tee 1
      global.set $__stack_pointer
      local.get 0
      i32.const 0
      i32.ne
      call $_ZN22wasi_snapshot_preview18bindings4exit4exit17h4047cb8fc88dcd5cE
      local.get 1
      i32.const 32
      i32.store8 offset=38
      local.get 1
      i32.const 1701734764
      i32.store offset=34 align=1
      local.get 1
      i64.const 2338600898263348341
      i64.store offset=26 align=1
      local.get 1
      i64.const 7162263158133189730
      i64.store offset=18 align=1
      local.get 1
      i64.const 7018969289221893749
      i64.store offset=10 align=1
      local.get 1
      i32.const 10
      i32.add
      i32.const 29
      call $_ZN22wasi_snapshot_preview16macros5print17h944c62581c012ba1E
      i32.const 1921
      call $_ZN22wasi_snapshot_preview16macros10eprint_u3217h05e50f969897603cE
      local.get 1
      i32.const 8250
      i32.store16 offset=10 align=1
      local.get 1
      i32.const 10
      i32.add
      i32.const 2
      call $_ZN22wasi_snapshot_preview16macros5print17h944c62581c012ba1E
      local.get 1
      i32.const 2593
      i32.store16 offset=46 align=1
      local.get 1
      i32.const 1953069157
      i32.store offset=42 align=1
      local.get 1
      i64.const 2338537461596644384
      i64.store offset=34 align=1
      local.get 1
      i64.const 7957695015159098981
      i64.store offset=26 align=1
      local.get 1
      i64.const 7882825952909664372
      i64.store offset=18 align=1
      local.get 1
      i64.const 7599935561254793064
      i64.store offset=10 align=1
      local.get 1
      i32.const 10
      i32.add
      i32.const 38
      call $_ZN22wasi_snapshot_preview16macros5print17h944c62581c012ba1E
      local.get 1
      i32.const 10
      i32.store8 offset=10
      local.get 1
      i32.const 10
      i32.add
      i32.const 1
      call $_ZN22wasi_snapshot_preview16macros5print17h944c62581c012ba1E
      unreachable
      unreachable
    )
    (func $_ZN22wasi_snapshot_preview15State3new17h9dd884e87ff9d121E (;21;) (type 1) (result i32)
      (local i32 i32 i32)
      global.get $__stack_pointer
      i32.const 64
      i32.sub
      local.tee 0
      global.set $__stack_pointer
      block ;; label = @1
        call $get_allocation_state
        i32.const 2
        i32.ne
        br_if 0 (;@1;)
        i32.const 3
        call $set_allocation_state
        i32.const 0
        i32.const 0
        i32.const 8
        i32.const 65536
        call $_ZN22wasi_snapshot_preview15State3new12cabi_realloc17h1bae235bf45384adE
        local.set 1
        i32.const 4
        call $set_allocation_state
        local.get 1
        i64.const 0
        i64.store offset=12 align=4
        local.get 1
        i32.const 560490357
        i32.store offset=8
        local.get 1
        i32.const 20
        i32.add
        i32.const 0
        i32.store
        local.get 1
        i64.const 0
        i64.store offset=65472 align=4
        local.get 1
        i32.const 0
        i32.store offset=65464
        local.get 1
        i32.const 0
        i32.store offset=65200
        local.get 1
        i32.const 0
        i32.store offset=65192
        local.get 1
        i32.const 0
        i32.store offset=65184
        local.get 1
        i64.const 0
        i64.store offset=65172 align=4
        local.get 1
        i32.const 0
        i32.store offset=6176
        local.get 1
        i32.const 65480
        i32.add
        i64.const 0
        i64.store align=4
        local.get 1
        i32.const 65488
        i32.add
        i64.const 0
        i64.store align=4
        local.get 1
        i32.const 65493
        i32.add
        i64.const 0
        i64.store align=1
        local.get 1
        i32.const 560490357
        i32.store offset=65532
        local.get 1
        i32.const 11822
        i32.store16 offset=65528
        local.get 1
        i32.const 0
        i32.store offset=65520
        local.get 1
        i32.const 0
        i32.store offset=65512
        local.get 1
        i32.const 0
        i32.store offset=65504
        local.get 1
        i32.const -1
        i32.store
        local.get 0
        i32.const 56
        i32.add
        i32.const 2
        i32.store8
        local.get 0
        i32.const 32
        i32.add
        i32.const 0
        i32.store
        local.get 0
        i32.const 0
        i32.store offset=24
        local.get 0
        i32.const 1
        i32.store offset=16
        local.get 1
        i32.const 32
        i32.add
        local.get 0
        i32.const 16
        i32.add
        i32.const 48
        call $memcpy
        drop
        local.get 1
        i32.const 1
        i32.store16 offset=24
        local.get 0
        i32.const 0
        i32.store offset=12
        local.get 0
        i32.const 0
        i32.store16 offset=8
        local.get 0
        i32.const 8
        i32.add
        call $_ZN101_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$wasi_snapshot_preview1..TrappingUnwrap$LT$T$GT$$GT$15trapping_unwrap17h917f629549a7212dE
        drop
        local.get 0
        i32.const 2
        i32.store offset=16
        block ;; label = @2
          block ;; label = @3
            local.get 1
            i32.load16_u offset=24
            local.tee 2
            i32.const 128
            i32.lt_u
            br_if 0 (;@3;)
            local.get 0
            i32.const 3145729
            i32.store offset=8
            local.get 0
            i32.const 16
            i32.add
            call $_ZN4core3ptr55drop_in_place$LT$wasi_snapshot_preview1..Descriptor$GT$17h68c6484d727aa731E
            br 1 (;@2;)
          end
          local.get 1
          local.get 2
          i32.const 48
          i32.mul
          i32.add
          i32.const 32
          i32.add
          local.get 0
          i32.const 16
          i32.add
          i32.const 48
          call $memcpy
          drop
          local.get 1
          local.get 2
          i32.const 1
          i32.add
          i32.store16 offset=24
          local.get 0
          local.get 2
          i32.store offset=12
          local.get 0
          i32.const 0
          i32.store16 offset=8
        end
        local.get 0
        i32.const 8
        i32.add
        call $_ZN101_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$wasi_snapshot_preview1..TrappingUnwrap$LT$T$GT$$GT$15trapping_unwrap17h917f629549a7212dE
        drop
        local.get 0
        i32.const 2
        i32.store offset=16
        block ;; label = @2
          block ;; label = @3
            local.get 1
            i32.load16_u offset=24
            local.tee 2
            i32.const 128
            i32.lt_u
            br_if 0 (;@3;)
            local.get 0
            i32.const 3145729
            i32.store offset=8
            local.get 0
            i32.const 16
            i32.add
            call $_ZN4core3ptr55drop_in_place$LT$wasi_snapshot_preview1..Descriptor$GT$17h68c6484d727aa731E
            br 1 (;@2;)
          end
          local.get 1
          local.get 2
          i32.const 48
          i32.mul
          i32.add
          i32.const 32
          i32.add
          local.get 0
          i32.const 16
          i32.add
          i32.const 48
          call $memcpy
          drop
          local.get 1
          local.get 2
          i32.const 1
          i32.add
          i32.store16 offset=24
          local.get 0
          local.get 2
          i32.store offset=12
          local.get 0
          i32.const 0
          i32.store16 offset=8
        end
        local.get 0
        i32.const 8
        i32.add
        call $_ZN101_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$wasi_snapshot_preview1..TrappingUnwrap$LT$T$GT$$GT$15trapping_unwrap17h917f629549a7212dE
        drop
        local.get 1
        local.get 1
        i32.load
        i32.const 1
        i32.add
        i32.store
        local.get 0
        i32.const 64
        i32.add
        global.set $__stack_pointer
        local.get 1
        return
      end
      local.get 0
      i32.const 32
      i32.store8 offset=44
      local.get 0
      i32.const 1701734764
      i32.store offset=40 align=1
      local.get 0
      i64.const 2338600898263348341
      i64.store offset=32 align=1
      local.get 0
      i64.const 7162263158133189730
      i64.store offset=24 align=1
      local.get 0
      i64.const 7018969289221893749
      i64.store offset=16 align=1
      local.get 0
      i32.const 16
      i32.add
      i32.const 29
      call $_ZN22wasi_snapshot_preview16macros5print17h944c62581c012ba1E
      i32.const 2459
      call $_ZN22wasi_snapshot_preview16macros10eprint_u3217h05e50f969897603cE
      local.get 0
      i32.const 8250
      i32.store16 offset=16 align=1
      local.get 0
      i32.const 16
      i32.add
      i32.const 2
      call $_ZN22wasi_snapshot_preview16macros5print17h944c62581c012ba1E
      local.get 0
      i32.const 10
      i32.store8 offset=32
      local.get 0
      i64.const 7234307576302018670
      i64.store offset=24 align=1
      local.get 0
      i64.const 8028075845441778529
      i64.store offset=16 align=1
      local.get 0
      i32.const 16
      i32.add
      i32.const 17
      call $_ZN22wasi_snapshot_preview16macros5print17h944c62581c012ba1E
      local.get 0
      i32.const 10
      i32.store8 offset=16
      local.get 0
      i32.const 16
      i32.add
      i32.const 1
      call $_ZN22wasi_snapshot_preview16macros5print17h944c62581c012ba1E
      unreachable
      unreachable
    )
    (func $_ZN22wasi_snapshot_preview18bindings4exit4exit17h4047cb8fc88dcd5cE (;22;) (type 0) (param i32)
      local.get 0
      call $_ZN22wasi_snapshot_preview18bindings4exit4exit10wit_import17h53c2cbd6daf74c89E
    )
    (func $_ZN101_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$wasi_snapshot_preview1..TrappingUnwrap$LT$T$GT$$GT$15trapping_unwrap17h917f629549a7212dE (;23;) (type 5) (param i32) (result i32)
      (local i32)
      global.get $__stack_pointer
      i32.const 32
      i32.sub
      local.tee 1
      global.set $__stack_pointer
      block ;; label = @1
        local.get 0
        i32.load16_u
        br_if 0 (;@1;)
        local.get 0
        i32.load offset=4
        local.set 0
        local.get 1
        i32.const 32
        i32.add
        global.set $__stack_pointer
        local.get 0
        return
      end
      local.get 1
      i32.const 32
      i32.store8 offset=31
      local.get 1
      i32.const 1701734764
      i32.store offset=27 align=1
      local.get 1
      i64.const 2338600898263348341
      i64.store offset=19 align=1
      local.get 1
      i64.const 7162263158133189730
      i64.store offset=11 align=1
      local.get 1
      i64.const 7018969289221893749
      i64.store offset=3 align=1
      local.get 1
      i32.const 3
      i32.add
      i32.const 29
      call $_ZN22wasi_snapshot_preview16macros5print17h944c62581c012ba1E
      i32.const 119
      call $_ZN22wasi_snapshot_preview16macros10eprint_u3217h05e50f969897603cE
      local.get 1
      i32.const 10
      i32.store8 offset=3
      local.get 1
      i32.const 3
      i32.add
      i32.const 1
      call $_ZN22wasi_snapshot_preview16macros5print17h944c62581c012ba1E
      unreachable
      unreachable
    )
    (func $_ZN22wasi_snapshot_preview18bindings7streams5write17h6b4f3d6c3ed21219E (;24;) (type 4) (param i32 i32 i32 i32)
      (local i32 i64 i64)
      global.get $__stack_pointer
      i32.const 16
      i32.sub
      local.tee 4
      global.set $__stack_pointer
      local.get 1
      local.get 2
      local.get 3
      local.get 4
      call $_ZN22wasi_snapshot_preview18bindings7streams5write10wit_import17hab90d072b615f55bE
      block ;; label = @1
        block ;; label = @2
          local.get 4
          i32.load8_u
          i32.eqz
          br_if 0 (;@2;)
          i64.const 1
          local.set 5
          br 1 (;@1;)
        end
        local.get 4
        i32.const 8
        i32.add
        i64.load
        local.set 6
        i64.const 0
        local.set 5
      end
      local.get 0
      local.get 6
      i64.store offset=8
      local.get 0
      local.get 5
      i64.store
      local.get 4
      i32.const 16
      i32.add
      global.set $__stack_pointer
    )
    (func $_ZN97_$LT$core..option..Option$LT$T$GT$$u20$as$u20$wasi_snapshot_preview1..TrappingUnwrap$LT$T$GT$$GT$15trapping_unwrap17h008287a4799fba94E (;25;) (type 9) (param i32 i32) (result i32)
      (local i32)
      global.get $__stack_pointer
      i32.const 32
      i32.sub
      local.tee 2
      global.set $__stack_pointer
      block ;; label = @1
        local.get 0
        br_if 0 (;@1;)
        local.get 2
        i32.const 32
        i32.store8 offset=31
        local.get 2
        i32.const 1701734764
        i32.store offset=27 align=1
        local.get 2
        i64.const 2338600898263348341
        i64.store offset=19 align=1
        local.get 2
        i64.const 7162263158133189730
        i64.store offset=11 align=1
        local.get 2
        i64.const 7018969289221893749
        i64.store offset=3 align=1
        local.get 2
        i32.const 3
        i32.add
        i32.const 29
        call $_ZN22wasi_snapshot_preview16macros5print17h944c62581c012ba1E
        i32.const 110
        call $_ZN22wasi_snapshot_preview16macros10eprint_u3217h05e50f969897603cE
        local.get 2
        i32.const 10
        i32.store8 offset=3
        local.get 2
        i32.const 3
        i32.add
        i32.const 1
        call $_ZN22wasi_snapshot_preview16macros5print17h944c62581c012ba1E
        unreachable
        unreachable
      end
      local.get 2
      i32.const 32
      i32.add
      global.set $__stack_pointer
      local.get 1
    )
    (func $_ZN97_$LT$core..option..Option$LT$T$GT$$u20$as$u20$wasi_snapshot_preview1..TrappingUnwrap$LT$T$GT$$GT$15trapping_unwrap17h694f198625c6a5a2E (;26;) (type 3) (param i32 i32 i32)
      (local i32)
      global.get $__stack_pointer
      i32.const 32
      i32.sub
      local.tee 3
      global.set $__stack_pointer
      block ;; label = @1
        local.get 1
        br_if 0 (;@1;)
        local.get 3
        i32.const 32
        i32.store8 offset=31
        local.get 3
        i32.const 1701734764
        i32.store offset=27 align=1
        local.get 3
        i64.const 2338600898263348341
        i64.store offset=19 align=1
        local.get 3
        i64.const 7162263158133189730
        i64.store offset=11 align=1
        local.get 3
        i64.const 7018969289221893749
        i64.store offset=3 align=1
        local.get 3
        i32.const 3
        i32.add
        i32.const 29
        call $_ZN22wasi_snapshot_preview16macros5print17h944c62581c012ba1E
        i32.const 110
        call $_ZN22wasi_snapshot_preview16macros10eprint_u3217h05e50f969897603cE
        local.get 3
        i32.const 10
        i32.store8 offset=3
        local.get 3
        i32.const 3
        i32.add
        i32.const 1
        call $_ZN22wasi_snapshot_preview16macros5print17h944c62581c012ba1E
        unreachable
        unreachable
      end
      local.get 0
      local.get 2
      i32.store offset=4
      local.get 0
      local.get 1
      i32.store
      local.get 3
      i32.const 32
      i32.add
      global.set $__stack_pointer
    )
    (func $_ZN22wasi_snapshot_preview16macros5print17h944c62581c012ba1E (;27;) (type 2) (param i32 i32)
      local.get 0
      local.get 1
      call $_ZN22wasi_snapshot_preview18bindings6stderr5print10wit_import17ha5429ee8670257c8E
    )
    (func $_ZN22wasi_snapshot_preview16macros10eprint_u3217h05e50f969897603cE (;28;) (type 0) (param i32)
      (local i32)
      global.get $__stack_pointer
      i32.const 16
      i32.sub
      local.tee 1
      global.set $__stack_pointer
      block ;; label = @1
        block ;; label = @2
          local.get 0
          br_if 0 (;@2;)
          local.get 1
          i32.const 48
          i32.store8 offset=15
          local.get 1
          i32.const 15
          i32.add
          i32.const 1
          call $_ZN22wasi_snapshot_preview18bindings6stderr5print10wit_import17ha5429ee8670257c8E
          br 1 (;@1;)
        end
        local.get 0
        call $_ZN22wasi_snapshot_preview16macros10eprint_u3215eprint_u32_impl17h4b91417db7b812a9E.llvm.15940099753716186581
      end
      local.get 1
      i32.const 16
      i32.add
      global.set $__stack_pointer
    )
    (func $_ZN22wasi_snapshot_preview16macros10eprint_u3215eprint_u32_impl17h4b91417db7b812a9E.llvm.15940099753716186581 (;29;) (type 0) (param i32)
      (local i32 i32)
      global.get $__stack_pointer
      i32.const 16
      i32.sub
      local.tee 1
      global.set $__stack_pointer
      block ;; label = @1
        local.get 0
        i32.eqz
        br_if 0 (;@1;)
        local.get 0
        i32.const 10
        i32.div_u
        local.tee 2
        call $_ZN22wasi_snapshot_preview16macros10eprint_u3215eprint_u32_impl17h4b91417db7b812a9E.llvm.15940099753716186581
        local.get 1
        local.get 0
        local.get 2
        i32.const 10
        i32.mul
        i32.sub
        i32.const 48
        i32.or
        i32.store8 offset=15
        local.get 1
        i32.const 15
        i32.add
        i32.const 1
        call $_ZN22wasi_snapshot_preview18bindings6stderr5print10wit_import17ha5429ee8670257c8E
      end
      local.get 1
      i32.const 16
      i32.add
      global.set $__stack_pointer
    )
    (func $get_state_ptr (;30;) (type 1) (result i32)
      global.get $internal_state_ptr
    )
    (func $set_state_ptr (;31;) (type 0) (param i32)
      local.get 0
      global.set $internal_state_ptr
    )
    (func $get_allocation_state (;32;) (type 1) (result i32)
      global.get $allocation_state
    )
    (func $set_allocation_state (;33;) (type 0) (param i32)
      local.get 0
      global.set $allocation_state
    )
    (func $_ZN17compiler_builtins3mem6memcpy17hc6cd8fa7fd481723E (;34;) (type 8) (param i32 i32 i32) (result i32)
      (local i32 i32 i32 i32 i32 i32 i32 i32)
      block ;; label = @1
        block ;; label = @2
          local.get 2
          i32.const 15
          i32.gt_u
          br_if 0 (;@2;)
          local.get 0
          local.set 3
          br 1 (;@1;)
        end
        local.get 0
        i32.const 0
        local.get 0
        i32.sub
        i32.const 3
        i32.and
        local.tee 4
        i32.add
        local.set 5
        block ;; label = @2
          local.get 4
          i32.eqz
          br_if 0 (;@2;)
          local.get 0
          local.set 3
          local.get 1
          local.set 6
          loop ;; label = @3
            local.get 3
            local.get 6
            i32.load8_u
            i32.store8
            local.get 6
            i32.const 1
            i32.add
            local.set 6
            local.get 3
            i32.const 1
            i32.add
            local.tee 3
            local.get 5
            i32.lt_u
            br_if 0 (;@3;)
          end
        end
        local.get 5
        local.get 2
        local.get 4
        i32.sub
        local.tee 7
        i32.const -4
        i32.and
        local.tee 8
        i32.add
        local.set 3
        block ;; label = @2
          block ;; label = @3
            local.get 1
            local.get 4
            i32.add
            local.tee 9
            i32.const 3
            i32.and
            local.tee 6
            i32.eqz
            br_if 0 (;@3;)
            local.get 8
            i32.const 1
            i32.lt_s
            br_if 1 (;@2;)
            local.get 9
            i32.const -4
            i32.and
            local.tee 10
            i32.const 4
            i32.add
            local.set 1
            i32.const 0
            local.get 6
            i32.const 3
            i32.shl
            local.tee 2
            i32.sub
            i32.const 24
            i32.and
            local.set 4
            local.get 10
            i32.load
            local.set 6
            loop ;; label = @4
              local.get 5
              local.get 6
              local.get 2
              i32.shr_u
              local.get 1
              i32.load
              local.tee 6
              local.get 4
              i32.shl
              i32.or
              i32.store
              local.get 1
              i32.const 4
              i32.add
              local.set 1
              local.get 5
              i32.const 4
              i32.add
              local.tee 5
              local.get 3
              i32.lt_u
              br_if 0 (;@4;)
              br 2 (;@2;)
            end
          end
          local.get 8
          i32.const 1
          i32.lt_s
          br_if 0 (;@2;)
          local.get 9
          local.set 1
          loop ;; label = @3
            local.get 5
            local.get 1
            i32.load
            i32.store
            local.get 1
            i32.const 4
            i32.add
            local.set 1
            local.get 5
            i32.const 4
            i32.add
            local.tee 5
            local.get 3
            i32.lt_u
            br_if 0 (;@3;)
          end
        end
        local.get 7
        i32.const 3
        i32.and
        local.set 2
        local.get 9
        local.get 8
        i32.add
        local.set 1
      end
      block ;; label = @1
        local.get 2
        i32.eqz
        br_if 0 (;@1;)
        local.get 3
        local.get 2
        i32.add
        local.set 5
        loop ;; label = @2
          local.get 3
          local.get 1
          i32.load8_u
          i32.store8
          local.get 1
          i32.const 1
          i32.add
          local.set 1
          local.get 3
          i32.const 1
          i32.add
          local.tee 3
          local.get 5
          i32.lt_u
          br_if 0 (;@2;)
        end
      end
      local.get 0
    )
    (func $memcpy (;35;) (type 8) (param i32 i32 i32) (result i32)
      local.get 0
      local.get 1
      local.get 2
      call $_ZN17compiler_builtins3mem6memcpy17hc6cd8fa7fd481723E
    )
    (func $allocate_stack (;36;) (type 10)
      global.get $allocation_state
      i32.const 0
      i32.eq
      if ;; label = @1
        i32.const 1
        global.set $allocation_state
        i32.const 0
        i32.const 0
        i32.const 8
        i32.const 65536
        call $_ZN22wasi_snapshot_preview15State3new12cabi_realloc17h1bae235bf45384adE
        i32.const 65536
        i32.add
        global.set $__stack_pointer
        i32.const 2
        global.set $allocation_state
      end
    )
    (global $__stack_pointer (;0;) (mut i32) i32.const 0)
    (global $internal_state_ptr (;1;) (mut i32) i32.const 0)
    (global $allocation_state (;2;) (mut i32) i32.const 0)
    (export "cabi_import_realloc" (func $cabi_import_realloc))
    (export "cabi_export_realloc" (func $cabi_export_realloc))
    (export "fd_write" (func $fd_write))
    (export "proc_exit" (func $proc_exit))
    (export "environ_get" (func $environ_get))
    (export "environ_sizes_get" (func $environ_sizes_get))
  )
  (core module (;2;)
    (type (;0;) (func (param i32)))
    (type (;1;) (func (param i32 i32 i32 i32)))
    (type (;2;) (func (param i32 i32)))
    (type (;3;) (func (param i32 i32 i32 i32) (result i32)))
    (type (;4;) (func (param i32 i32) (result i32)))
    (type (;5;) (func (param i32)))
    (func $indirect-$root-get-config (;0;) (type 0) (param i32)
      local.get 0
      i32.const 0
      call_indirect (type 0)
    )
    (func $indirect-streams-write (;1;) (type 1) (param i32 i32 i32 i32)
      local.get 0
      local.get 1
      local.get 2
      local.get 3
      i32.const 1
      call_indirect (type 1)
    )
    (func $indirect-stderr-print (;2;) (type 2) (param i32 i32)
      local.get 0
      local.get 1
      i32.const 2
      call_indirect (type 2)
    )
    (func $indirect-environment-get-environment (;3;) (type 0) (param i32)
      local.get 0
      i32.const 3
      call_indirect (type 0)
    )
    (func $adapt-wasi_snapshot_preview1-fd_write (;4;) (type 3) (param i32 i32 i32 i32) (result i32)
      local.get 0
      local.get 1
      local.get 2
      local.get 3
      i32.const 4
      call_indirect (type 3)
    )
    (func $adapt-wasi_snapshot_preview1-environ_get (;5;) (type 4) (param i32 i32) (result i32)
      local.get 0
      local.get 1
      i32.const 5
      call_indirect (type 4)
    )
    (func $adapt-wasi_snapshot_preview1-environ_sizes_get (;6;) (type 4) (param i32 i32) (result i32)
      local.get 0
      local.get 1
      i32.const 6
      call_indirect (type 4)
    )
    (func $adapt-wasi_snapshot_preview1-proc_exit (;7;) (type 5) (param i32)
      local.get 0
      i32.const 7
      call_indirect (type 5)
    )
    (table (;0;) 8 8 funcref)
    (export "0" (func $indirect-$root-get-config))
    (export "1" (func $indirect-streams-write))
    (export "2" (func $indirect-stderr-print))
    (export "3" (func $indirect-environment-get-environment))
    (export "4" (func $adapt-wasi_snapshot_preview1-fd_write))
    (export "5" (func $adapt-wasi_snapshot_preview1-environ_get))
    (export "6" (func $adapt-wasi_snapshot_preview1-environ_sizes_get))
    (export "7" (func $adapt-wasi_snapshot_preview1-proc_exit))
    (export "$imports" (table 0))
  )
  (core module (;3;)
    (type (;0;) (func (param i32)))
    (type (;1;) (func (param i32 i32 i32 i32)))
    (type (;2;) (func (param i32 i32)))
    (type (;3;) (func (param i32 i32 i32 i32) (result i32)))
    (type (;4;) (func (param i32 i32) (result i32)))
    (type (;5;) (func (param i32)))
    (import "" "0" (func (;0;) (type 0)))
    (import "" "1" (func (;1;) (type 1)))
    (import "" "2" (func (;2;) (type 2)))
    (import "" "3" (func (;3;) (type 0)))
    (import "" "4" (func (;4;) (type 3)))
    (import "" "5" (func (;5;) (type 4)))
    (import "" "6" (func (;6;) (type 4)))
    (import "" "7" (func (;7;) (type 5)))
    (import "" "$imports" (table (;0;) 8 8 funcref))
    (elem (;0;) (i32.const 0) func 0 1 2 3 4 5 6 7)
  )
  (core instance (;0;) (instantiate 2))
  (alias core export 0 "0" (core func (;0;)))
  (core instance (;1;)
    (export "get-config" (func 0))
  )
  (alias core export 0 "4" (core func (;1;)))
  (alias core export 0 "5" (core func (;2;)))
  (alias core export 0 "6" (core func (;3;)))
  (alias core export 0 "7" (core func (;4;)))
  (core instance (;2;)
    (export "fd_write" (func 1))
    (export "environ_get" (func 2))
    (export "environ_sizes_get" (func 3))
    (export "proc_exit" (func 4))
  )
  (core instance (;3;) (instantiate 0
      (with "$root" (instance 1))
      (with "wasi_snapshot_preview1" (instance 2))
    )
  )
  (alias core export 3 "memory" (core memory (;0;)))
  (alias core export 3 "cabi_realloc" (core func (;5;)))
  (alias core export 3 "cabi_realloc" (core func (;6;)))
  (core instance (;4;)
    (export "cabi_realloc" (func 6))
  )
  (core instance (;5;)
    (export "memory" (memory 0))
  )
  (alias core export 0 "1" (core func (;7;)))
  (alias export 0 "drop-input-stream" (func (;1;)))
  (core func (;8;) (canon lower (func 1)))
  (alias export 0 "drop-output-stream" (func (;2;)))
  (core func (;9;) (canon lower (func 2)))
  (core instance (;6;)
    (export "write" (func 7))
    (export "drop-input-stream" (func 8))
    (export "drop-output-stream" (func 9))
  )
  (alias export 1 "write-via-stream" (func (;3;)))
  (core func (;10;) (canon lower (func 3)))
  (alias export 1 "append-via-stream" (func (;4;)))
  (core func (;11;) (canon lower (func 4)))
  (alias export 1 "drop-descriptor" (func (;5;)))
  (core func (;12;) (canon lower (func 5)))
  (core instance (;7;)
    (export "write-via-stream" (func 10))
    (export "append-via-stream" (func 11))
    (export "drop-descriptor" (func 12))
  )
  (alias core export 0 "2" (core func (;13;)))
  (core instance (;8;)
    (export "print" (func 13))
  )
  (alias core export 0 "3" (core func (;14;)))
  (core instance (;9;)
    (export "get-environment" (func 14))
  )
  (alias export 3 "exit" (func (;6;)))
  (core func (;15;) (canon lower (func 6)))
  (core instance (;10;)
    (export "exit" (func 15))
  )
  (core instance (;11;) (instantiate 1
      (with "__main_module__" (instance 4))
      (with "env" (instance 5))
      (with "streams" (instance 6))
      (with "filesystem" (instance 7))
      (with "stderr" (instance 8))
      (with "environment" (instance 9))
      (with "exit" (instance 10))
    )
  )
  (alias core export 11 "cabi_export_realloc" (core func (;16;)))
  (alias core export 11 "cabi_import_realloc" (core func (;17;)))
  (alias core export 0 "$imports" (core table (;0;)))
  (core func (;18;) (canon lower (func 0) (memory 0) (realloc 5) string-encoding=utf8))
  (alias export 0 "write" (func (;7;)))
  (core func (;19;) (canon lower (func 7) (memory 0)))
  (alias export 4 "print" (func (;8;)))
  (core func (;20;) (canon lower (func 8) (memory 0) string-encoding=utf8))
  (alias export 2 "get-environment" (func (;9;)))
  (core func (;21;) (canon lower (func 9) (memory 0) (realloc 17) string-encoding=utf8))
  (alias core export 11 "fd_write" (core func (;22;)))
  (alias core export 11 "environ_get" (core func (;23;)))
  (alias core export 11 "environ_sizes_get" (core func (;24;)))
  (alias core export 11 "proc_exit" (core func (;25;)))
  (core instance (;12;)
    (export "$imports" (table 0))
    (export "0" (func 18))
    (export "1" (func 19))
    (export "2" (func 20))
    (export "3" (func 21))
    (export "4" (func 22))
    (export "5" (func 23))
    (export "6" (func 24))
    (export "7" (func 25))
  )
  (core instance (;13;) (instantiate 3
      (with "" (instance 12))
    )
  )
  (type (;11;) (func (param "user" string) (result 7)))
  (alias core export 3 "gen-response" (core func (;26;)))
  (alias core export 3 "cabi_post_gen-response" (core func (;27;)))
  (func (;10;) (type 11) (canon lift (core func 26) (memory 0) (realloc 5) string-encoding=utf8 (post-return 27)))
  (export (;11;) "gen-response" (func 10))
)