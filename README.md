# Lite Neovim Distro (Suitable for MacOS Users)

Welcome to Lite Neovim Distro, a minimalist Neovim distribution designed to provide a blazing fast, and lightweight Neovim setup in just a few seconds. This guide will walk you through the installation process and highlight the features included.

#

<img width="1680" alt="Screen Shot 2024-02-28 at 2 50 53 AM" src="https://github.com/stanleyogada/lite-neovim-distro/assets/102979724/1b3b66a8-678e-43b1-89fc-948eedc9619a">



https://github.com/stanleyogada/lite-neovim-distro/assets/102979724/b57efc8c-3edc-4380-9c18-70adafa79d9b



#

### Important note! This distro has been thoroughly tested on both MacOS and Linux (Debian) systems But It works best on MacOS

The config is tuned to stay light (for example small VPS-style machines): **no `nvim-treesitter` plugin** (Neovim still ships built-in Tree-sitter parsers for several languages; see `:checkhealth vim.treesitter`), **no in-editor DAP / JS debug adapter stack**, and optional external tools like **`fd`** are not required for core usage.

## Features / Plugins

> Key notes:
> - The `<leader>` is the **space** key.
> - **`lua/core/options.lua`** sets `vim.o.sessionoptions` (for **auto-session** restore) and disables unused **Node / Perl / Ruby** providers to cut noise from `:checkhealth`.
> - **Sessions**: **auto-session** saves and restores projects automatically. There is **no** `<leader>fs` session-picker mapping (session-lens was removed to avoid extra dependencies).
> - **Debugging**: use your own terminal / IDE tools; this distro does **not** ship **nvim-dap** or **vscode-js-debug**.


