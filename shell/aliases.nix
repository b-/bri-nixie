{
  ports="lsof -i -P -n";
  port-kill="kill $(lsof -t -i:4369)";

  # Monitoring Commands: `monitor-*`
  monitor="btop";
  monitor-containers="lazydocker";

  movie="ssh -o StrictHostKeyChecking=no watch.ascii.theater";
  garbage-collect="nix-collect-garbage";
  flake-move-out="mv flake.nix flake.lock ~/";
  env-move-out="mv env/default.nix ~/";
  flake-move-in="mv ~/flake.nix ~/flake.lock ./";
  env-move-in="mv ~/default.nix ./env/";
  flake-hide="git add --intent-to-add flake.nix flake.lock && git update-index --assume-unchanged flake.nix flake.lock";
  env-hide="git add --intent-to-add env/default.nix && git update-index --assume-unchanged env/default.nix";

  bs="echo ':terminal' | nvim -s --listen /tmp/$(tmux display-message -p '#S').pipe";
}

