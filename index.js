//import {do_stuff} from "./test.wasm";
WebAssembly.instantiateStreaming(fetch("test.wasm"), {
	console,
}).then(
	(obj) => console.log("Returned:", obj.instance.exports.do_stuff("Hello, world"))
);