- **_PACKER_**:
  - Plugin manager. ([**_Optional_** Read more about this plugin](https://github.com/wbthomason/packer.nvim))
- **_TELESCOPE_**:
  - Fuzzy finding (`<leader>ff`), live grep (`<leader>fg`), buffers (`<leader>fb`), etc. ([**_Optional_** Read more about this plugin](https://github.com/nvim-telescope/telescope.nvim))
- **_GITHUB-THEME_**:
  - GitHub theme pack (`:colorscheme github_dark`). ([**_Optional_** Read more about this plugin](https://github.com/projekt0n/github-nvim-theme))
- **_NVIM-TREE_**:
  - File tree (`<leader>n`). ([**_Optional_** Read more about this plugin](https://github.com/nvim-tree/nvim-tree.lua))
- **_WEB-DEVICONS_**:
  - File-type icons. ([**_Optional_** Read more about this plugin](https://github.com/nvim-tree/nvim-web-devicons))
- **_LUALINE_**:
  - Status line. ([**_Optional_** Read more about this plugin](https://github.com/nvim-lualine/lualine.nvim))
- **_Tree-sitter (built-in)_**:
  - This distro does **not** install the **`nvim-treesitter`** plugin (no `tree-sitter` CLI or extra parsers from that plugin). Neovim’s **bundled** parsers still cover common types; for more languages you can add **`nvim-treesitter`** back in `lua/core/plugins.lua` and install the CLI if you want.
- **_PLENARY_**:
  - Lua utilities (dependency for Telescope and others). ([**_Optional_** Read more about this plugin](https://github.com/nvim-lua/plenary.nvim))
- **_GITSIGNS_**:
  - Git change signs in the gutter. ([**_Optional_** Read more about this plugin](https://github.com/lewis6991/gitsigns.nvim))
- **_BARBAR_**:
  - Tab bar (`<leader>bq` closes current buffer/tab, `<leader>b<Left>` / `<leader>b<Right>` navigate). ([**_Optional_** Read more about this plugin](https://github.com/romgrk/barbar.nvim))
- **_MININTRO_**:
  - Startup banner when you run `nvim` with no arguments. ([**_Optional_** Read more about this plugin](https://github.com/eoh-bse/minintro.nvim))
- **_TELESCOPE-UNDO_**:
  - Undo history in Telescope (`<leader>fu`). ([**_Optional_** Read more about this plugin](https://github.com/debugloop/telescope-undo.nvim))
- **_OIL_**:
  - Buffer-style file explorer (`-` opens directory). ([**_Optional_** Read more about this plugin](https://github.com/stevearc/oil.nvim))
- **_NVTERM_**:
  - Terminal toggles (`<leader>tf` / `<leader>th` / `<leader>tv`). ([**_Optional_** Read more about this plugin](https://github.com/NvChad/nvterm))
- **_WHICH-KEY_**:
  - Keybinding hints for `<leader>` groups. ([**_Optional_** Read more about this plugin](https://github.com/folke/which-key.nvim))
- **_TWILIGHT_**:
  - Dim inactive code for focus. ([**_Optional_** Read more about this plugin](https://github.com/folke/twilight.nvim))
- **_ZEN-MODE_**:
  - Distraction-free editing. ([**_Optional_** Read more about this plugin](https://github.com/folke/zen-mode.nvim))
- **_TODO-COMMENTS_**:
  - Highlight and search TODO/FIXME-style comments; Telescope picker (`<leader>ft`). ([**_Optional_** Read more about this plugin](https://github.com/folke/todo-comments.nvim))
- **_LSP-COLORS_**:
  - Extra highlight groups for LSP diagnostics. ([**_Optional_** Read more about this plugin](https://github.com/folke/lsp-colors.nvim))
- **_TROUBLE_**:
  - Pretty list for diagnostics, quickfix, etc. ([**_Optional_** Read more about this plugin](https://github.com/folke/trouble.nvim))
- **_AUTO-SESSION_**:
  - Save/restore editing sessions per project. Config: `lua/core/plugin_config/auto-session.lua`. ([**_Optional_** Read more about this plugin](https://github.com/rmagatti/auto-session))
- **_COMMENT_**:
  - Comment toggles (`gcc`, etc.). ([**_Optional_** Read more about this plugin](https://github.com/numToStr/Comment.nvim))
- **_SURROUND_**:
  - Surround motions (`ysiw}` etc.). ([**_Optional_** Read more about this plugin](https://github.com/kylechui/nvim-surround))
- **_VISUAL-MULTI_**:
  - Multiple cursors (`<C-n>`, etc.). ([**_Optional_** Read more about this plugin](https://github.com/mg979/vim-visual-multi))
- **_COC_**:
  - LSP and extensions via marketplace (`:CocInstall coc-tsserver`, etc.). ([**_Optional_** Read more about this plugin](https://github.com/neoclide/coc.nvim))


#
#

## Requirements / Prerequisites

### _At least ensure you have **all** listed packages in any version, but if you face any issues have my exact versions or higher!_

1. Operating System: `MacOS` or `Linux (Debian)` (other distros usually work).
2. Have `brew` package manager for **MacOS**.
   - ```bash
     /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
     ```
3. Install any **Nerd Font**, and set it in your terminal. ([**_Important_** Guide to setup and install](https://github.com/stanleyogada/simple-neovim-configuration/blob/latest/guides/NERDFONT.md) — or see `guides/NERDFONT.md` in this repo if present.)
4. For terminal choice, use `Iterm` or `Terminator` for **MacOS**, use `Terminator` for **Linux (Debian)**.
5. Install **`rg` / ripgrep** (used by Telescope grep and many tools). ([**_Important_** Guide to setup and install](https://command-not-found.com/rg))
6. **`fd`** (optional): Telescope will warn if missing; `find_files` still works without it. ([Install](https://command-not-found.com/fd))
7. Install **Neovim** **0.9.5** or higher. ([**_Important_** Guide to setup and install](https://github.com/stanleyogada/simple-neovim-configuration/blob/latest/guides/NEOVIM.md) — or `guides/NEOVIM.md` here if present.)
8. Install **Lua** **5.4.6** or higher (often already satisfied by your OS or Neovim build).
    - **MacOS**
        ```bash
        brew install lua
        ```
    - **Linux (Debian)**
        ```bash
        sudo apt update && sudo apt install lua5.4 -y
        ```
9. Install **Node.js** and **npm** (for **CoC** and common language servers). Match versions your projects need; the old README pinned **21.x** / **npm 10.x** as a reference.
10. For **TypeScript / JavaScript** work with CoC, install **`typescript`** and optionally **`ts-node`** in your project or globally as you prefer.
11. Install **git** (required for Packer and most workflows).

#
#
## Usage (For both Linux and macOS)

**_Find installation process [here](https://github.com/stanleyogada/lite-neovim-distro/releases/tag/latest)_**

After cloning this config into `~/.config/nvim`, start Neovim and run **`:PackerSync`** (then **`:PackerCompile`** if you change `lua/core/plugins.lua`). First launch may bootstrap **packer.nvim** automatically.
