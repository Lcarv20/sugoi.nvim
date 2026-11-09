# 🍱 sugoi.nvim

[![Neovim 0.9+](https://img.shields.io/badge/Neovim-0.9+-57A143?logo=neovim&logoColor=white)](https://neovim.io)
[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](LICENSE)
[![Built with Colorbuddy](https://img.shields.io/badge/Built%20with-Colorbuddy-B7B1F2)](https://github.com/tjdevries/colorbuddy.nvim)

A modern, vibrant, and highly customizable colorscheme for Neovim built on top of [Colorbuddy](https://github.com/tjdevries/colorbuddy.nvim). **Sugoi** blends warm terracotta and coral tones with soothing periwinkle accents, offering native transparency support, WCAG-conscious contrast adaptation, and deep integration with the modern Neovim plugin ecosystem.

---

## ✨ Features

- **Warm, Distinctive Aesthetics**: Crafted around warm terracotta (`primary`) and muted coral/rose (`secondary`), balanced by a cool periwinkle (`accent`).
- **Dual Mode (Dark & Light)**:
  - **Default (Dark)**: Deep cozy graphite background (`#181818`) with soft, high-contrast syntax tokens.
  - **Light (Pastel)**: Airy, almost-white canvas (`#FCF9F7`) with cheerful, vibrant pastel highlights designed for long daytime sessions.
  - **Auto Switch**: Seamlessly synchronizes with your `vim.o.background` setting (`auto`).
- **Native Transparency**: Full support for transparent terminal backdrops—transparent window borders, sign columns, line numbers, and floating surfaces without unsightly background boxes.
- **Dynamic Contrast Adaptation**: Powered by Colorbuddy and perceived luminance algorithms (`textOnColor`), automatically selecting black or white text for badges, error banners, and diagnostic labels.
- **Deep Plugin Ecosystem**: Native highlight groups crafted for **Snacks.nvim**, **Blink.cmp**, **Telescope**, **Oil**, **Lualine**, **Mini.nvim**, **Harpoon**, **LspSaga**, **Mason**, and more.
- **10-Step Neutral Ramp**: Systematic `sugoi_0` through `sugoi_9` scale ensuring consistent visual hierarchy across typography, UI borders, fold markers, and popup menus.

---

## 🎨 Palettes Preview

### Default (Dark)
A warm, balanced palette designed to reduce eye strain while retaining crisp syntax definition.

| Token | Hex | Role & Description |
| :--- | :---: | :--- |
| `background` | `#181818` | Deep neutral charcoal editor background |
| `foreground` | `#eae6e1` | Soft off-white text |
| `primary` | `#f5a676` | Warm terracotta / hero color (constants, strings, dashboard titles) |
| `secondary` | `#f09c9c` | Muted coral / rose (types, variables, tag names) |
| `accent` | `#B7B1F2` | Soothing cool periwinkle (keywords, borders, float titles, scope indicators) |

### Light (Pastel)
A clean, vivid light palette with cheerful accents and strong legibility.

| Token | Hex | Role & Description |
| :--- | :---: | :--- |
| `background` | `#FCF9F7` | Soft airy ivory canvas |
| `foreground` | `#151210` | High-contrast dark charcoal text |
| `primary` | `#F2795B` | Cheerful warm coral |
| `secondary` | `#EA608E` | Vibrant rosy pink |
| `accent` | `#7289DA` | Clean bright periwinkle blue |

---

## 🔌 Supported Plugins

Sugoi includes tailored highlight definitions for standard Neovim features (Treesitter, LSP semantic tokens, diagnostics) and the following plugins:

| Plugin | Repository | Highlight Integrations |
| :--- | :--- | :--- |
| **Snacks.nvim** | [folke/snacks.nvim](https://github.com/folke/snacks.nvim) | Notifier (all levels), Dashboard, Profiler, Scratch, Indent Guides, Scope, Zen, Input modal, Picker |
| **Blink.cmp** | [Saghen/blink.cmp](https://github.com/Saghen/blink.cmp) | Completion menu, borders, label match, ghost text, signature help, kind badges |
| **nvim-cmp** | [hrsh7th/nvim-cmp](https://github.com/hrsh7th/nvim-cmp) | Item kind glyphs, documentation floating window |
| **Telescope** | [nvim-telescope/telescope.nvim](https://github.com/nvim-telescope/telescope.nvim) | Prompt & results borders, matching characters, prompt counter, titles |
| **Lualine** | [nvim-lualine/lualine.nvim](https://github.com/nvim-lualine/lualine.nvim) | Diff added/modified/removed highlights across Normal, Insert, Visual, Replace, Command modes |
| **Oil.nvim** | [stevearc/oil.nvim](https://github.com/stevearc/oil.nvim) | Directory labels, files, symlinks, mutations (copy, create, move, delete) |
| **Flash.nvim** | [folke/flash.nvim](https://github.com/folke/flash.nvim) | Backdrops, jump labels, current target, search prompts, cursor |
| **Harpoon** | [ThePrimeagen/harpoon](https://github.com/ThePrimeagen/harpoon) | Navigation window and border styling |
| **LspSaga** | [nvimdev/lspsaga.nvim](https://github.com/nvimdev/lspsaga.nvim) | Finder navigation, code actions, beacons, expand/collapse icons, borders |
| **Mason** | [williamboman/mason.nvim](https://github.com/williamboman/mason.nvim) | Header banners, package badges, secondary blocks, error notifications |
| **nvim-tree** | [nvim-tree/nvim-tree.lua](https://github.com/nvim-tree/nvim-tree.lua) | Root directory, folder icons, indentation guide markers, executable & special files |
| **Mini.nvim** | [echasnovski/mini.nvim](https://github.com/echasnovski/mini.nvim) | `mini.clue`, `mini.indentscope`, `mini.notify`, `mini.statusline`, `mini.trailspace` |
| **Fugitive** | [tpope/vim-fugitive](https://github.com/tpope/vim-fugitive) | Commit buffer headers, branch status, staged/untracked file statuses, diff hunks |
| **Signify** | [mhinz/vim-signify](https://github.com/mhinz/vim-signify) | Sign column diff indicators (Add, Change, Delete) |
| **Sneak** | [justinmk/vim-sneak](https://github.com/justinmk/vim-sneak) | Target highlight matching |

---

## 📦 Installation

> [!IMPORTANT]
> **Sugoi requires [tjdevries/colorbuddy.nvim](https://github.com/tjdevries/colorbuddy.nvim)** as a dependency. Ensure Colorbuddy is loaded alongside or before Sugoi.

### [lazy.nvim](https://github.com/folke/lazy.nvim) (Recommended)

```lua
{
  "Lcarv20/sugoi.nvim",
  lazy = false,
  priority = 1000,
  dependencies = {
    "tjdevries/colorbuddy.nvim",
  },
  config = function()
    require("sugoi").setup({
      transparent = false, -- enable to allow terminal background through
      palette = "auto",    -- "default" | "light" | "auto"
    })
    vim.cmd.colorscheme("sugoi")
  end,
}
```

### [packer.nvim](https://github.com/wbthomason/packer.nvim)

```lua
use({
  "Lcarv20/sugoi.nvim",
  requires = { "tjdevries/colorbuddy.nvim" },
  config = function()
    require("sugoi").setup({
      transparent = false,
      palette = "auto",
    })
    vim.cmd("colorscheme sugoi")
  end,
})
```

### [vim-plug](https://github.com/junegunn/vim-plug)

```vim
Plug 'tjdevries/colorbuddy.nvim'
Plug 'Lcarv20/sugoi.nvim'

" In your init.lua / init.vim:
lua << EOF
require("sugoi").setup({
  transparent = false,
  palette = "auto",
})
vim.cmd.colorscheme("sugoi")
EOF
```

---

## ⚙️ Configuration

Sugoi can be used with zero configuration, or customized through `require("sugoi").setup(opts)`:

```lua
require("sugoi").setup({
  -- Enable transparent background for windows, floating panels, and sidebars
  transparent = false,

  -- Explicitly set palette ("default", "light", or "auto")
  -- When "auto", the palette matches vim.o.background ("light" -> light palette, "dark" -> default palette)
  palette = "auto",

  -- Optionally override vim.o.background directly ("dark" | "light")
  background = nil,

  -- Diagnostic style options
  styles = {
    italic = true,
    bold = false,
    underline = false,
    undercurl = true,
  },

  -- Override individual palette tokens or inject your own
  colors = {
    -- primary = "#ff9e64",
    -- accent = "#9d7cd8",
  },
})

vim.cmd.colorscheme("sugoi")
```

### Options Reference

| Option | Type | Default | Description |
| :--- | :---: | :---: | :--- |
| `transparent` | `boolean` | `false` | Sets background to `NONE` for normal buffers, sign columns, window separators, and float containers. |
| `palette` | `string\|table` | `"auto"` | `"auto"`, `"default"`, `"light"`, or a custom color table. |
| `background` | `string` | `nil` | Explicitly enforce `"dark"` or `"light"` for `vim.o.background`. |
| `styles` | `table` | `{}` | Highlight modifiers for LSP diagnostics (`italic`, `bold`, `underline`, `undercurl`). |
| `colors` | `table` | `{}` | Key-value table of color tokens to override in the active palette. |

---

## 📐 Palette Specification

The Sugoi palette is structured into four primary token groups: **Flavor Accents**, the **Neutral Ramp**, **Diagnostics**, and **Git Diffs**.

### 1. Flavor Accents
Primary stylistic tokens that define Sugoi's signature look:
- **`primary`**: Warm hero accent. Used for strings, numbers, constants, active cursor line numbers, dashboard headers, and search highlights.
- **`secondary`**: Complementary warm rose/coral accent. Used for types, variables, tags, and secondary action badges.
- **`accent`**: Cool periwinkle tone. Used for keywords, floating borders (`FloatBorder`), window dividers (`WinSeparator`), and cursor line guides.

### 2. Neutral Ramp (`sugoi_0` – `sugoi_9`)
A graduated 10-step tonal scale providing contrast hierarchy from primary text to subtle UI backgrounds:

| Token | Default (Dark) | Light (Pastel) | Role & UI Application |
| :--- | :---: | :---: | :--- |
| `sugoi_0` | `#eae6e1` | `#1f1b19` | High-contrast text, functions, identifiers, search hits, Oil directories |
| `sugoi_1` | `#dbd6d2` | `#2D2927` | Methods, constructors, statement keywords |
| `sugoi_2` | `#c9c5c1` | `#3B3735` | Types, fields, parameters, properties, popup menu items, Telescope title |
| `sugoi_3` | `#b7b3af` | `#575351` | Directory names, TabLine, tags, mini.statusline file information |
| `sugoi_4` | `#a5a19d` | `#736F6D` | Subtle text, WinBar, tag attributes, Oil file listings |
| `sugoi_5` | `#938f8b` | `#817D7B` | Special characters, folded blocks, StatusLine, Mason muted items |
| `sugoi_6` | `#817d79` | `#969290` | Inlay hints, operators, delimiters, include statements, NvimTree markers |
| `sugoi_7` | `#6f6b67` | `#AAA6A4` | Comments, Conceal, MatchParen, inactive line numbers in transparent mode |
| `sugoi_8` | `#413F3D` | `#E1DEDC` | Search backdrops, visual selections, folded backgrounds, popups, indent guides |
| `sugoi_9` | `#252323` | `#efecea` | CursorLine, CursorColumn, completion menu backgrounds (`BlinkCmpMenu`) |

### 3. Diagnostics
Consistent semantic colors across LSP diagnostics, virtual text, and signs:

| Token | Default (Dark) | Light (Pastel) | Usage |
| :--- | :---: | :---: | :--- |
| `diagnostic_error` | `#d66b6c` | `#DB6B6B` | LSP errors, broken references, error messages |
| `diagnostic_warning` | `#e89b6c` | `#F0A56E` | Warnings, deprecated notices, Todo items |
| `diagnostic_info` | `#7a9fc6` | `#6A9BCB` | Informational messages, LSP hints, documentation notes |
| `diagnostic_hint` | `#a9b87f` | `#85B382` | Inlay suggestions, code action indicators |

### 4. Git & Diffs
Clean diff markers tuned for readability in sign columns, statuslines, and fugitive buffers:

| Token | Default (Dark) | Light (Pastel) | Usage |
| :--- | :---: | :---: | :--- |
| `diff_add` | `#a6e3a1` | `#8EDC8E` | Added lines, newly created files, positive hunks |
| `diff_change` | `#b4befe` | `#85A9E6` | Modified lines, repositioned files, changed tokens |
| `diff_delete` | `#f38ba8` | `#E685A9` | Removed lines, deleted files, negative hunks |

---

## 🛠️ Custom Palettes & Dynamic Adaptation

### Supplying a Full Custom Palette
You can supply your own complete palette table directly via `palette`:

```lua
local my_palette = {
  background = "#1a1b26",
  foreground = "#c0caf5",
  primary = "#ff9e64",
  secondary = "#f7768e",
  accent = "#7aa2f7",

  sugoi_0 = "#c0caf5",
  sugoi_1 = "#a9b1d6",
  sugoi_2 = "#9aa5ce",
  sugoi_3 = "#787c99",
  sugoi_4 = "#565f89",
  sugoi_5 = "#414868",
  sugoi_6 = "#3b4261",
  sugoi_7 = "#283457",
  sugoi_8 = "#1f2335",
  sugoi_9 = "#16161e",

  diagnostic_error = "#f7768e",
  diagnostic_warning = "#e0af68",
  diagnostic_info = "#7dcfff",
  diagnostic_hint = "#1abc9c",

  diff_add = "#9ece6a",
  diff_change = "#7aa2f7",
  diff_delete = "#f7768e",
}

require("sugoi").setup({
  palette = my_palette,
})
vim.cmd.colorscheme("sugoi")
```

### Overriding Specific Colors
If you love the default palette but want to tweak specific tokens (e.g., custom accent or background):

```lua
require("sugoi").setup({
  colors = {
    background = "#121212", -- darker background
    accent = "#c678dd",     -- custom violet accent
  },
})
vim.cmd.colorscheme("sugoi")
```

### Color Contrast & Luminance Safety
Sugoi computes relative luminance using the standard ITU-R formula:

$$\text{Luminance} = \frac{0.299 \times R + 0.587 \times G + 0.114 \times B}{255}$$

Whenever a highlight requires text directly rendered against `primary`, `secondary`, or diagnostic background colors (such as error banners, floating window headers, or visual badges), Sugoi dynamically tests the background's luminance to guarantee that black (`#000000`) or white (`#FFFFFF`) text is selected for maximum readability.

---

## 📄 License

This project is licensed under the **MIT License** — see the [LICENSE](LICENSE) file for details.  
Copyright (c) 2026 Luís Carvalho.
