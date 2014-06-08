#!/bin/sh
# update base system and install ocaml
sudo apt-get -y update
sudo apt-get -y install build-essential m4 ocaml ocaml-native-compilers camlp4-extra
# install opam
pushd /tmp
wget https://raw.github.com/ocaml/opam/master/shell/opam_installer.sh
sh ./opam_installer.sh /usr/local/bin
popd
# init opam and install mirage
opam init
opam switch 4.01.0
opam install mirage
