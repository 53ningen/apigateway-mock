// REST API
resource "aws_api_gateway_rest_api" "SampleAPI" {
  name        = "${terraform.env}-SampleAPI"
  description = "This is my sample api"
}

// RESOURCE /v1
resource "aws_api_gateway_resource" "SampleAPI-v1" {
  rest_api_id = "${aws_api_gateway_rest_api.SampleAPI.id}"
  parent_id   = "${aws_api_gateway_rest_api.SampleAPI.root_resource_id}"
  path_part   = "v1"
}

// RESOURCE /v1/hello
resource "aws_api_gateway_resource" "SampleAPI-v1-hello" {
  rest_api_id = "${aws_api_gateway_rest_api.SampleAPI.id}"
  parent_id   = "${aws_api_gateway_resource.SampleAPI-v1.id}"
  path_part   = "hello"
}
