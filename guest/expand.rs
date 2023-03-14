#![feature(prelude_import)]
#[prelude_import]
use std::prelude::rust_2021::*;
#[macro_use]
extern crate std;
pub struct Response {
    pub content: wit_bindgen::rt::string::String,
}
#[automatically_derived]
impl ::core::clone::Clone for Response {
    #[inline]
    fn clone(&self) -> Response {
        Response {
            content: ::core::clone::Clone::clone(&self.content),
        }
    }
}
impl core::fmt::Debug for Response {
    fn fmt(&self, f: &mut core::fmt::Formatter<'_>) -> core::fmt::Result {
        f.debug_struct("Response")
            .field("content", &self.content)
            .finish()
    }
}
pub struct PluginConfig {
    pub name: wit_bindgen::rt::string::String,
    pub version: wit_bindgen::rt::string::String,
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
impl core::fmt::Debug for PluginConfig {
    fn fmt(&self, f: &mut core::fmt::Formatter<'_>) -> core::fmt::Result {
        f.debug_struct("PluginConfig")
            .field("name", &self.name)
            .field("version", &self.version)
            .finish()
    }
}
#[allow(clippy::all)]
pub fn get_config() -> PluginConfig {
    #[allow(unused_imports)]
    use wit_bindgen::rt::{alloc, vec::Vec, string::String};
    unsafe {
        #[repr(align(4))]
        struct RetArea([u8; 16]);
        let mut ret_area = core::mem::MaybeUninit::<RetArea>::uninit();
        let ptr0 = ret_area.as_mut_ptr() as i32;
        #[link(wasm_import_module = "$root")]
        extern "C" {
            #[link_name = "$root_get-config"]
            fn wit_import(_: i32);
        }
        wit_import(ptr0);
        let len1 = *((ptr0 + 4) as *const i32) as usize;
        let len2 = *((ptr0 + 12) as *const i32) as usize;
        PluginConfig {
            name: {
                #[cfg(debug_assertions)]
                {
                    String::from_utf8(Vec::from_raw_parts(
                        *((ptr0 + 0) as *const i32) as *mut _,
                        len1,
                        len1,
                    ))
                    .unwrap()
                }
            },
            version: {
                #[cfg(debug_assertions)]
                {
                    String::from_utf8(Vec::from_raw_parts(
                        *((ptr0 + 8) as *const i32) as *mut _,
                        len2,
                        len2,
                    ))
                    .unwrap()
                }
            },
        }
    }
}
pub trait SamplePlugin {
    fn gen_response(user: wit_bindgen::rt::string::String) -> Response;
}
#[doc(hidden)]
pub unsafe fn call_gen_response<T: SamplePlugin>(arg0: i32, arg1: i32) -> i32 {
    #[allow(unused_imports)]
    use wit_bindgen::rt::{alloc, vec::Vec, string::String};
    let len0 = arg1 as usize;
    let result1 = T::gen_response({
        #[cfg(debug_assertions)]
        {
            String::from_utf8(Vec::from_raw_parts(arg0 as *mut _, len0, len0)).unwrap()
        }
    });
    let ptr2 = _RET_AREA.0.as_mut_ptr() as i32;
    let Response { content: content3 } = result1;
    let vec4 = (content3.into_bytes()).into_boxed_slice();
    let ptr4 = vec4.as_ptr() as i32;
    let len4 = vec4.len() as i32;
    core::mem::forget(vec4);
    *((ptr2 + 4) as *mut i32) = len4;
    *((ptr2 + 0) as *mut i32) = ptr4;
    ptr2
}
#[doc(hidden)]
pub unsafe fn post_return_gen_response<T: SamplePlugin>(arg0: i32) {
    wit_bindgen::rt::dealloc(
        *((arg0 + 0) as *const i32),
        (*((arg0 + 4) as *const i32)) as usize,
        1,
    );
}
#[allow(unused_imports)]
use wit_bindgen::rt::{alloc, vec::Vec, string::String};
#[repr(align(4))]
struct _RetArea([u8; 8]);
static mut _RET_AREA: _RetArea = _RetArea([0; 8]);
const _ : & str = "default world sample-plugin {\n    record plugin-config {\n        name: string,\n        version: string,\n    }\n    record response {\n        content: string,\n    }\n    import get-config: func() -> plugin-config\n    export gen-response: func(user: string) -> response\n}" ;
pub struct Responder;
impl SamplePlugin for Responder {
    fn gen_response(user: wit_bindgen::rt::string::String) -> Response {
        Response {
            content: get_config().name + &user,
        }
    }
}
const _: () = {
    #[doc(hidden)]
    #[export_name = "gen-response"]
    #[allow(non_snake_case)]
    unsafe extern "C" fn __export_sample_plugin_gen_response(arg0: i32, arg1: i32) -> i32 {
        call_gen_response::<Responder>(arg0, arg1)
    }
    #[doc(hidden)]
    #[export_name = "cabi_post_gen-response"]
    #[allow(non_snake_case)]
    unsafe extern "C" fn __post_return_sample_plugin_gen_response(arg0: i32) {
        post_return_gen_response::<Responder>(arg0)
    }
};
