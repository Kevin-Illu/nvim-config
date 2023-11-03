local status, git = pcall(require, "git")
if (not status) then return end

git.setup({
  keymaps = {
    -- Open blame window
    blame = "<S-d>gb",
    -- Open file/folder in git repository
    browse = "<S-d>go"
  }
})
