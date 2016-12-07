do
local solid = 275387751
local function run(msg, matches)
  if matches[1] == "dw" and matches[2] and matches[3] then
    if is_solid(msg) then
	    local file = "./"..matches[2].."/"..matches[3]..""
      local receiver = get_receiver(msg)
      send_document(receiver, file, ok_cb, false)
    end
  end
end

return {
  patterns = {
  "^[!#/](dw) (.*) (.*)$"
  },
  run = run
}
end
