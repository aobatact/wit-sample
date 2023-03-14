wit_bindgen::generate!("plugin");

pub struct Responder;

impl SamplePlugin for Responder {
    fn gen_response(user: wit_bindgen::rt::string::String) -> Response {
        Response {
            content: get_config().name + &user,
        }
    }
}

export_sample_plugin!(Responder);
//a
