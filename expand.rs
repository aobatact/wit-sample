#![feature(prelude_import)]
#[prelude_import]
use std::prelude::rust_2021::*;
#[macro_use]
extern crate std;
use wasmtime::component::*;
use wasmtime::{Config, Engine, Store};
use anyhow::Result;
#[component(record)]
pub struct PluginConfig {
    #[component(name = "name")]
    pub name: String,
    #[component(name = "version")]
    pub version: String,
}
#[automatically_derived]
impl ::core::clone::Clone for PluginConfig {
    #[inline]
    fn clone(&self) -> PluginConfig {
        PluginConfig {
            name: ::core::clone::Clone::clone(&self.name),
            version: ::core::clone::Clone::clone(&self.version),
        }
    }
}
unsafe impl wasmtime::component::Lower for PluginConfig {
    #[inline]
    fn lower<T>(
        &self,
        store: &mut wasmtime::StoreContextMut<T>,
        options: &wasmtime::component::__internal::Options,
        dst: &mut std::mem::MaybeUninit<Self::Lower>,
    ) -> wasmtime::component::__internal::anyhow::Result<()> {
        wasmtime::component::Lower::lower(&self.name, store, options, {
            #[allow(unused_unsafe)]
            {
                unsafe {
                    use ::wasmtime::component::__internal::MaybeUninitExt;
                    let m: &mut std::mem::MaybeUninit<_> = dst;
                    m.map(|p| &raw mut (*p).name)
                }
            }
        })?;
        wasmtime::component::Lower::lower(&self.version, store, options, {
            #[allow(unused_unsafe)]
            {
                unsafe {
                    use ::wasmtime::component::__internal::MaybeUninitExt;
                    let m: &mut std::mem::MaybeUninit<_> = dst;
                    m.map(|p| &raw mut (*p).version)
                }
            }
        })?;
        Ok(())
    }
    #[inline]
    fn store<T>(
        &self,
        memory: &mut wasmtime::component::__internal::MemoryMut<'_, T>,
        mut offset: usize,
    ) -> wasmtime::component::__internal::anyhow::Result<()> {
        if true {
            if !(offset % (<Self as wasmtime::component::ComponentType>::ALIGN32 as usize) == 0) {
                :: core :: panicking :: panic ("assertion failed: offset % (<Self as wasmtime::component::ComponentType>::ALIGN32 as usize) == 0")
            };
        };
        wasmtime::component::Lower::store(
            &self.name,
            memory,
            <String as wasmtime::component::ComponentType>::ABI.next_field32_size(&mut offset),
        )?;
        wasmtime::component::Lower::store(
            &self.version,
            memory,
            <String as wasmtime::component::ComponentType>::ABI.next_field32_size(&mut offset),
        )?;
        Ok(())
    }
}
unsafe impl wasmtime::component::Lift for PluginConfig {
    #[inline]
    fn lift(
        store: &wasmtime::component::__internal::StoreOpaque,
        options: &wasmtime::component::__internal::Options,
        src: &Self::Lower,
    ) -> wasmtime::component::__internal::anyhow::Result<Self> {
        Ok(Self {
            name: <String as wasmtime::component::Lift>::lift(store, options, &src.name)?,
            version: <String as wasmtime::component::Lift>::lift(store, options, &src.version)?,
        })
    }
    #[inline]
    fn load(
        memory: &wasmtime::component::__internal::Memory,
        bytes: &[u8],
    ) -> wasmtime::component::__internal::anyhow::Result<Self> {
        if true {
            if !((bytes.as_ptr() as usize)
                % (<Self as wasmtime::component::ComponentType>::ALIGN32 as usize)
                == 0)
            {
                :: core :: panicking :: panic ("assertion failed: (bytes.as_ptr() as usize) %\\n        (<Self as wasmtime::component::ComponentType>::ALIGN32 as usize) == 0")
            };
        };
        let mut offset = 0;
        Ok(Self {
            name: <String as wasmtime::component::Lift>::load(
                memory,
                &bytes[<String as wasmtime::component::ComponentType>::ABI
                    .next_field32_size(&mut offset)..]
                    [..<String as wasmtime::component::ComponentType>::SIZE32],
            )?,
            version: <String as wasmtime::component::Lift>::load(
                memory,
                &bytes[<String as wasmtime::component::ComponentType>::ABI
                    .next_field32_size(&mut offset)..]
                    [..<String as wasmtime::component::ComponentType>::SIZE32],
            )?,
        })
    }
}
const _: () = {
    #[doc(hidden)]
    #[repr(C)]
    pub struct LowerPluginConfig<T0: Copy, T1: Copy> {
        name: T0,
        version: T1,
        _align: [wasmtime::ValRaw; 0],
    }
    #[automatically_derived]
    impl<T0: ::core::clone::Clone + Copy, T1: ::core::clone::Clone + Copy> ::core::clone::Clone
        for LowerPluginConfig<T0, T1>
    {
        #[inline]
        fn clone(&self) -> LowerPluginConfig<T0, T1> {
            LowerPluginConfig {
                name: ::core::clone::Clone::clone(&self.name),
                version: ::core::clone::Clone::clone(&self.version),
                _align: ::core::clone::Clone::clone(&self._align),
            }
        }
    }
    #[automatically_derived]
    impl<T0: ::core::marker::Copy + Copy, T1: ::core::marker::Copy + Copy> ::core::marker::Copy
        for LowerPluginConfig<T0, T1>
    {
    }
    unsafe impl wasmtime::component::ComponentType for PluginConfig {
        type Lower = LowerPluginConfig<
            <String as wasmtime::component::ComponentType>::Lower,
            <String as wasmtime::component::ComponentType>::Lower,
        >;
        const ABI: wasmtime::component::__internal::CanonicalAbiInfo =
            wasmtime::component::__internal::CanonicalAbiInfo::record_static(&[
                <String as wasmtime::component::ComponentType>::ABI,
                <String as wasmtime::component::ComponentType>::ABI,
            ]);
        #[inline]
        fn typecheck(
            ty: &wasmtime::component::__internal::InterfaceType,
            types: &wasmtime::component::__internal::ComponentTypes,
        ) -> wasmtime::component::__internal::anyhow::Result<()> {
            wasmtime::component::__internal::typecheck_record(
                ty,
                types,
                &[
                    (
                        "name",
                        <String as wasmtime::component::ComponentType>::typecheck,
                    ),
                    (
                        "version",
                        <String as wasmtime::component::ComponentType>::typecheck,
                    ),
                ],
            )
        }
    }
};
impl core::fmt::Debug for PluginConfig {
    fn fmt(&self, f: &mut core::fmt::Formatter<'_>) -> core::fmt::Result {
        f.debug_struct("PluginConfig")
            .field("name", &self.name)
            .field("version", &self.version)
            .finish()
    }
}
pub struct SamplePlugin {
    response: wasmtime::component::Func,
}
pub trait SamplePluginImports {
    fn get_config(&mut self) -> anyhow::Result<PluginConfig>;
}
const _: () = { use wasmtime :: component :: __internal :: anyhow ; impl SamplePlugin { pub fn add_to_linker < T , U > (linker : & mut wasmtime :: component :: Linker < T > , get : impl Fn (& mut T) -> & mut U + Send + Sync + Copy + 'static) -> anyhow :: Result < () > where U : SamplePluginImports { Self :: add_root_to_linker (linker , get) ? ; Ok (()) } pub fn add_root_to_linker < T , U > (linker : & mut wasmtime :: component :: Linker < T > , get : impl Fn (& mut T) -> & mut U + Send + Sync + Copy + 'static) -> anyhow :: Result < () > where U : SamplePluginImports { let mut linker = linker . root () ; linker . func_wrap ("get-config" , move | mut caller : wasmtime :: StoreContextMut < '_ , T > , () : () | { let host = get (caller . data_mut ()) ; let r = host . get_config () ; Ok ((r ? ,)) }) ? ; Ok (()) } # [doc = " Instantiates the provided `module` using the specified"] # [doc = " parameters, wrapping up the result in a structure that"] # [doc = " translates between wasm and the host."] pub fn instantiate < T > (mut store : impl wasmtime :: AsContextMut < Data = T > , component : & wasmtime :: component :: Component , linker : & wasmtime :: component :: Linker < T >) -> anyhow :: Result < (Self , wasmtime :: component :: Instance) > { let instance = linker . instantiate (& mut store , component) ? ; Ok ((Self :: new (store , & instance) ? , instance)) } # [doc = " Instantiates a pre-instantiated module using the specified"] # [doc = " parameters, wrapping up the result in a structure that"] # [doc = " translates between wasm and the host."] pub fn instantiate_pre < T > (mut store : impl wasmtime :: AsContextMut < Data = T > , instance_pre : & wasmtime :: component :: InstancePre < T >) -> anyhow :: Result < (Self , wasmtime :: component :: Instance) > { let instance = instance_pre . instantiate (& mut store) ? ; Ok ((Self :: new (store , & instance) ? , instance)) } # [doc = " Low-level creation wrapper for wrapping up the exports"] # [doc = " of the `instance` provided in this structure of wasm"] # [doc = " exports."] # [doc = ""] # [doc = " This function will extract exports from the `instance`"] # [doc = " defined within `store` and wrap them all up in the"] # [doc = " returned structure which can be used to interact with"] # [doc = " the wasm module."] pub fn new (mut store : impl wasmtime :: AsContextMut , instance : & wasmtime :: component :: Instance) -> anyhow :: Result < Self > { let mut store = store . as_context_mut () ; let mut exports = instance . exports (& mut store) ; let mut __exports = exports . root () ; let response = * __exports . typed_func :: < (& str ,) , () > ("response") ? . func () ; Ok (SamplePlugin { response }) } pub fn call_response < S : wasmtime :: AsContextMut > (& self , mut store : S , arg0 : & str) -> anyhow :: Result < () > { let callee = unsafe { wasmtime :: component :: TypedFunc :: < (& str ,) , () > :: new_unchecked (self . response) } ; let () = callee . call (store . as_context_mut () , (arg0 ,)) ? ; callee . post_return (store . as_context_mut ()) ? ; Ok (()) } } };
const _ : & str = "default world sample-plugin {\n    record plugin-config {\n        name: string,\n        version: string,\n    }\n    import get-config: func() -> plugin-config\n    export response: func(user: string)\n}" ;
struct PluginData {
    name: String,
    version: String,
}
impl SamplePluginImports for PluginData {
    fn get_config(&mut self) -> anyhow::Result<PluginConfig> {
        Ok(PluginConfig {
            name: self.name.clone(),
            version: self.version.clone(),
        })
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
        PluginData {
            name: "xxx".to_owned(),
            version: "1.0.0".to_owned(),
        },
    );
    let (bindings, _) = SamplePlugin::instantiate(&mut store, &component, &linker)?;
    bindings.call_response(store, "response")?;
    Ok(())
}
