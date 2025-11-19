local Webhooks = require("webhooks")

function BuyAnimalsMenu()
    BCCRanchMenu:Close()
    local buyAnimalsPage = BCCRanchMenu:RegisterPage("bcc-ranch:buyAnimalsPage")

    buyAnimalsPage:RegisterElement("header", {
        value = _U("buyAnimals"),
        slot = "header",
        style = {}
    })

    ----------------------------------------------------------------------
    -- BUY COWS
    ----------------------------------------------------------------------
    buyAnimalsPage:RegisterElement("button", {
        label = _U("buyCows"),
        style = {}
    }, function()
        BccUtils.RPC:Call("bcc-ranch:AnimalBought", { ranchId = RanchData.ranchid, animalType = 'cows' },
            function(success)
                local src = source
                local name = GetPlayerName(src) or "Unknown"

                if success then
                    devPrint("Successfully bought cows for ranchId: " .. RanchData.ranchid)

                    Webhooks.Send(
                        Webhooks.buy,
                        "🐮 Cow Purchase Success",
                        ("Player: **%s** (ID %s)\nRanch ID: %s\nAnimal: cows\nResult: SUCCESS")
                        :format(name, src, RanchData.ranchid),
                        3066993
                    )
                else
                    devPrint("Failed to buy cows for ranchId: " .. RanchData.ranchid)

                    Webhooks.Send(
                        Webhooks.buy,
                        "❌ Cow Purchase Failed",
                        ("Player: **%s** (ID %s)\nRanch ID: %s\nAnimal: cows\nResult: FAILED")
                        :format(name, src, RanchData.ranchid),
                        15158332
                    )
                end
            end)
        BuyAnimalsMenu()
    end)

    ----------------------------------------------------------------------
    -- BUY PIGS
    ----------------------------------------------------------------------
    buyAnimalsPage:RegisterElement("button", {
        label = _U("buyPigs"),
        style = {}
    }, function()
        BccUtils.RPC:Call("bcc-ranch:AnimalBought", { ranchId = RanchData.ranchid, animalType = 'pigs' },
            function(success)
                local src = source
                local name = GetPlayerName(src) or "Unknown"

                if success then
                    devPrint("Successfully bought pigs for ranchId: " .. RanchData.ranchid)

                    Webhooks.Send(
                        Webhooks.buy,
                        "🐷 Pig Purchase Success",
                        ("Player: **%s** (ID %s)\nRanch ID: %s\nAnimal: pigs\nResult: SUCCESS")
                        :format(name, src, RanchData.ranchid),
                        3066993
                    )
                else
                    devPrint("Failed to buy pigs for ranchId: " .. RanchData.ranchid)

                    Webhooks.Send(
                        Webhooks.buy,
                        "❌ Pig Purchase Failed",
                        ("Player: **%s** (ID %s)\nRanch ID: %s\nAnimal: pigs\nResult: FAILED")
                        :format(name, src, RanchData.ranchid),
                        15158332
                    )
                end
            end)
        BuyAnimalsMenu()
    end)

    ----------------------------------------------------------------------
    -- BUY SHEEPS
    ----------------------------------------------------------------------
    buyAnimalsPage:RegisterElement("button", {
        label = _U("buySheeps"),
        style = {}
    }, function()
        BccUtils.RPC:Call("bcc-ranch:AnimalBought", { ranchId = RanchData.ranchid, animalType = 'sheeps' },
            function(success)
                local src = source
                local name = GetPlayerName(src) or "Unknown"

                if success then
                    devPrint("Successfully bought sheeps for ranchId: " .. RanchData.ranchid)

                    Webhooks.Send(
                        Webhooks.buy,
                        "🐑 Sheep Purchase Success",
                        ("Player: **%s** (ID %s)\nRanch ID: %s\nAnimal: sheeps\nResult: SUCCESS")
                        :format(name, src, RanchData.ranchid),
                        3066993
                    )
                else
                    devPrint("Failed to buy sheeps for ranchId: " .. RanchData.ranchid)

                    Webhooks.Send(
                        Webhooks.buy,
                        "❌ Sheep Purchase Failed",
                        ("Player: **%s** (ID %s)\nRanch ID: %s\nAnimal: sheeps\nResult: FAILED")
                        :format(name, src, RanchData.ranchid),
                        15158332
                    )
                end
            end)
        BuyAnimalsMenu()
    end)

    ----------------------------------------------------------------------
    -- BUY GOATS
    ----------------------------------------------------------------------
    buyAnimalsPage:RegisterElement("button", {
        label = _U("buyGoats"),
        style = {}
    }, function()
        BccUtils.RPC:Call("bcc-ranch:AnimalBought", { ranchId = RanchData.ranchid, animalType = 'goats' },
            function(success)
                local src = source
                local name = GetPlayerName(src) or "Unknown"

                if success then
                    devPrint("Successfully bought goats for ranchId: " .. RanchData.ranchid)

                    Webhooks.Send(
                        Webhooks.buy,
                        "🐐 Goat Purchase Success",
                        ("Player: **%s** (ID %s)\nRanch ID: %s\nAnimal: goats\nResult: SUCCESS")
                        :format(name, src, RanchData.ranchid),
                        3066993
                    )
                else
                    devPrint("Failed to buy goats for ranchId: " .. RanchData.ranchid)

                    Webhooks.Send(
                        Webhooks.buy,
                        "❌ Goat Purchase Failed",
                        ("Player: **%s** (ID %s)\nRanch ID: %s\nAnimal: goats\nResult: FAILED")
                        :format(name, src, RanchData.ranchid),
                        15158332
                    )
                end
            end)
        BuyAnimalsMenu()
    end)

    ----------------------------------------------------------------------
    -- BUY CHICKENS
    ----------------------------------------------------------------------
    buyAnimalsPage:RegisterElement("button", {
        label = _U("buyChickens"),
        style = {}
    }, function()
        BccUtils.RPC:Call("bcc-ranch:AnimalBought", { ranchId = RanchData.ranchid, animalType = 'chickens' },
            function(success)
                local src = source
                local name = GetPlayerName(src) or "Unknown"

                if success then
                    devPrint("Successfully bought chickens for ranchId: " .. RanchData.ranchid)

                    Webhooks.Send(
                        Webhooks.buy,
                        "🐔 Chicken Purchase Success",
                        ("Player: **%s** (ID %s)\nRanch ID: %s\nAnimal: chickens\nResult: SUCCESS")
                        :format(name, src, RanchData.ranchid),
                        3066993
                    )
                else
                    devPrint("Failed to buy chickens for ranchId: " .. RanchData.ranchid)

                    Webhooks.Send(
                        Webhooks.buy,
                        "❌ Chicken Purchase Failed",
                        ("Player: **%s** (ID %s)\nRanch ID: %s\nAnimal: chickens\nResult: FAILED")
                        :format(name, src, RanchData.ranchid),
                        15158332
                    )
                end
            end)
        BuyAnimalsMenu()
    end)

    ----------------------------------------------------------------------
    -- FOOTER ELEMENTS
    ----------------------------------------------------------------------
    buyAnimalsPage:RegisterElement('line', {
        slot = "footer",
        style = {}
    })

    buyAnimalsPage:RegisterElement("button", {
        label = _U("back"),
        slot = "footer",
        style = {}
    }, function()
        MainRanchMenu()
    end)

    buyAnimalsPage:RegisterElement('bottomline', {
        slot = "footer",
        style = {}
    })

    BCCRanchMenu:Open({
        startupPage = buyAnimalsPage
    })
end
