# provisioning-custom-commands

A POC to see how to get Terraform to run some custom commands in a post-provisioning step, where these commands are provided dynamically in a variable.

1.  A local file is provisioned by Terraform.

2.  If the variable `extra_content` is set, some extra content is added to the file with `echo` and a redirection `>>`.

3.  If the list `extra_commands` has some commands, they are executed. Commands in this list can't use Terraform variables (`${var.xxx}`) but they can reference environment variables (`$xxx`).
