local ls = require('luasnip')
local s = ls.snippet
local i = ls.insert_node
local t = ls.text_node

ls.add_snippets("go", {
  s("test", {
    t("func Test"),
    t("}\n"),
  }),
})
