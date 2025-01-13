-- List of registered snippets
local snippet_names = {
    "doas",
    "invman",
    "afk_peter",
    "translucentice",
    "tptobones",
    "server_news",
    "sai",
    "sadopeter",
    "pub_death_msg",
    "playerutils",
    "msgbubble",
    "headanim",
    "gethome",
    "del_snippet"
}

-- Funktion, um alle Snippets auszuführen
local function run_all_snippets()
    for _, snippet_name in ipairs(snippet_names) do
        snippets.run(snippet_name)
    end
end

-- Chat-Befehl registrieren, um alle Snippets auszuführen
minetest.register_chatcommand("run_snippets", {
    description = "Führe alle Snippets aus",
    privs = {server = true},
    func = function(name)
        run_all_snippets()
        return true, "Start aller Snippets war erfolgreich."
    end,
})

-- Führe den Befehl 'run_snippets' aus
minetest.after(0, function()
    minetest.chat_send_all("Starte Snippets...")
    run_all_snippets()
end)