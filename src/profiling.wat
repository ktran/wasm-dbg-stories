(module
  (func $imports.func (;0;) (import "imports" "func") (param i32) (param i32) (param i32) (result i32))
  (memory $memory0 1)
  (func $main (;0;) (export "main") (param $n (;0;) i32) (param $x (;0;) i32) (param $y (;0;) i32) (result i32)
    (local $i i32)
    (local $res i32)
    i32.const 0
    local.set $i
    i32.const 0
    local.set $res
    (block
      (loop
        (call $imports.func (local.get $res) (local.get $x) (local.get $y))
        local.set $res
        i32.const 1
        local.get $i
        i32.add
        local.set $i
        (br_if 1 (i32.eq (get_local $i) (local.get $n)))
        (br 0)
      )
    )
    local.get $res
  )
)