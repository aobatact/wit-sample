guest_src := $(wildcard guest/src/*.rs) $(wildcard guest/src/**/*.rs)
host_src := $(wildcard src/*.rs) $(wildcard src/**/*.rs)

target/wasm32-wasi/debug/wit_sample_guest.wasm: $(guest_src)
	cargo build --target wasm32-wasi --package wit-sample-guest

guest_build: target/wasm32-wasi/debug/wit_sample_guest.wasm

guest/expand.rs: $(guest_src)
	cargo expand --lib --package wit-sample-guest > guest/expand.rs

wasm/guest.wasm: target/wasm32-wasi/debug/wit_sample_guest.wasm
	wasm-tools component new ./target/wasm32-wasi/debug/wit_sample_guest.wasm -o wasm/guest.wasm --adapt wasm/wasi_snapshot_preview1.wasm

wasm/guest.wast: wasm/guest.wasm
	 wasm-tools print wasm/guest.wasm > wasm/guest.wast

run: wasm/guest.wasm $(host_src)
	cargo run

expand.rs: $(host_src)
	cargo expand > expand.rs