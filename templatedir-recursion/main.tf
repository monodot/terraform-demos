resource "template_dir" "demo" {
  source_dir      = "templates"
  destination_dir = "target/output"
  vars = {
    name = "demo"
    food = "beans"
  }
}