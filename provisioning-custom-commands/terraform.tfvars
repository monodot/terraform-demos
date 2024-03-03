instance_name="cilla"
some_token="mysecretpassword"

extra_content=", and thanks for all the fish"

# These commands will be executed with INSTANCE_NAME and MY_TOKEN as environment variables
extra_commands=[
    "cat foo.$INSTANCE_NAME.bar",
    "curl --silent -H \"X-Authorization: Bearer $MY_TOKEN\" -H \"X-Instance-Name: $INSTANCE_NAME\" https://httpbin.org/headers",
    "curl --silent https://httpbin.org/anything/$INSTANCE_NAME",
    "echo 'hello world'",
    "date",
]
