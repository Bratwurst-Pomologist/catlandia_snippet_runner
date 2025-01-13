-- Snippet Runner Mod für Minetest mit Snippets-API

-- List of registed snippets.
local snippet_names = {"snippet1", "snippet2", "snippet3"},

local function run_all_snippets()
    for _, snippet_name in ipairs(snippet_names) do
        minetest.run_snippet("", snippet_name)
    end
end

-- Chat-Befehl registrieren, um alle Snippets auszuführen
minetest.register_chatcommand("run_snippets", {
    description = "Führe alle Snippets aus",
    privs = {server = true},
    func = function(name)
        run_all_snippets()
        return true, "Alle Snippets wurden ausgeführt."
    end,
})

-- Führe den Befehl 'run_snippets' aus
minetest.after(0, function()
    minetest.chat_send_all("Starte Snippets...")
    run_all_snippets()
end)
