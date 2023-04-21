(module
	(func $log_int (import "console" "log") (param i32))
	(func (export "do_stuff") (result i32)
		i32.const 14
		i32.const 28
		i32.const 57
		i32.add
		i32.add
		call $log_int
		i32.const 42
	)
)
