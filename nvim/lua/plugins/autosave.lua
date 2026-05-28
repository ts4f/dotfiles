return {
  "Pocco81/auto-save.nvim",
  lazy = false,
  opts = {
    debounce_delay = 500,
    trigger_events = { "InsertLeave", "FocusLost" }, -- no TextChanged = no undo issues
    execution_message = {
      message = function()
        return ""
      end, -- no notification spam
    },
  },
  keys = {
    { "<leader>uv", "<cmd>ASToggle<CR>", desc = "Toggle autosave" },
  },
}
