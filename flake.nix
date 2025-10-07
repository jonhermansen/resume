{
  description = "Résumé and Cover Letter";
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

        # Use a custom filter to include profile.png
        src = pkgs.lib.cleanSourceWith {
          src = ./.;
          filter =
            path: type:
            let
              base = baseNameOf path;
            in
            type == "directory" || pkgs.lib.hasSuffix ".typ" base || base == "profile.png";
        };

        commonArgs = {
          fontPaths = [
            "${pkgs.font-awesome}/share/fonts/opentype"
            "${pkgs.roboto}/share/fonts/truetype"
            "${pkgs.source-sans}/share/fonts/opentype"
            "${pkgs.source-sans-pro}/share/fonts/opentype"
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

        # Resume
        resume-build-script = typixLib.buildTypstProjectLocal (
          commonArgs
          // {
            inherit src unstable_typstPackages;
            typstSource = "resume.typ";
            scriptName = "resume-build";
          }
        );
        resume-watch-script = typixLib.watchTypstProject (
          commonArgs
          // {
            typstSource = "resume.typ";
            scriptName = "resume-watch";
          }
        );

        # Cover letter
        coverletter-build-script = typixLib.buildTypstProjectLocal (
          commonArgs
          // {
            inherit src unstable_typstPackages;
            typstSource = "coverletter.typ";
            scriptName = "coverletter-build";
          }
        );
        coverletter-watch-script = typixLib.watchTypstProject (
          commonArgs
          // {
            typstSource = "coverletter.typ";
            scriptName = "coverletter-watch";
          }
        );

        # Combined scripts
        watch-all-script = pkgs.writeShellApplication {
          name = "watch-all";
          runtimeInputs = [
            resume-watch-script
            coverletter-watch-script
          ];
          text = ''
            echo "Starting watch for resume.typ and coverletter.typ..."
            echo "Press Ctrl+C to stop all watchers"

            resume-watch &
            RESUME_PID=$!

            coverletter-watch &
            COVERLETTER_PID=$!

            trap 'kill $RESUME_PID $COVERLETTER_PID 2>/dev/null; exit' INT TERM

            wait
          '';
        };

        build-all-script = pkgs.writeShellApplication {
          name = "build-all";
          runtimeInputs = [
            resume-build-script
            coverletter-build-script
          ];
          text = ''
            echo "Building resume.typ..."
            resume-build

            echo "Building coverletter.typ..."
            coverletter-build

            echo "Done! Both PDFs built successfully."
          '';
        };
      in
      {
        packages.default = typixLib.buildTypstProject (
          commonArgs
          // {
            inherit src unstable_typstPackages;
            typstSource = "resume.typ";
          }
        );

        apps = {
          default = flake-utils.lib.mkApp { drv = watch-all-script; };
          watch = flake-utils.lib.mkApp { drv = watch-all-script; };
          build = flake-utils.lib.mkApp { drv = build-all-script; };

          resume-watch = flake-utils.lib.mkApp { drv = resume-watch-script; };
          resume-build = flake-utils.lib.mkApp { drv = resume-build-script; };

          coverletter-watch = flake-utils.lib.mkApp { drv = coverletter-watch-script; };
          coverletter-build = flake-utils.lib.mkApp { drv = coverletter-build-script; };
        };

        devShells.default = typixLib.devShell {
          inherit (commonArgs) fontPaths virtualPaths;
          packages = [
            watch-all-script
            build-all-script
          ];
        };
      }
    );
}
