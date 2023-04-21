(module
	(func $log_int (import "console" "log") (param i32))
	(func $log_external (import "console" "log") (param externref))
	(func (export "do_stuff") (param externref) (result i32)
		(call $log_external (local.get 0))
		i32.const 14
		i32.const 28
		i32.const 57
		i32.add
		i32.add
		call $log_int
		i32.const 42
	)
)
