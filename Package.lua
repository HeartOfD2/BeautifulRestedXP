-- Package description of the single package BeautifulRestedXP (written by the release build).
local _, ns = ...

ns.PACKAGE = {
    title = "BeautifulRestedXP",
    db = "BeautifulRestedXPDB",
    slash = { "/beautifulrestedxp" },
    color = "0cd29d",
    pluginLabel = "RestedXP",
    defaultTheme = "midnight",
    packs = {
        { key = "RestedXP", addon = "BeautifulRestedXP_Skin", title = "RestedXP", requires = "RXPGuides",
          imports = { addon = "EUI_RestedXP_Skin", db = "EUIRestedXPSkinDB" } },
    },
    legacyPack = nil,
    -- the BeautifulSkins suite ships the same packs: when it runs them, this package steps back
    yieldTo = "BeautifulSkins",
}
