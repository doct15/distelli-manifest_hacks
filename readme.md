### Distelli manifest hacks


* linux_add_user_does_not_exist.yml

An example that creates a Linux user if the user does not already exist. Tested w/ Amazon (penguin) linux and Ubuntu 14.


* linux_clear_stdout_on_deploy.yml

An example that will clear the Distelli log stdout for the application.


* linux_create_dir_chown_chmod.yml

An example that creates a Linux directory and sets the owner and file permissions.


* linux_create_ec2_instance.yml

An example that launches an ec2 instance during builds after build success.


* linux_reboot_server_on_deploy.yml

An example that safely reboots a server and the deploy will not fail in Distelli.


* linux_update_agent_version.yml

An example that updates the Distelli agent on a server to the latest agent release.
