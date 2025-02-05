```
sudo apt-get install ninja-build gettext cmake curl build-essential

git clone https://github.com/neovim/neovim

rm -r build/  # clear the CMake cache
make CMAKE_EXTRA_FLAGS="-DCMAKE_INSTALL_PREFIX=$HOME/neovim" CMAKE_BUILD_TYPE=Release
make install
export PATH="$HOME/neovim/bin:$PATH"


git clone https://github.com/nicofgr/nvim-config "${XDG_CONFIG_HOME:-$HOME/.config}"/nvim
```
