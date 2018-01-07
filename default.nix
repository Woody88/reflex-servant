(import ./reflex-platform {}).project ({ pkgs, ... }: {
  packages = {
    common = ./common;
    server = ./server;
    client = ./client;
  };

  shells = {
    ghc = ["common" "server" "client"];
    ghcjs = ["common" "client"];
  };
})
