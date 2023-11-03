local status, neotest = pcall(require, "neotest")

if (not status) then
  return
end

neotest.setup({
  adapters = {
    require('neotest-jest')({
      jestCommand = 'jest --watch'
    }),
    require('neotest-vitest'),
    require('neotest-dotnet'),
    require('neotest-playwright').adapter({
      options = {
        persist_project_selection = true,
        enable_dynamic_test_discovery = true
      }
    }),
  }
})
