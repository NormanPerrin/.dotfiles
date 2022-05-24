local M = {}

M.init = function()
  local ls = require('luasnip')
  local types = require('luasnip.util.types')
  local s = ls.parser.parse_snippet

  local function read_file(path)
      local file = io.open(path, "rb") -- r read mode and b binary mode
      if not file then return nil end
      local content = file:read "*a" -- *a or *all reads the whole file
      file:close()
      return content
  end

  local html_template = read_file('/Users/nperrin/.local/share/templates/html/html')
  local go_template = read_file('/Users/nperrin/.local/share/templates/go/main')

  ls.config.set_config {
    updateevents = "TextChanged,TextChangedI",
    enable_autosnippets = true,
    ext_opts = {
      [types.choiceNode] = {
        active = {
          virt_text = { "<-", "Error" }
        }
      }
    }
  }

  local jsSnippets = {
    s('cl', 'console.log($1)'),
    s('clj', 'console.log(JSON.stringify($1, null, 2))'),
    s('c', '/**\n * $1\n */'),
    s('func', 'function $1($2) {\n  $0\n}'),
    s('try', 'try {\n  $1\n} catch (error) {\n  $2\n}'),
    s('i', "import $1 from '$2'"),
    s('il', "import $1 from './$2'"),
    s('r', "const $1 = require('$2')"),
    s('rl', "const $1 = require('./$2')"),
    s('e', 'export $1'),
    s('ed', 'export default $1'),
    s('des', "describe('$1', () => {\n  $0\n})"),
    s('con', "context('$1', () => {\n  $0\n})"),
    s('it', "it('$1', () => {\n  $0\n})"),
  }

  ls.snippets = {
    all = {},

    lua = {
      s('lf', 'local $1 = function ($2)\n  $0\nend'),
      s('mf', '$1.$2 = function ($3)\n  $0\nend'),
    },

    javascript = jsSnippets,
    typescript = jsSnippets,

    html = {
      s('doc', '<!DOCTYPE html>'),
      s('div', '<div>$1</div>'),
      s('a', '<a href="$1">$2</a>'),
      s('p', '<p>$1</p>'),
      s('ul', '<ul>\n  <li>$1</li>\n</ul>'),
      s('ol', '<ol>\n  <li>$1</li>\n</ol>'),
      s('li', '<li>$1</li>'),
      s('!', html_template),
    },

    go = {
      s('main', go_template),
      s('func', 'func $1($2) $3 {\n  $0\n}'),
      s('pl', 'fmt.Println($1)'),
      s('pf', 'fmt.Printf("$1", $2)'),
      s('for', 'for $1; $2; $3 {\n  $0\n}')
    }
  }
end

return M
