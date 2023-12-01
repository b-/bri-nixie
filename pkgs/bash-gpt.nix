#{ fetchFromGitHub , vimUtils }:
#vimUtils.buildVimPlugin {
#  pname = "bash-gpt";
#  version = "2023-11-30";
#  src = fetchFromGitHub {
#    owner = "sysread";
#    repo = "bash-gpt";
#    rev = "4c86c7a5a09e1d1f1357ccaee8eca4cd50f6cec4";
#    sha256 =  "sha256-VAb3wdnFewqNbivUOv5LdZYQ9bjCWO4IohzC3fUwSoE=";
#    
#  };
#  meta.homepage = "https://github.com/sysread/bash-gpt/";
#}
#{ stdenv, fetchFromGitHub }:
#vimUtils.buildVimPlugin {
#  pname = "bash-gpt";
#  version = "2023-11-30";
#  meta.homepage = "https://github.com/sysread/bash-gpt/";
#}

{ stdenv, fetchFromGitHub  }:

let inherit (import ../env/default.nix) local-env; in
stdenv.mkDerivation rec {
  pname = "bash-gpt";
  version = "1.0.0";

  src = fetchFromGitHub {
    owner = "sysread";
    repo = "bash-gpt";
    rev = "4c86c7a5a09e1d1f1357ccaee8eca4cd50f6cec4";
    sha256 =  "sha256-VAb3wdnFewqNbivUOv5LdZYQ9bjCWO4IohzC3fUwSoE=";
    
  };
  #phases = ["installPhase"];


  installPhase = ''
    # Custom installation commands
    mkdir -p $out/bin
    cp gpt $out/bin 
    #cp gpt $out/bin && chmod +x $out/bin/gpt
    cp chat $out/bin && chmod +x $out/bin/chat
    cp code $out/bin && chmod +x $out/bin/code
    cp cmd $out/bin && chmod +x $out/bin/cmd
    cp tester $out/bin && chmod +x $out/bin/tester
    echo KEY IS ${local-env.openAPIKey}
    export OPENAI_API_KEY=${local-env.openAPIKey}
    #export OPENAI_MODEL=gpt-4-1106-preview
    
  '';

#  meta = with stdenv.lib; {
#    description = "A little toy to talk to the openai conversations api from bash";
#    homepage = "https://github.com/sysread/bash-gpt";
#    license = licenses.mit;
#  };
}