-- To make lazyvim faster, remove animation from mini.indentscope

return {
  "echasnovski/mini.indentscope",
  opts = {
    -- symbol = "|",
    options = { try_as_border = true },
    draw = {
      animation = require("mini.indentscope").gen_animation.none(),
    },
  },
}
