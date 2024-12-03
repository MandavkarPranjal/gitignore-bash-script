# Automated gitignore genrator

- This shell script allows you to generate a `.gitignore` file from the [gitignore.io](https://www.toptal.com/developers/gitignore) API.
- It uses [fzf](https://github.com/junegunn/fzf) to select the gitignore file you want to download.
- It appends the `.gitignore` got from API to the current `.gitignore` file so you don't have to loose your current `.gitignore` file.

## Demo
![Demo](assets/demo.gif)
*Special thanks to [vhs](https://github.com/charmbracelet/vhs) for the gif*

## Requirements

- fzf
- curl

## Usage

1. Download the `gitignore-bash-script.sh` script to your machine.
2. Run the script using the following command:

   ```bash
   ./gitignore-bash-script.sh
   # or bash ./gitignore-bash-script.sh

OR
1. Download the `gitignore-bash-script.sh` script to your machine.
2. Add it your `PATH` variable.
   ```bash
   echo 'export PATH="$PATH:$HOME/gitignore-bash-script"' >> ~/.bashrc # or ~/.zshrc
    ```
    OR (This is my recommended way)
    - create a `scripts` folder in your home directory and add the script to it.
    ```bash
    mkdir ~/scripts
    cp ./gitignore-bash-script.sh ~/scripts
    echo 'export PATH="$PATH:$HOME/scripts"' >> ~/.bashrc # or ~/.zshrc
    ```
3. Run the script using the following command:
```bash
gitignore-bash-script
# you can also change the name of the script to whatever you want or create a alias
```

## My Go-To way of using this script
1. Add the script to your *tmux* config file.
```bash
# prefix + g
bind-key -r g run-shell "tmux neww gitignore-bash-script"
```
2. Add the script to your *neovim* config file.
```lua
-- Ctrl-g
vim.keymap.set("n", "<C-g>", ":silent !tmux neww ignore<CR>", { desc = "Open gitignorer" })
```
**Note:** You can change the keybinding to whatever you want.
