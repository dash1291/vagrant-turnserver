# vagrant-turnserver

For the ease of running TURN server locally.

# Usage

`vagrant up` for first time should take care of all the necessary setup (installing dependencies, building turnserver from source, etc)

To run the server -

1. `vagrant ssh` to ssh into the vm.
2. `/home/vagrant/turn-setup/run.sh` in the shell to start the turnserver in deamon mode.
