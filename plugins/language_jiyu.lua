-- mod-version:1 -- lite-xl 2.00
local syntax = require "core.syntax"

syntax.add {
  files = { "%.jiyu$", "%.jyu$" },
  comment = "//",
  patterns = {
    { pattern = "//.-\n",               type = "comment"  },
    { pattern = { "/%*", "%*/" },       type = "comment"  },
    { pattern = { "\"\"\"", "\"\"\"" }, type = "string"   },
    { pattern = { '"', '"', '\\' },     type = "string"   },
    { pattern = { "'", "'", '\\' },     type = "string"   },
    { pattern = "0b[0-1]+",             type = "number"   },
    { pattern = "0x[%da-fA-F]+",        type = "number"   },
    { pattern = "-?%d+[%d%.]*",         type = "number"   },
    { pattern = "-?%.?%d+?",            type = "number"   },
    { pattern = "[%+%-=/%*%^%%<>!~|&]", type = "operator" },
    { pattern = "[<>~=+-*/]=",          type = "operator" },
    { pattern = "[..]",                 type = "operator" },
    { pattern = "[%a_][%w_]*%f[(]",     type = "function" },
    { pattern = "[#@]?[%a_][%w_]*",     type = "symbol"   },
  },
  symbols = {
    -- Keywords
    ["func"]        = "keyword",
    ["if"]          = "keyword",
    ["else"]        = "keyword",
    ["for"]         = "keyword",
    ["while"]       = "keyword",
    ["defer"]       = "keyword",
    ["return"]      = "keyword",
    ["switch"]      = "keyword",
    ["case"]        = "keyword",
    ["break"]       = "keyword",
    ["continue"]    = "keyword",
    ["fallthrough"] = "keyword",
    ["struct"]      = "keyword",
    ["union"]       = "keyword",
    ["enum"]        = "keyword",
    ["using"]       = "keyword",
    ["var"]         = "keyword",
    ["let"]         = "keyword",
    ["typealias"]   = "keyword",
    ["library"]   = "keyword",
    ["framework"]   = "keyword",
    ["temporary_c_vararg"] = "keyword2";
    -- Builtin procedures and directives
    ["cast"]        = "keyword2",
    ["sizeof"]      = "keyword2",
    ["alignof"]     = "keyword2",
    ["strideof"]    = "keyword2",
    ["offsetof"]    = "keyword2",
    ["type_of"]     = "keyword2",
    ["type_info"]   = "keyword2",
    ["#if"]         = "keyword2",
    ["#load"]       = "keyword2",
    ["#import"]     = "keyword2",
    ["#clang_import"] = "keyword2",
    ["#file"]       = "keyword2",
    ["#filepath"]   = "keyword2",
    ["#line"]       = "keyword2",

    ["@c_function"]  = "keyword2",
    ["@export"]      = "keyword2",
    ["@flags"]       = "keyword2",
    ["@metaprogram"] = "keyword2",
    -- Types
    ["string"]      = "keyword2",
    ["int"]         = "keyword2",
    ["uint"]        = "keyword2",
    ["uint8"]       = "keyword2",
    ["uint16"]      = "keyword2",
    ["uint32"]      = "keyword2",
    ["uint64"]      = "keyword2",
    ["uint128"]     = "keyword2",
    ["int8"]          = "keyword2",
    ["int16"]         = "keyword2",
    ["int32"]         = "keyword2",
    ["int64"]         = "keyword2",
    ["int128"]        = "keyword2",
    ["float"]         = "keyword2",
    ["double"]        = "keyword2",
    ["void"]          = "keyword2",
    ["bool"]          = "keyword2",
    ["Type"]          = "keyword2",

    -- Literals
    ["true"]        = "literal",
    ["false"]       = "literal",
    ["null"]        = "literal",
  }
}
