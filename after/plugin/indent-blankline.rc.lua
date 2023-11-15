local status, indentBlank = pcall(require, "ibl")
if (not status) then
  return
end

indentBlank.setup()
