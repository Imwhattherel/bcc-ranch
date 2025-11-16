Config = {
    defaultlang = "ro_lang", -- set your language
    devMode = false,         -- Leave false on live server
    RanchAdminGroup = {
        "admin",
        "superadmin"
    },
    RanchAllowedJobs = {
        'rancher',
        'doctor'
    },

    commands = {
        manageRanches = "manageRanches",
        devModeCommand = "startRanch",
        manageMyRanchCommand = false, -- Set to false to disable, allows to manage ranch through command not prompt
        manageMyRanchCommandName = "manageMyRanch",
    },
    saleLocations = {
        --These are the locations players will be able to sell thier cattle/animals at
        {
            LocationName = 'Valentine',        --this will be the name of the blip
            Coords = { x = -217.18, y = 634.94, z = 113.20 }, --the coords the player will have to go to
        },                                                    --to add more just copy this table paste and change what you want
        {
            LocationName = 'Rhodes',
            Coords = { x = 1332.0, y = -1271.8, z = 76.8 },
        },
        {
            LocationName = 'Blackwater',
            Coords = { x = -853.13, y = -1337.95, z = 43.48 },
        },
        {
            LocationName = 'Strawberry',
            Coords = { x = -1837.10, y = -438.56, z = 159.53 },
        },
        {
            LocationName = 'Armadillo',
            Coords = { x = -3660.93, y = -2564.88, z = -13.75 },
        },
        {
            LocationName = 'St-Denis',
            Coords = { x = 2393.30, y = -1416.46, z = 45.76 },
        },
        {
            LocationName = 'Annesburg',
            Coords = { x = 2936.83, y = 1312.21, z = 44.53 },
        },
        {
            LocationName = 'Emerald Ranch',
            Coords = { x = 1420.13, y = 295.07, z = 88.96 },
        },
        {
            LocationName = 'Tumbleweed 1',
            Coords = { x = -5410.35, y = -2934.25, z = 0.92 },
        },
        {
            LocationName = 'Tumbleweed 2',
            Coords = { x = -2623.40, y = 454.35, z = 146.94 },
        }
    },
    Notify = "feather-menu", ----or use vorp-core
    EnableAnimalBlip = false,
    Webhook = "",
    WebhookTitle = 'BCC-Ranch',
    WebhookAvatar = '',
}
