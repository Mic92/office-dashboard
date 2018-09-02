
with import <nixpkgs> {};

let 
  gems = bundlerEnv {
    inherit ruby;
    name = "office-dashboard-0.1";
    gemdir = ./.;
    nativeBuildInputs = [ makeWrapper ];
    meta = with stdenv.lib; {
      description = "The exceptionally handsome dashboard framework";
      homepage = https://github.com/Smashing/smashing;
      license = licenses.mit;
    };
  };
in stdenv.mkDerivation {
  name = "office-dashboard";
  buildInputs = [
    bashInteractive
    gnumake
    gems
  ];
  nativeBuildInputs = [
    makeWrapper
  ];

  src = lib.cleanSource ./.;

  installPhase = ''
    mkdir -p $out
    cp -r $src/* $out
    rm $out/history.yml

    makeWrapper ${gems}/bin/bundle $out/bin/office-dashboard \
      --add-flags "exec smashing start" \
      --prefix PATH : "${gems}/${ruby.gemPath}/bin:${nodejs}/bin"
  '';
}
