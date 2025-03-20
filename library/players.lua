---@meta

---@class players
players = {}

---Retrieve a player instance by their username
---@param name string The name of the player to retrieve.
---@return LuaPlayer
function players.get(name) end

---@class LuaPlayer
---@field name string The username of the player
---@field uuid string The UUID of the player
---@field world string The world the player is currently in
---@field ip string The IP address of the player
---@field isFlying boolean Whether the player is flying
---@field isSneaking boolean Whether the player is sneaking
---@field isSprinting boolean Whether the player is sprinting
---@field isBlocking boolean Whether the player is blocking with a shield
---@field isSleeping boolean Whether the player is sleeping
---@field targetBlockType string The type of block the player is looking at
---@field targetBlockLocation LuaLocation The location of the block the player is looking at
---@field targetBlockLightLevel number The light level of the block the player is looking at
---@field targetBlockTemperature number The temperature of the block the player is looking at
---@field targetBlockHumidity number The humidity of the block the player is looking at
---@field health number The health of the player
---@field foodLevel number The food level of the player
---@field gamemode Gamemode The gamemode of the player
---@field xp number The experience total of the player
---@field level number The experience level of the player
---@field location LuaLocation The location of the player
---@field isOp boolean Whether the player is an operator
---@field saturation number The saturation level of the player
---@field exhaustion number The food exhaustion level of the player
---@field displayName string The display name of the player
---@field tabListName string The name of the player in the tab list
local LuaPlayer = {}

---Send a formatted messae to the player
---@param message string The message to send to the player
---@return boolean Whether the message was sent successfully
function LuaPlayer.send(message) end

---Send an action bar message to the player
---@param message string The message to send to the player
---@return boolean Whether the message was sent successfully
function LuaPlayer.sendActionBar(message) end

---@class TimeTable
---@field fadeIn number The time in ticks for the title to fade in
---@field stay number The time in ticks for the title to stay on screen
---@field fadeOut number The time in ticks for the title to fade out

---Send a title to the player
---@param message string The message to display to the player
---@param timeTable TimeTable The time table for the title
---@return boolean Whether the title was sent successfully
function LuaPlayer.sendTitle(message, timeTable) end

---Send a subtitle to the player
---@param message string The message to display to the player
---@param timeTable TimeTable The time table for the subtitle
---@return boolean Whether the subtitle was sent successfully
function LuaPlayer.sendSubtitle(message, timeTable) end

---Set the client side time for the player
---@param time number The time to set the client side time to
---@param relative boolean Whether the time should be kept relative to the server time
---@return boolean Whether the client side time was set successfully
function LuaPlayer.setTime(time, relative) end

---Add a permission node to the player
---@param node string The permission node to add
---@return boolean Whether the permission node was added successfully
function LuaPlayer.addPermission(node) end

---Grant a player operator privileges
---@return boolean Whether the player was granted operator privileges successfully
function LuaPlayer.op() end

---Remove operator privileges from the player
---@return boolean Whether the operator privileges were removed successfull
function LuaPlayer.deop() end

---Teleports the player to a location
---@param location LuaLocation The location to teleport the player to
---@returns boolean Whether the player was teleported successfully
function LuaPlayer.teleport(location) end

---Determines if the player has a permission node
---@param node string The permission node to check
---@returns boolean Whether the player has the permission node
function LuaPlayer.hasPermission(node) end

---Determines whether the player is in a permission group
---@param group string The name of the group to check
---@returns boolean Whether the player is in the group
function LuaPlayer.inGroup(group) end
