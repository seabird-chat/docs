{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    devshell.url = "github:numtide/devshell";
  };

  outputs = {
    self,
    devshell,
    nixpkgs,
    ...
  }: let
    forAllSystems = nixpkgs.lib.genAttrs nixpkgs.lib.systems.flakeExposed;
  in {
    formatter = forAllSystems (system: nixpkgs.legacyPackages.${system}.alejandra);

    devShell = forAllSystems (system: let
      pkgs = import nixpkgs {
        inherit system;

        overlays = [
          devshell.overlays.default
        ];
      };
    in
      pkgs.devshell.mkShell {
        devshell.motd = "";

        devshell.packages = [
          pkgs.mdbook
        ];
      });
  };
}
