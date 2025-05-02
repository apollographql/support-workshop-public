
fn process_request(request) {
  if "x-custom-header" in request.headers {
    let header = request.headers["x-custom-header"];
    print(`x-custom-header: '${header}'`);
  }

}

fn supergraph_service(service) {
  // Rhai convention for creating a function pointer
  const request_callback = Fn("process_request");

  service.map_request(request_callback);
}