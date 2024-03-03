resource "local_file" "foo" {
  content  = "Goodbye"
  filename = "${path.module}/foo.${var.instance_name}.bar"

  provisioner "local-exec" {
    command = join(" ", flatten([
      # Add some extra content to the file IF the 'extra_content' variable is not empty
      var.extra_content != "" ? [
        "echo",
        "'${var.extra_content}'",
        ">>",
        "${path.module}/foo.${var.instance_name}.bar",
      ] : [
        "echo",
        "Skipping adding extra content because extra_content is empty"
      ],
      length(var.extra_commands) > 0 ? [
        " && ",
        " echo 'running extra commands' && ",
        join(" && ", var.extra_commands)
      ] : [],
    ]))
    environment = {
      MY_TOKEN = "${var.some_token}"
      INSTANCE_NAME = "${var.instance_name}"
    }
  }
}
