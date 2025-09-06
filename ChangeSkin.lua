script_name("Skin-Changer")
script_author("Andre")
script_version("Final")
script_url("-")

require "lib.moonloader"

local favskin = 0
local favskin_file = "favskin.txt"

function msg(...) 
    return sampAddChatMessage('{af75d9}[V+]  {ffffff}' .. table.concat({...}, ' '), 0xFFFFFFFF) 
end

function saveFavSkin()
    local file = io.open(favskin_file, "w")
    if file then
        file:write(tostring(favskin))
        file:close()
    end
end

function loadFavSkin()
    local file = io.open(favskin_file, "r")
    if file then
        local content = file:read("*all")
        favskin = tonumber(content) or 0
        file:close()
    end
end

function deleteFavSkin()
    favskin = 0
    os.remove(favskin_file)
    sampAddChatMessage("{af75d9}[V+] {ffffff}The skin is now {FF0000}deleted{FFFFFF}, you came back to your normal skin! (you need to relog)", -1)
end

function main()
    if not isSampLoaded() or not isSampfuncsLoaded() then return end
    while not isSampAvailable() do wait(100) end

    sampRegisterChatCommand("skin", nsc_cmd)
    sampRegisterChatCommand("delskin", deleteFavSkin)
    msg('currently running')
    msg('version 0.1')

    loadFavSkin()
    while true do
        wait(100)
        if favskin ~= 0 then
            nowskinid = getCharModel(PLAYER_PED)
            if nowskinid ~= favskin then
                _, id = sampGetPlayerIdByCharHandle(PLAYER_PED)
                set_player_skin(id, favskin)
                sampAddChatMessage("{af75d9}[V+]: {ffffff}The skin was {23c418}successfully{FFFFFF} set!", -1)
            end
        end
    end
end

function nsc_cmd(arg)
    if #arg == 0 then
        sampAddChatMessage("/skin ID", -1)
    else
        local skinid = tonumber(arg)
        
        -- Check if the skin ID is within the allowed range (0 to 311) and not 74
        if skinid < 0 or skinid > 311 then
            sampAddChatMessage("{af75d9}[V+]: {ffffff}Error: Skin ID must be between 0 and 311.", -1)
        elseif skinid == 74 then
            sampAddChatMessage("{af75d9}[V+]: {ffffff}Error: Skin ID 74 is prone to crash, please choose another skin.", -1)
        else
            favskin = skinid
            saveFavSkin()
            _, id = sampGetPlayerIdByCharHandle(PLAYER_PED)
            set_player_skin(id, favskin)
            sampAddChatMessage("{af75d9}[V+]: {ffffff}The skin " .. favskin .. " has been set successfully!", -1)
        end
    end
end

function set_player_skin(id, skin)
    local BS = raknetNewBitStream()
    raknetBitStreamWriteInt32(BS, id)
    raknetBitStreamWriteInt32(BS, skin)
    raknetEmulRpcReceiveBitStream(153, BS)
    raknetDeleteBitStream(BS)
end
