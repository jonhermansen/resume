{
  description = "Résumé";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    typix = {
      url = "github:loqusion/typix";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs =
    inputs@{
      nixpkgs,
      typix,
      flake-utils,
      ...
    }:
    flake-utils.lib.eachDefaultSystem (
      system:
      let
        pkgs = nixpkgs.legacyPackages.${system};
        typixLib = typix.lib.${system};
        src = typixLib.cleanTypstSource ./.;
        commonArgs = {
          typstSource = "resume.typ";
          fontPaths = [
            "${pkgs.font-awesome}/share/fonts/opentype"
            "${pkgs.roboto}/share/fonts/truetype"
            "${pkgs.source-sans-pro}/share/fonts/truetype"
          ];
          virtualPaths = [ ];
        };
        unstable_typstPackages = [
          {
            name = "modern-cv";
            version = "0.9.0";
            hash = "sha256-zCv2UABp3lBBbYthrSXD4OXWaiIjMdwRPQbq5a8AlUk=";
          }
          {
            name = "fontawesome";
            version = "0.6.0";
            hash = "sha256-dgb+YAYLEKgMMEWa8yelMvRdEoesPj5HI+70w3mCUcQ=";
          }
          {
            name = "linguify";
            version = "0.4.2";
            hash = "sha256-kuoK0r29kvc0rvDIQWELp/fZUm3Bzxc5W8M/YMU3lvg=";
          }
        ];
        build-drv = typixLib.buildTypstProject (
          commonArgs
          // {
            inherit src;
            inherit unstable_typstPackages;
          }
        );
        build-script = typixLib.buildTypstProjectLocal (
          commonArgs
          // {
            inherit src;
            inherit unstable_typstPackages;
          }
        );
        watch-script = typixLib.watchTypstProject commonArgs;
      in
      {
        checks = {
          inherit build-drv;
          inherit build-script;
          inherit watch-script;
        };
        packages.default = build-drv;
        apps = rec {
          default = watch;
          build = flake-utils.lib.mkApp {
            drv = build-script;
          };
          watch = flake-utils.lib.mkApp {
            drv = watch-script;
          };
        };
        devShells.default = typixLib.devShell {
          inherit (commonArgs) fontPaths;
          inherit (commonArgs) virtualPaths;
          packages = [
            watch-script
          ];
        };
      }
    );
}
