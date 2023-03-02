# My Dev Environment

## Foreward
### This was a giant waste of time

I'm now committed to it, like a toxic girl. Nix is the one for me. Nvim is the one for me.

Where is my clown mask? I like my dev tooling like I like my women: High maintenance and providing very little in return for it.

With that said if you, like me, are also interested in an metaphorical code gardening project - Nix + tmux + Neovim will certainly keep you busy. Feel free to give it a try.

**TODO**: Maybe I should start keeping logs in this repo? that way they travel with me? Hell yeah dude. Hell yeah.

## Setup


#### Prerequisites
This is built on [Nix](https://nix.dev/tutorials/install-nix) and [Home Manager](https://nix-community.github.io/home-manager/). Please make sure they are both installed before proceeding

#### Steps
1. Clone the contents of this repo into your `~/.config/nixpkgs/` directory
2. `home-manager switch` - This should download all of the deps/configs to your local machine
3. `nvim` then `:checkhealth` to ensure everything is in working order



## Roadmap

### Nix Related Conversions

#### Blocking from Adoption for Work Laptop
- [ ] tmux setup via nix
    * This includes setting it up to run without the tmux package manager
- [ ] zsh setup via nix
- [ ] Nerdfonts installation 

#### Nice to haves/easy setups
- [ ] bash setup via nix
- [ ] alacritty setup via nix
- [ ] starship setup via nix
- [ ] erlang wxwidgets setup for erlang debugger/process viewer tools?

### Tooling Improvements

#### Other Tooling
- [ ] [Simulators for Mobile Dev](https://github.com/dimaportenko/telescope-simulators.nvim)
    * This will likely be a breaking point on needing to understand env vars in Nix. isMac/isLinux so linux installs don't get cluttered w/ iOS emulators they can't run
- [ ] Is there a way to have a browser window in the terminal so alt tabbing isn't needed for client side dev?
    * LOL [lynx](https://search.nixos.org/packages?channel=22.11&show=lynx&from=0&size=50&sort=relevance&type=packages&query=lynx)
- [ ] htop/performance monitors? How can these be integrated effectively into the workflow? Monitoring is still a big miss in my local dev flow
    * Maybe as a lualine indicator? Maybe as a disposable/composable vim buffer?
- [ ] NGNIX is likely gonna be helpful
- [ ] A rest/GQL testing tool would be amazing
- [ ] Any worthwhile docker tooling to have?
    * This is likely unnecessary and better of deleted

### Neovim Related
- [ ] Test command for running tests in a new tmux split window, so we don't have to keep typing MIX_ENV=test mix test.....
- [ ] Also include a command to close said tmux split quickly
- [ ] @aruder's get github link for current file command
- [ ] ctags setup cross platform -> integrate setup into nvim for tag usage
- [ ] Determine if its worth moving from Ultisnips -> [Luasnips](https://github.com/L3MON4D3/LuaSnip)
    * This is likely pointless but it saves scripting from needing to be done in Python
- [ ] Remove org dependent snippets and replace with intelligent lookups
    * e.g. `PapaPal` shouldn't need to be in this repo - make the snippet grab the project name from mix.exs
- [ ] setup [DAP](https://github.com/mfussenegger/nvim-dap)
    * Consider [Plugins](https://github.com/mfussenegger/nvim-dap/wiki/Extensions) for DAP
- [ ] setup cpp tooling
    * This is likely going to be an easy find via @fmoda3's nixconfig (Acknowledgements)

### Moonshots
- [ ] Once ctags is setup, complete TagStack, migrate to new repo
- [ ] Maybe its time to start considering having a command reference UI?
    * Maybe [cheatsheet](https://github.com/sudormrfbin/cheatsheet.nvim) as a start? Seems bloated


## Bored?
Have a look at [Awesome Neovim](https://github.com/rockerBOO/awesome-neovim) to get some inspiration.

## Acknowledgements
> This Nix config was heavily inspired by https://github.com/fmoda3/nix-configs/tree/master/home. If you're here to setup you're own config,  you should really consider looking at @fmoda3's first.

