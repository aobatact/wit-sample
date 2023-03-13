
wit_bindgen::generate!("plugin");

pub struct Responder;

impl SamplePlugin for Responder {
    fn set_response(plugin_config: PluginConfig, user: wit_bindgen::rt::string::String) -> Response {
        todo!()
    }
}

// export_host!(Responder);