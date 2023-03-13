use wasmtime::component::*;
use wasmtime::{Config, Engine, Store};
use anyhow::Result;


wasmtime::component::bindgen!("plugin");

struct PluginData {
    name: String,
    version: String,
}

impl SamplePluginImports for PluginData {
    fn get_config(&mut self) -> anyhow::Result<PluginConfig>{
        Ok(PluginConfig { name: self.name.clone(), version: self.version.clone() })
    }
}

fn main() -> Result<()> {
    let mut config = Config::new();
    config.wasm_component_model(true);
    let engine = Engine::new(&config)?;
    let component = Component::from_file(&engine, "./your-component.wasm")?;

    let mut linker = Linker::new(&engine);
    SamplePlugin::add_to_linker(&mut linker, |state: &mut PluginData| state)?;

    let mut store = Store::new(
        &engine,
        PluginData{name : "xxx".to_owned(), version: "1.0.0".to_owned() },
    );
    let (bindings, _) = SamplePlugin::instantiate(&mut store, &component, &linker)?;

    // Note that the `demo` method returns a `&Demo` through which we can
    // run the methods on that interface.
    bindings.call_response(store, "response")?;
    Ok(())
}