-- This is experimenting with llm-ls and llm.nvim, the results are not particularly
-- impressive. llm.nvim and llm-ls are experimental and feels under-documented.
return {
  "huggingface/llm.nvim",
  event = "VeryLazy",
  enabled = false,
  opts = {
    lsp = {
      bin_path = vim.api.nvim_call_function("stdpath", { "data" }) .. "/mason/bin/llm-ls",
      cmd_env = { LLM_LOG_LEVEL = "DEBUG" },
    },
    backend = "ollama",
    model = "llama3.1",
    url = "http://localhost:11434", -- llm-ls uses "/api/generate"
    context_window = 512,
    accept_keymap = "<c-j>",
    debounce_ms = 500,
    fim = {
      enabled = true,
      prefix = "<fim_prefix>",
      middle = "<fim_middle>",
      suffix = "<fim_suffix>",
    },
    tokenizer = {
      path = vim.api.nvim_call_function("stdpath", { "data" }) .. "/llm_nvim/tokenizer/llama3.1_tokenizer.json",
    },
    tokens_to_clear = { "<|endoftext|>" },
    enable_suggestions_on_startup = true,
    enable_suggestions_on_files = "*",
    request_body = {
      options = {
        temperature = 0.2,
        top_p = 0.95,
      },
    },
  },
}
