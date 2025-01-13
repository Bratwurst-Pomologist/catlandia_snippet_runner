
-- List of registed snippets.
local snippet_names = {
  "snippet1", 
  "snippet2", 
  "snippet3"
  
}

local function run_all_snippets()
    for _, snippet_name in ipairs(snippet_names) do
        minetest.run_snippet("", snippet_name)
    end
end

minetest.register_chatcommand("run_snippets", {
    description = "run all snippets",
    privs = {server = true},
    func = function(name)
        run_all_snippets()
        return true, "start of all snippets was successfully."
    end,
})

-- Führe den Befehl 'run_snippets' aus
minetest.after(0, function()
    minetest.chat_send_all("starting snippets ...")
    run_all_snippets()
end)