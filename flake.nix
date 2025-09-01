{
  description = "Typst resume development environment.";

  inputs = {
    nixpkgs.url = "github:NixOs/nixpkgs/nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = {
    self,
    nixpkgs,
    flake-utils,
  }:
    flake-utils.lib.eachDefaultSystem (system: let
      # grab nixpkgs for our system
      pkgs = nixpkgs.legacyPackages.${system};
      # Installing fonts - see https://nix.dev/guides/recipes/continuous-integration-github-actions
      fontsConf = pkgs.makeFontsConf {
        fontDirectories = [
          pkgs.liberation_ttf
          pkgs.font-awesome
        ];
      };
    in {
      devShells.default = pkgs.mkShell {
        buildInputs = with pkgs; [
          typst
          # tinymist
          # nerd-fonts.droid-sans-mono
          font-awesome
          liberation_ttf
        ];

        shellHook = ''
          export FONTCONFIG_FILE="${fontsConf}"
        '';
      };
    });
}
