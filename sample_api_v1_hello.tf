/// SampleAPI /v1/hello

// GET
resource "aws_api_gateway_method" "SampleAPI-GET-v1-hello" {
  rest_api_id   = "${aws_api_gateway_rest_api.SampleAPI.id}"
  resource_id   = "${aws_api_gateway_resource.SampleAPI-v1-hello.id}"
  http_method   = "GET"
  authorization = "NONE"
}

resource "aws_api_gateway_integration" "SampleAPI-GET-v1-hello" {
  rest_api_id = "${aws_api_gateway_rest_api.SampleAPI.id}"
  resource_id = "${aws_api_gateway_resource.SampleAPI-v1-hello.id}"
  http_method = "${aws_api_gateway_method.SampleAPI-GET-v1-hello.http_method}"
  type        = "MOCK"

  request_templates {
    "application/json" = <<EOF
{"statusCode": 200}
EOF
  }
}

resource "aws_api_gateway_method_response" "SampleAPI-GET-v1-hello-200" {
  rest_api_id = "${aws_api_gateway_rest_api.SampleAPI.id}"
  resource_id = "${aws_api_gateway_resource.SampleAPI-v1-hello.id}"
  http_method = "${aws_api_gateway_method.SampleAPI-GET-v1-hello.http_method}"
  status_code = "200"
}

resource "aws_api_gateway_integration_response" "SampleAPI-GET-v1-hello-200" {
  rest_api_id = "${aws_api_gateway_rest_api.SampleAPI.id}"
  resource_id = "${aws_api_gateway_resource.SampleAPI-v1-hello.id}"
  http_method = "${aws_api_gateway_method.SampleAPI-GET-v1-hello.http_method}"
  status_code = "${aws_api_gateway_method_response.SampleAPI-GET-v1-hello-200.status_code}"

  response_templates {
    "application/json" = "${file("json/SampleAPI/v1/hello/get-200.json")}"
  }
}
