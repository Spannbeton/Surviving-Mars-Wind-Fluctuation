function OnMsg.ModConfigReady()
    local StringIdBase = 1344569334
    
    ModConfig:RegisterMod("Wind Fluctuation", -- ID
        T{StringIdBase, "Wind Fluctuation"}, -- Optional display name, defaults to ID
        T{StringIdBase + 1, "Makes Wind Turbines have fluctuating output"} -- Optional description
    )

    ModConfig:RegisterOption("Period-Hours", "wf_period", {
        name = T{StringIdBase + 2, "Wind fluctuation period"},
        desc = T{StringIdBase + 3, "The amount of hours in a fluctuation period"},
        type = "number",
        default = 32,
        min = 10,
        max = 150,
        step = 2,
    })
end
--rawget(_G, "ModConfig") and ModConfig:Get("Period-Hours", "wf_period") or 32
    ModConfig:RegisterOption("Min-Production", "wf_min_prod", {
        name = T{StringIdBase + 4, "Minimum Production"},
        desc = T{StringIdBase + 5, "Minimum Production in percentage of Base"},
        type = "number",
        default = 40,
        min = 0,
        max = 100,
        step = 5,
    })
end
--rawget(_G, "ModConfig") and ModConfig:Get("Min-Production", "wf_min_prod") or 40
    ModConfig:RegisterOption("Amplitude", "wf_amplitude", {
        name = T{StringIdBase + 6, "Amplitude"},
        desc = T{StringIdBase + 7, "Amplitude in percentage of Base"},
        type = "number",
        default = 60,
        min = 0,
        max = 100,
        step = 5,
    })
end
--rawget(_G, "ModConfig") and ModConfig:Get("Amplitude", "wf_amplitude") or 60
