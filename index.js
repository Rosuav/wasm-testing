console.log("index working");
WebAssembly.instantiateStreaming(fetch("test.wasm"), {
	console,
}).then(
	(obj) => console.log("Returned:", obj.instance.exports.do_stuff("Hello, world"))
);
