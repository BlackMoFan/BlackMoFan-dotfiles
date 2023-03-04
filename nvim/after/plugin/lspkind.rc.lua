local status, lspkind = pcall(require, "lspkind")
if (not status) then return end

lspkind.init({
  -- enables text annotations
  --
  -- default: true
  mode = 'symbol',

  -- default symbol map
  -- can be either 'default' (requires nerd-fonts font) or
  -- 'codicons' for codicon preset (requires vscode-codicons font)
  --
  -- default: 'default'
  preset = 'codicons',

  -- override preset symbols
  --
  -- default: {}
  symbol_map = {
    -- Text = "\ue612",
    -- Method = "\uf09a",
    -- Function = "\u0192",
    -- Constructor = "塞",
    -- Field = "\uf9be",
    -- Variable = "\ue79b",
    -- Class = "\uf0e8",
    -- Interface = "\uf417",
    -- Module = "\uf40d",
    -- Property = "\ue624",
    -- Unit = "\uf475",
    -- Value = "\uf89f",
    -- Enum = "\uf435",
    -- Keyword = "\uf1de",
    -- Snippet = "\ue60b",
    -- Color = "\ue22b",
    -- File = "\uf723",
    -- Reference = "\ufa46",
    -- Folder = "\uf114",
    -- EnumMember = "\uf02b",
    -- Constant = "\uf8fe",
    -- Struct = "\ufb44",
    -- Event = "\ufacd",
    -- Operator = "\u03a8",
    -- TypeParameter = "\uf728",
    -- Default = "\uf29c"
    -- NEW SET
    -- Text = "",
    -- Method = "",
    -- Function = "",
    -- Constructor = "",
    -- Field = "ﰠ",
    -- Variable = "",
    -- Class = "ﴯ",
    -- Interface = "",
    -- Module = "",
    -- Property = "ﰠ",
    -- Unit = "塞",
    -- Value = "",
    -- Enum = "",
    -- Keyword = "",
    -- Snippet = "",
    -- Color = "",
    -- File = "",
    -- Reference = "",
    -- Folder = "",
    -- EnumMember = "",
    -- Constant = "",
    -- Struct = "פּ",
    -- Event = "",
    -- Operator = "",
    -- TypeParameter = ""
    -- NEW SET
    Text = "",
    Method = "",
    Function = "",
    Constructor = "",
    Field = "ﰠ",
    Variable = "",
    Class = "ﴯ",
    Interface = "",
    Module = "",
    Property = "ﰠ",
    Unit = "塞",
    Value = "",
    Enum = "",
    Keyword = "",
    Snippet = "",
    Color = "",
    File = "",
    Reference = "",
    Folder = "",
    EnumMember = "",
    Constant = "",
    Struct = "פּ",
    Event = "",
    Operator = "",
    TypeParameter = ""
  },
})
