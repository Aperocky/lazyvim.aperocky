-- This is experimenting with llm-ls and llm.nvim, the results are not particularly
-- impressive. llm.nvim and llm-ls are experimental and feels under-documented.
return {
  "huggingface/llm.nvim",
  event = "VeryLazy",
  enabled = true,
  opts = {
    lsp = {
      bin_path = vim.api.nvim_call_function("stdpath", { "data" }) .. "/mason/bin/llm-ls",
      cmd_env = { LLM_LOG_LEVEL = "DEBUG" },
    },
    backend = "ollama",
    model = "deepseek-coder-v2:16b",
    url = "http://localhost:11434", -- llm-ls uses "/api/generate"
    context_window = 1024,
    accept_keymap = "<S-n>",
    dismiss_keymap = "<S-Tab>",
    debounce_ms = 500,
    fim = {
      enabled = true,
      prefix = "<fim_prefix>",
      middle = "<fim_middle>",
      suffix = "<fim_suffix>",
    },
    tokens_to_clear = { "<|endoftext|>" },
    enable_suggestions_on_startup = true,
    enable_suggestions_on_files = "*",
    request_body = {
      options = {
        max_new_tokens = 100,
        temperature = 0.2,
        top_p = 0.95,
      },
    },
  },
}
