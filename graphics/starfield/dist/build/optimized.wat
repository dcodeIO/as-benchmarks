(module
 (type $none_=>_none (func))
 (type $i32_i32_=>_none (func (param i32 i32)))
 (type $i32_=>_none (func (param i32)))
 (type $i32_i32_i32_=>_none (func (param i32 i32 i32)))
 (type $i32_i32_=>_i32 (func (param i32 i32) (result i32)))
 (type $none_=>_f64 (func (result f64)))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (type $none_=>_i32 (func (result i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (import "env" "visit" (func $~lib/rt/tcms/__visit_externals (param i32)))
 (import "env" "seed" (func $~lib/builtins/seed (result f64)))
 (memory $0 1)
 (data (i32.const 1036) "<")
 (data (i32.const 1048) "\01\00\00\00(\00\00\00a\00l\00l\00o\00c\00a\00t\00i\00o\00n\00 \00t\00o\00o\00 \00l\00a\00r\00g\00e")
 (data (i32.const 1100) "<")
 (data (i32.const 1112) "\01\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00t\00c\00m\00s\00.\00t\00s")
 (data (i32.const 1164) "<")
 (data (i32.const 1176) "\01\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00t\00l\00s\00f\00.\00t\00s")
 (data (i32.const 1292) ",")
 (data (i32.const 1304) "\01\00\00\00\1c\00\00\00I\00n\00v\00a\00l\00i\00d\00 \00l\00e\00n\00g\00t\00h")
 (data (i32.const 1340) "<")
 (data (i32.const 1352) "\01\00\00\00&\00\00\00~\00l\00i\00b\00/\00s\00t\00a\00t\00i\00c\00a\00r\00r\00a\00y\00.\00t\00s")
 (data (i32.const 1408) "\05")
 (data (i32.const 1444) "\04A")
 (global $~lib/rt/tlsf/ROOT (mut i32) (i32.const 0))
 (global $~lib/rt/tcms/fromSpace (mut i32) (i32.const 0))
 (global $~lib/rt/tcms/white (mut i32) (i32.const 0))
 (global $~lib/rt/tcms/toSpace (mut i32) (i32.const 0))
 (global $assembly/index/count (mut i32) (i32.const 0))
 (global $assembly/index/stars (mut i32) (i32.const 0))
 (global $~lib/math/random_seeded (mut i32) (i32.const 0))
 (global $~lib/math/random_state0_64 (mut i64) (i64.const 0))
 (global $~lib/math/random_state1_64 (mut i64) (i64.const 0))
 (global $~lib/rt/__rtti_base i32 (i32.const 1408))
 (export "memory" (memory $0))
 (export "__new" (func $~lib/rt/tcms/__new))
 (export "__link" (func $~lib/rt/tcms/__link))
 (export "__collect" (func $~lib/rt/tcms/__collect))
 (export "__visit" (func $~lib/rt/tcms/__visit))
 (export "__rtti_base" (global $~lib/rt/__rtti_base))
 (export "addStar" (func $assembly/index/addStar))
 (export "updateStars" (func $assembly/index/updateStars))
 (export "setStar" (func $assembly/index/setStar))
 (export "clear" (func $assembly/index/clear))
 (start $~start)
 (func $~lib/rt/tlsf/removeBlock (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $1
  i32.load
  i32.const -4
  i32.and
  local.tee $2
  i32.const 256
  i32.lt_u
  if
   local.get $2
   i32.const 4
   i32.shr_u
   local.set $3
  else
   local.get $2
   i32.const 31
   local.get $2
   i32.clz
   i32.sub
   local.tee $2
   i32.const 4
   i32.sub
   i32.shr_u
   i32.const 16
   i32.xor
   local.set $3
   local.get $2
   i32.const 7
   i32.sub
   local.set $4
  end
  local.get $1
  i32.load offset=8
  local.set $2
  local.get $1
  i32.load offset=4
  local.tee $5
  if
   local.get $5
   local.get $2
   i32.store offset=8
  end
  local.get $2
  if
   local.get $2
   local.get $5
   i32.store offset=4
  end
  local.get $1
  local.get $0
  local.get $3
  local.get $4
  i32.const 4
  i32.shl
  i32.add
  i32.const 2
  i32.shl
  i32.add
  i32.load offset=96
  i32.eq
  if
   local.get $0
   local.get $3
   local.get $4
   i32.const 4
   i32.shl
   i32.add
   i32.const 2
   i32.shl
   i32.add
   local.get $2
   i32.store offset=96
   local.get $2
   i32.eqz
   if
    local.get $0
    local.get $4
    i32.const 2
    i32.shl
    i32.add
    local.tee $2
    i32.load offset=4
    i32.const -2
    local.get $3
    i32.rotl
    i32.and
    local.set $1
    local.get $2
    local.get $1
    i32.store offset=4
    local.get $1
    i32.eqz
    if
     local.get $0
     local.get $0
     i32.load
     i32.const -2
     local.get $4
     i32.rotl
     i32.and
     i32.store
    end
   end
  end
 )
 (func $~lib/rt/tlsf/insertBlock (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $1
  i32.load
  local.set $4
  local.get $1
  i32.const 4
  i32.add
  local.get $1
  i32.load
  i32.const -4
  i32.and
  i32.add
  local.tee $5
  i32.load
  local.tee $2
  i32.const 1
  i32.and
  if
   local.get $4
   i32.const -4
   i32.and
   i32.const 4
   i32.add
   local.get $2
   i32.const -4
   i32.and
   i32.add
   local.tee $3
   i32.const 1073741820
   i32.lt_u
   if
    local.get $0
    local.get $5
    call $~lib/rt/tlsf/removeBlock
    local.get $1
    local.get $3
    local.get $4
    i32.const 3
    i32.and
    i32.or
    local.tee $4
    i32.store
    local.get $1
    i32.const 4
    i32.add
    local.get $1
    i32.load
    i32.const -4
    i32.and
    i32.add
    local.tee $5
    i32.load
    local.set $2
   end
  end
  local.get $4
  i32.const 2
  i32.and
  if
   local.get $1
   i32.const 4
   i32.sub
   i32.load
   local.tee $3
   i32.load
   local.tee $7
   i32.const -4
   i32.and
   i32.const 4
   i32.add
   local.get $4
   i32.const -4
   i32.and
   i32.add
   local.tee $8
   i32.const 1073741820
   i32.lt_u
   if
    local.get $0
    local.get $3
    call $~lib/rt/tlsf/removeBlock
    local.get $3
    local.get $8
    local.get $7
    i32.const 3
    i32.and
    i32.or
    local.tee $4
    i32.store
    local.get $3
    local.set $1
   end
  end
  local.get $5
  local.get $2
  i32.const 2
  i32.or
  i32.store
  local.get $5
  i32.const 4
  i32.sub
  local.get $1
  i32.store
  local.get $4
  i32.const -4
  i32.and
  local.tee $3
  i32.const 256
  i32.lt_u
  if
   local.get $3
   i32.const 4
   i32.shr_u
   local.set $3
  else
   local.get $3
   i32.const 31
   local.get $3
   i32.clz
   i32.sub
   local.tee $4
   i32.const 4
   i32.sub
   i32.shr_u
   i32.const 16
   i32.xor
   local.set $3
   local.get $4
   i32.const 7
   i32.sub
   local.set $6
  end
  local.get $0
  local.get $3
  local.get $6
  i32.const 4
  i32.shl
  i32.add
  i32.const 2
  i32.shl
  i32.add
  i32.load offset=96
  local.set $4
  local.get $1
  i32.const 0
  i32.store offset=4
  local.get $1
  local.get $4
  i32.store offset=8
  local.get $4
  if
   local.get $4
   local.get $1
   i32.store offset=4
  end
  local.get $0
  local.get $3
  local.get $6
  i32.const 4
  i32.shl
  i32.add
  i32.const 2
  i32.shl
  i32.add
  local.get $1
  i32.store offset=96
  local.get $0
  local.get $0
  i32.load
  i32.const 1
  local.get $6
  i32.shl
  i32.or
  i32.store
  local.get $0
  local.get $6
  i32.const 2
  i32.shl
  i32.add
  local.tee $0
  local.get $0
  i32.load offset=4
  i32.const 1
  local.get $3
  i32.shl
  i32.or
  i32.store offset=4
 )
 (func $~lib/rt/tlsf/addMemory (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  local.get $1
  i32.const 19
  i32.add
  i32.const -16
  i32.and
  i32.const 4
  i32.sub
  local.set $1
  local.get $2
  i32.const -16
  i32.and
  local.get $0
  i32.load offset=1568
  local.tee $2
  if
   local.get $2
   local.get $1
   i32.const 16
   i32.sub
   i32.eq
   if
    local.get $2
    i32.load
    local.set $3
    local.get $1
    i32.const 16
    i32.sub
    local.set $1
   end
  end
  local.get $1
  i32.sub
  local.tee $2
  i32.const 20
  i32.lt_u
  if
   return
  end
  local.get $1
  local.get $3
  i32.const 2
  i32.and
  local.get $2
  i32.const 8
  i32.sub
  local.tee $2
  i32.const 1
  i32.or
  i32.or
  i32.store
  local.get $1
  i32.const 0
  i32.store offset=4
  local.get $1
  i32.const 0
  i32.store offset=8
  local.get $2
  local.get $1
  i32.const 4
  i32.add
  i32.add
  local.tee $2
  i32.const 2
  i32.store
  local.get $0
  local.get $2
  i32.store offset=1568
  local.get $0
  local.get $1
  call $~lib/rt/tlsf/insertBlock
 )
 (func $~lib/rt/tlsf/initialize
  (local $0 i32)
  (local $1 i32)
  memory.size
  local.tee $0
  i32.const 1
  i32.lt_s
  if (result i32)
   i32.const 1
   local.get $0
   i32.sub
   memory.grow
   i32.const 0
   i32.lt_s
  else
   i32.const 0
  end
  if
   unreachable
  end
  i32.const 1456
  i32.const 0
  i32.store
  i32.const 3024
  i32.const 0
  i32.store
  loop $for-loop|0
   local.get $1
   i32.const 23
   i32.lt_u
   if
    local.get $1
    i32.const 2
    i32.shl
    i32.const 1456
    i32.add
    i32.const 0
    i32.store offset=4
    i32.const 0
    local.set $0
    loop $for-loop|1
     local.get $0
     i32.const 16
     i32.lt_u
     if
      local.get $0
      local.get $1
      i32.const 4
      i32.shl
      i32.add
      i32.const 2
      i32.shl
      i32.const 1456
      i32.add
      i32.const 0
      i32.store offset=96
      local.get $0
      i32.const 1
      i32.add
      local.set $0
      br $for-loop|1
     end
    end
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $for-loop|0
   end
  end
  i32.const 1456
  i32.const 3028
  memory.size
  i32.const 16
  i32.shl
  call $~lib/rt/tlsf/addMemory
  i32.const 1456
  global.set $~lib/rt/tlsf/ROOT
 )
 (func $~lib/rt/tlsf/searchBlock (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $1
  i32.const 256
  i32.lt_u
  if
   local.get $1
   i32.const 4
   i32.shr_u
   local.set $1
  else
   local.get $1
   i32.const 536870910
   i32.lt_u
   if
    local.get $1
    i32.const 1
    i32.const 27
    local.get $1
    i32.clz
    i32.sub
    i32.shl
    i32.add
    i32.const 1
    i32.sub
    local.set $1
   end
   local.get $1
   i32.const 31
   local.get $1
   i32.clz
   i32.sub
   local.tee $2
   i32.const 4
   i32.sub
   i32.shr_u
   i32.const 16
   i32.xor
   local.set $1
   local.get $2
   i32.const 7
   i32.sub
   local.set $2
  end
  local.get $0
  local.get $2
  i32.const 2
  i32.shl
  i32.add
  i32.load offset=4
  i32.const -1
  local.get $1
  i32.shl
  i32.and
  local.tee $1
  if (result i32)
   local.get $0
   local.get $1
   i32.ctz
   local.get $2
   i32.const 4
   i32.shl
   i32.add
   i32.const 2
   i32.shl
   i32.add
   i32.load offset=96
  else
   local.get $0
   i32.load
   i32.const -1
   local.get $2
   i32.const 1
   i32.add
   i32.shl
   i32.and
   local.tee $1
   if (result i32)
    local.get $0
    local.get $1
    i32.ctz
    local.tee $1
    i32.const 4
    i32.shl
    local.get $0
    local.get $1
    i32.const 2
    i32.shl
    i32.add
    i32.load offset=4
    i32.ctz
    i32.add
    i32.const 2
    i32.shl
    i32.add
    i32.load offset=96
   else
    i32.const 0
   end
  end
 )
 (func $~lib/rt/tcms/__new (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  i32.const 1073741804
  i32.ge_u
  if
   i32.const 1056
   i32.const 1120
   i32.const 90
   i32.const 31
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 16
  i32.add
  local.set $2
  global.get $~lib/rt/tlsf/ROOT
  i32.eqz
  if
   call $~lib/rt/tlsf/initialize
  end
  global.get $~lib/rt/tlsf/ROOT
  local.set $3
  local.get $2
  i32.const 1073741820
  i32.ge_u
  if
   i32.const 1056
   i32.const 1184
   i32.const 461
   i32.const 30
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  local.tee $4
  local.get $2
  i32.const 12
  i32.le_u
  if (result i32)
   i32.const 12
  else
   local.get $2
   i32.const 19
   i32.add
   i32.const -16
   i32.and
   i32.const 4
   i32.sub
  end
  local.tee $3
  call $~lib/rt/tlsf/searchBlock
  local.tee $2
  i32.eqz
  if
   local.get $3
   i32.const 536870910
   i32.lt_u
   if (result i32)
    local.get $3
    i32.const 1
    i32.const 27
    local.get $3
    i32.clz
    i32.sub
    i32.shl
    i32.const 1
    i32.sub
    i32.add
   else
    local.get $3
   end
   i32.const 4
   memory.size
   local.tee $2
   i32.const 16
   i32.shl
   i32.const 4
   i32.sub
   local.get $4
   i32.load offset=1568
   i32.ne
   i32.shl
   i32.add
   i32.const 65535
   i32.add
   i32.const -65536
   i32.and
   i32.const 16
   i32.shr_u
   local.set $5
   local.get $2
   local.get $5
   local.get $2
   local.get $5
   i32.gt_s
   select
   memory.grow
   i32.const 0
   i32.lt_s
   if
    local.get $5
    memory.grow
    i32.const 0
    i32.lt_s
    if
     unreachable
    end
   end
   local.get $4
   local.get $2
   i32.const 16
   i32.shl
   memory.size
   i32.const 16
   i32.shl
   call $~lib/rt/tlsf/addMemory
   local.get $4
   local.get $3
   call $~lib/rt/tlsf/searchBlock
   local.set $2
  end
  local.get $2
  i32.load
  drop
  local.get $4
  local.get $2
  call $~lib/rt/tlsf/removeBlock
  local.get $2
  i32.load
  local.tee $5
  i32.const -4
  i32.and
  local.get $3
  i32.sub
  local.tee $6
  i32.const 16
  i32.ge_u
  if
   local.get $2
   local.get $3
   local.get $5
   i32.const 2
   i32.and
   i32.or
   i32.store
   local.get $3
   local.get $2
   i32.const 4
   i32.add
   i32.add
   local.tee $3
   local.get $6
   i32.const 4
   i32.sub
   i32.const 1
   i32.or
   i32.store
   local.get $4
   local.get $3
   call $~lib/rt/tlsf/insertBlock
  else
   local.get $2
   local.get $5
   i32.const -2
   i32.and
   i32.store
   local.get $2
   i32.const 4
   i32.add
   local.tee $3
   local.get $2
   i32.load
   i32.const -4
   i32.and
   i32.add
   local.get $3
   local.get $2
   i32.load
   i32.const -4
   i32.and
   i32.add
   i32.load
   i32.const -3
   i32.and
   i32.store
  end
  local.get $2
  local.get $1
  i32.store offset=12
  local.get $2
  local.get $0
  i32.store offset=16
  global.get $~lib/rt/tcms/fromSpace
  local.tee $1
  i32.load offset=8
  local.set $0
  local.get $2
  local.get $1
  global.get $~lib/rt/tcms/white
  i32.or
  i32.store offset=4
  local.get $2
  local.get $0
  i32.store offset=8
  local.get $0
  local.get $2
  local.get $0
  i32.load offset=4
  i32.const 3
  i32.and
  i32.or
  i32.store offset=4
  local.get $1
  local.get $2
  i32.store offset=8
  local.get $2
  i32.const 20
  i32.add
 )
 (func $~lib/rt/tcms/__link (param $0 i32) (param $1 i32) (param $2 i32)
  nop
 )
 (func $~lib/rt/tcms/__collect
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  global.get $assembly/index/stars
  local.tee $0
  if
   local.get $0
   if
    global.get $~lib/rt/tcms/white
    local.get $0
    i32.const 20
    i32.sub
    local.tee $2
    i32.load offset=4
    i32.const 3
    i32.and
    i32.eq
    if
     local.get $2
     i32.load offset=4
     i32.const -4
     i32.and
     local.tee $1
     if
      local.get $1
      local.get $2
      i32.load offset=8
      local.tee $0
      i32.store offset=8
      local.get $0
      local.get $1
      local.get $0
      i32.load offset=4
      i32.const 3
      i32.and
      i32.or
      i32.store offset=4
     end
     global.get $~lib/rt/tcms/toSpace
     local.tee $0
     i32.load offset=8
     local.set $1
     local.get $2
     local.get $0
     global.get $~lib/rt/tcms/white
     i32.eqz
     i32.or
     i32.store offset=4
     local.get $2
     local.get $1
     i32.store offset=8
     local.get $1
     local.get $2
     local.get $1
     i32.load offset=4
     i32.const 3
     i32.and
     i32.or
     i32.store offset=4
     local.get $0
     local.get $2
     i32.store offset=8
    end
   end
  end
  global.get $~lib/rt/tcms/white
  i32.const 1296
  i32.load
  i32.const 3
  i32.and
  i32.eq
  if
   i32.const 1296
   i32.load
   i32.const -4
   i32.and
   local.tee $1
   if
    local.get $1
    i32.const 1300
    i32.load
    local.tee $0
    i32.store offset=8
    local.get $0
    local.get $1
    local.get $0
    i32.load offset=4
    i32.const 3
    i32.and
    i32.or
    i32.store offset=4
   end
   global.get $~lib/rt/tcms/toSpace
   local.tee $0
   i32.load offset=8
   local.set $1
   i32.const 1296
   local.get $0
   global.get $~lib/rt/tcms/white
   i32.eqz
   i32.or
   i32.store
   i32.const 1300
   local.get $1
   i32.store
   local.get $1
   local.get $1
   i32.load offset=4
   i32.const 3
   i32.and
   i32.const 1292
   i32.or
   i32.store offset=4
   local.get $0
   i32.const 1292
   i32.store offset=8
  end
  i32.const 0
  call $~lib/rt/tcms/__visit_externals
  global.get $~lib/rt/tcms/white
  i32.eqz
  local.set $6
  global.get $~lib/rt/tcms/toSpace
  local.tee $7
  i32.load offset=4
  i32.const -4
  i32.and
  local.set $1
  loop $while-continue|0
   local.get $1
   local.get $7
   i32.ne
   if
    local.get $1
    local.get $6
    local.get $1
    i32.load offset=4
    i32.const -4
    i32.and
    i32.or
    i32.store offset=4
    block $__inlined_func$~lib/rt/__visit_members
     block $invalid
      block $~lib/staticarray/StaticArray<assembly/index/Star>
       block $~lib/arraybuffer/ArrayBufferView
        local.get $1
        i32.const 20
        i32.add
        local.tee $0
        i32.const 8
        i32.sub
        i32.load
        br_table $__inlined_func$~lib/rt/__visit_members $__inlined_func$~lib/rt/__visit_members $~lib/arraybuffer/ArrayBufferView $__inlined_func$~lib/rt/__visit_members $~lib/staticarray/StaticArray<assembly/index/Star> $invalid
       end
       local.get $0
       i32.load
       local.tee $0
       if
        local.get $0
        if
         global.get $~lib/rt/tcms/white
         local.get $0
         i32.const 20
         i32.sub
         local.tee $3
         i32.load offset=4
         i32.const 3
         i32.and
         i32.eq
         if
          local.get $3
          i32.load offset=4
          i32.const -4
          i32.and
          local.tee $2
          if
           local.get $2
           local.get $3
           i32.load offset=8
           local.tee $0
           i32.store offset=8
           local.get $0
           local.get $2
           local.get $0
           i32.load offset=4
           i32.const 3
           i32.and
           i32.or
           i32.store offset=4
          end
          global.get $~lib/rt/tcms/toSpace
          local.tee $0
          i32.load offset=8
          local.set $2
          local.get $3
          local.get $0
          global.get $~lib/rt/tcms/white
          i32.eqz
          i32.or
          i32.store offset=4
          local.get $3
          local.get $2
          i32.store offset=8
          local.get $2
          local.get $3
          local.get $2
          i32.load offset=4
          i32.const 3
          i32.and
          i32.or
          i32.store offset=4
          local.get $0
          local.get $3
          i32.store offset=8
         end
        end
       end
       br $__inlined_func$~lib/rt/__visit_members
      end
      local.get $0
      local.tee $2
      local.get $0
      i32.const 20
      i32.sub
      i32.load offset=16
      i32.add
      local.set $3
      loop $while-continue|00
       local.get $2
       local.get $3
       i32.lt_u
       if
        local.get $2
        i32.load
        local.tee $0
        if
         local.get $0
         if
          global.get $~lib/rt/tcms/white
          local.get $0
          i32.const 20
          i32.sub
          local.tee $5
          i32.load offset=4
          i32.const 3
          i32.and
          i32.eq
          if
           local.get $5
           i32.load offset=4
           i32.const -4
           i32.and
           local.tee $4
           if
            local.get $4
            local.get $5
            i32.load offset=8
            local.tee $0
            i32.store offset=8
            local.get $0
            local.get $4
            local.get $0
            i32.load offset=4
            i32.const 3
            i32.and
            i32.or
            i32.store offset=4
           end
           global.get $~lib/rt/tcms/toSpace
           local.tee $0
           i32.load offset=8
           local.set $4
           local.get $5
           local.get $0
           global.get $~lib/rt/tcms/white
           i32.eqz
           i32.or
           i32.store offset=4
           local.get $5
           local.get $4
           i32.store offset=8
           local.get $4
           local.get $5
           local.get $4
           i32.load offset=4
           i32.const 3
           i32.and
           i32.or
           i32.store offset=4
           local.get $0
           local.get $5
           i32.store offset=8
          end
         end
        end
        local.get $2
        i32.const 4
        i32.add
        local.set $2
        br $while-continue|00
       end
      end
      br $__inlined_func$~lib/rt/__visit_members
     end
     unreachable
    end
    local.get $1
    i32.load offset=4
    i32.const -4
    i32.and
    local.set $1
    br $while-continue|0
   end
  end
  global.get $~lib/rt/tcms/fromSpace
  local.tee $4
  i32.load offset=4
  i32.const -4
  i32.and
  local.set $1
  loop $while-continue|1
   local.get $1
   local.get $4
   i32.ne
   if
    local.get $1
    i32.load offset=4
    i32.const -4
    i32.and
    local.get $1
    i32.const 1452
    i32.gt_u
    if
     local.get $1
     i32.const 4
     i32.add
     local.tee $2
     i32.const 1452
     i32.ge_u
     if
      global.get $~lib/rt/tlsf/ROOT
      i32.eqz
      if
       call $~lib/rt/tlsf/initialize
      end
      global.get $~lib/rt/tlsf/ROOT
      local.get $2
      i32.const 4
      i32.sub
      local.set $3
      local.get $2
      i32.const 15
      i32.and
      i32.eqz
      i32.const 0
      local.get $2
      select
      if
       local.get $3
       i32.load
       drop
      end
      local.get $3
      local.get $3
      i32.load
      i32.const 1
      i32.or
      i32.store
      local.get $3
      call $~lib/rt/tlsf/insertBlock
     end
    end
    local.set $1
    br $while-continue|1
   end
  end
  local.get $4
  local.get $4
  i32.store offset=4
  local.get $4
  local.get $4
  i32.store offset=8
  local.get $7
  global.set $~lib/rt/tcms/fromSpace
  local.get $4
  global.set $~lib/rt/tcms/toSpace
  local.get $6
  global.set $~lib/rt/tcms/white
 )
 (func $~lib/rt/tcms/__visit (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  i32.eqz
  if
   return
  end
  global.get $~lib/rt/tcms/white
  local.get $0
  i32.const 20
  i32.sub
  local.tee $0
  i32.load offset=4
  i32.const 3
  i32.and
  i32.eq
  if
   local.get $0
   i32.load offset=4
   i32.const -4
   i32.and
   local.tee $1
   if
    local.get $1
    local.get $0
    i32.load offset=8
    local.tee $2
    i32.store offset=8
    local.get $2
    local.get $1
    local.get $2
    i32.load offset=4
    i32.const 3
    i32.and
    i32.or
    i32.store offset=4
   end
   global.get $~lib/rt/tcms/toSpace
   local.tee $2
   i32.load offset=8
   local.set $1
   local.get $0
   local.get $2
   global.get $~lib/rt/tcms/white
   i32.eqz
   i32.or
   i32.store offset=4
   local.get $0
   local.get $1
   i32.store offset=8
   local.get $1
   local.get $0
   local.get $1
   i32.load offset=4
   i32.const 3
   i32.and
   i32.or
   i32.store offset=4
   local.get $2
   local.get $0
   i32.store offset=8
  end
 )
 (func $~lib/staticarray/StaticArray<assembly/index/Star>#constructor (result i32)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  i32.const 3000
  i32.const 4
  call $~lib/rt/tcms/__new
  local.tee $2
  i32.const 0
  i32.store8
  local.get $2
  i32.const 2996
  i32.add
  local.tee $0
  i32.const 0
  i32.store8 offset=3
  local.get $2
  i32.const 0
  i32.store8 offset=1
  local.get $2
  i32.const 0
  i32.store8 offset=2
  local.get $0
  i32.const 0
  i32.store8 offset=2
  local.get $0
  i32.const 0
  i32.store8 offset=1
  local.get $2
  i32.const 0
  i32.store8 offset=3
  local.get $0
  i32.const 0
  i32.store8
  local.get $2
  i32.const 0
  local.get $2
  i32.sub
  i32.const 3
  i32.and
  local.tee $1
  i32.add
  local.tee $0
  i32.const 0
  i32.store
  local.get $0
  i32.const 3000
  local.get $1
  i32.sub
  i32.const -4
  i32.and
  local.tee $3
  i32.add
  i32.const 28
  i32.sub
  local.tee $1
  i32.const 0
  i32.store offset=24
  block $~lib/util/memory/memset|inlined.0
   local.get $3
   i32.const 8
   i32.le_u
   br_if $~lib/util/memory/memset|inlined.0
   local.get $0
   i32.const 0
   i32.store offset=4
   local.get $0
   i32.const 0
   i32.store offset=8
   local.get $1
   i32.const 0
   i32.store offset=16
   local.get $1
   i32.const 0
   i32.store offset=20
   local.get $3
   i32.const 24
   i32.le_u
   br_if $~lib/util/memory/memset|inlined.0
   local.get $0
   i32.const 0
   i32.store offset=12
   local.get $0
   i32.const 0
   i32.store offset=16
   local.get $0
   i32.const 0
   i32.store offset=20
   local.get $0
   i32.const 0
   i32.store offset=24
   local.get $1
   i32.const 0
   i32.store
   local.get $1
   i32.const 0
   i32.store offset=4
   local.get $1
   i32.const 0
   i32.store offset=8
   local.get $1
   i32.const 0
   i32.store offset=12
   local.get $0
   local.get $0
   i32.const 4
   i32.and
   i32.const 24
   i32.add
   local.tee $1
   i32.add
   local.set $0
   local.get $3
   local.get $1
   i32.sub
   local.set $1
   loop $while-continue|0
    local.get $1
    i32.const 32
    i32.ge_u
    if
     local.get $0
     i64.const 0
     i64.store
     local.get $0
     i64.const 0
     i64.store offset=8
     local.get $0
     i64.const 0
     i64.store offset=16
     local.get $0
     i64.const 0
     i64.store offset=24
     local.get $1
     i32.const 32
     i32.sub
     local.set $1
     local.get $0
     i32.const 32
     i32.add
     local.set $0
     br $while-continue|0
    end
   end
  end
  local.get $2
 )
 (func $~lib/math/NativeMath.random (result f64)
  (local $0 i64)
  (local $1 i64)
  (local $2 i32)
  global.get $~lib/math/random_seeded
  i32.eqz
  if
   call $~lib/builtins/seed
   i64.reinterpret_f64
   local.set $1
   i32.const 1
   global.set $~lib/math/random_seeded
   local.get $1
   local.get $1
   i64.const 33
   i64.shr_u
   i64.xor
   i64.const -49064778989728563
   i64.mul
   local.tee $0
   local.get $0
   i64.const 33
   i64.shr_u
   i64.xor
   i64.const -4265267296055464877
   i64.mul
   local.tee $0
   local.get $0
   i64.const 33
   i64.shr_u
   i64.xor
   global.set $~lib/math/random_state0_64
   global.get $~lib/math/random_state0_64
   i64.const -1
   i64.xor
   local.tee $0
   local.get $0
   i64.const 33
   i64.shr_u
   i64.xor
   i64.const -49064778989728563
   i64.mul
   local.tee $0
   local.get $0
   i64.const 33
   i64.shr_u
   i64.xor
   i64.const -4265267296055464877
   i64.mul
   local.tee $0
   local.get $0
   i64.const 33
   i64.shr_u
   i64.xor
   global.set $~lib/math/random_state1_64
  end
  global.get $~lib/math/random_state0_64
  local.set $0
  global.get $~lib/math/random_state1_64
  local.tee $1
  global.set $~lib/math/random_state0_64
  local.get $1
  local.get $0
  local.get $0
  i64.const 23
  i64.shl
  i64.xor
  local.tee $0
  local.get $0
  i64.const 17
  i64.shr_u
  i64.xor
  i64.xor
  local.get $1
  i64.const 26
  i64.shr_u
  i64.xor
  global.set $~lib/math/random_state1_64
  local.get $1
  i64.const 12
  i64.shr_u
  i64.const 4607182418800017408
  i64.or
  f64.reinterpret_i64
  f64.const 1
  f64.sub
 )
 (func $assembly/index/addStar
  (local $0 i32)
  (local $1 f64)
  (local $2 f64)
  global.get $assembly/index/count
  i32.const 750
  i32.lt_s
  if
   global.get $assembly/index/stars
   global.get $assembly/index/count
   i32.const 2
   i32.shl
   i32.add
   call $~lib/math/NativeMath.random
   f64.const 10
   f64.mul
   f64.const -5
   f64.add
   local.set $1
   call $~lib/math/NativeMath.random
   f64.const 10
   f64.mul
   f64.const -5
   f64.add
   local.set $2
   i32.const 40
   i32.const 3
   call $~lib/rt/tcms/__new
   local.tee $0
   f64.const 0
   f64.store
   local.get $0
   f64.const 0
   f64.store offset=8
   local.get $0
   local.get $1
   f64.store offset=16
   local.get $0
   local.get $2
   f64.store offset=24
   local.get $0
   f64.const 0
   f64.store offset=32
   local.get $0
   i32.store
   global.get $assembly/index/count
   i32.const 1
   i32.add
   global.set $assembly/index/count
  end
 )
 (func $assembly/index/updateStars
  (local $0 i32)
  (local $1 i32)
  (local $2 f64)
  loop $for-loop|0
   local.get $1
   global.get $assembly/index/count
   i32.lt_s
   if
    global.get $assembly/index/stars
    local.get $1
    i32.const 2
    i32.shl
    i32.add
    i32.load
    local.tee $0
    f64.load
    local.get $0
    f64.load offset=16
    f64.add
    local.set $2
    local.get $0
    local.get $2
    f64.store
    local.get $0
    local.get $0
    f64.load offset=8
    local.get $0
    f64.load offset=24
    f64.add
    f64.store offset=8
    local.get $0
    f64.load
    f64.const 400
    f64.gt
    if (result i32)
     i32.const 1
    else
     local.get $0
     f64.load
     f64.const -400
     f64.lt
    end
    if
     local.get $0
     f64.const 0
     f64.store
     local.get $0
     f64.const 0
     f64.store offset=8
    end
    local.get $0
    local.get $0
    f64.load
    f64.abs
    local.get $0
    f64.load offset=8
    f64.abs
    f64.add
    f64.const 5
    f64.div
    f64.floor
    f64.store offset=32
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $for-loop|0
   end
  end
 )
 (func $assembly/index/setStar (param $0 i32)
  i32.const 0
  global.get $assembly/index/stars
  local.get $0
  i32.const 2
  i32.shl
  i32.add
  i32.load
  local.tee $0
  f64.load
  f64.store
  i32.const 8
  local.get $0
  f64.load offset=8
  f64.store
  i32.const 16
  local.get $0
  f64.load offset=32
  f64.store
 )
 (func $assembly/index/clear
  call $~lib/staticarray/StaticArray<assembly/index/Star>#constructor
  global.set $assembly/index/stars
  i32.const 0
  global.set $assembly/index/count
 )
 (func $~start
  i32.const 1236
  i32.const 1232
  i32.store
  i32.const 1240
  i32.const 1232
  i32.store
  i32.const 1232
  global.set $~lib/rt/tcms/fromSpace
  i32.const 1268
  i32.const 1264
  i32.store
  i32.const 1272
  i32.const 1264
  i32.store
  i32.const 1264
  global.set $~lib/rt/tcms/toSpace
  i32.const 1
  memory.grow
  drop
  call $~lib/staticarray/StaticArray<assembly/index/Star>#constructor
  global.set $assembly/index/stars
 )
)
