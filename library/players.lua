--   Copyright 2025 znci
--
--   Licensed under the Apache License, Version 2.0 (the "License");
--   you may not use this file except in compliance with the License.
--   You may obtain a copy of the License at
--
--       http://www.apache.org/licenses/LICENSE-2.0
--
--   Unless required by applicable law or agreed to in writing, software
--   distributed under the License is distributed on an "AS IS" BASIS,
--   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
--   See the License for the specific language governing permissions and
--   limitations under the License.

---@meta

---@class players
players = {}

---Retrieve a player instance by their username
---@param name string The name of the player to retrieve.
---@return LuaPlayer
function players.get(name) end

---Retrieve a player instance by their UUID
---@param uuid string The UUID of the player to retrieve.
---@return LuaPlayer
function players.getByUUID(uuid) end

---Retrieve all player instances currently online
---@return LuaPlayer[] A list of all players currently online
function players.getAll() end

---Retrieve an offline player instance by their username
---@param name string The name of the player to retrieve.
---@return LuaOfflinePlayer
function players.getOfflinePlayer(name) end

---Retrieve an offline player instance by their UUID
---@param uuid string The UUID of the player to retrieve.
---@return LuaOfflinePlayer
function players.getOfflinePlayerByUUID(uuid) end

---Retrieve an offline player instance from the Bukkit cache
---@param name string The name of the player to retrieve.
---@return LuaOfflinePlayer | nil
function players.getCachedOfflinePlayer(name) end

---Retrieve all offline player instances
---@return LuaOfflinePlayer[] A list of all offline players
function players.getAllOfflinePlayers() end

---@class LuaPlayer: LuaOfflinePlayer
---@field location LuaLocation The current location of the player
---@field name string The name of the player
---@field world string The name of the world the player is in
---@field ip string | nil The IP address of the player, if available
---@field isFlying boolean Whether the player is flying
---@field isSneaking boolean Whether the player is sneaking
---@field isSprinting boolean Whether the player is sprinting
---@field isBlocking boolean Whether the player is blocking
---@field isSleeping boolean Whether the player is sleeping
---@field targetBlockType string | nil The type of block the player is looking at, if available
---@field targetBlockLocation LuaLocation | nil The location of the block the player is looking at, if available
---@field targetBlockLightLevel number | nil The light level of the block the player is looking at, if available
---@field targetBlockTemperature number | nil The temperature of the block the player is looking at, if available
---@field targetBlockHumidity number | nil The humidity of the block the player is looking at, if available
local LuaPlayer = {}

---Send a formatted messae to the player
---@param message string The message to send to the player
---@return boolean Whether the message was sent successfully
function LuaPlayer.send(message) end

---Send an action bar message to the player
---@param message string The message to send to the player
---@return boolean Whether the message was sent successfully
function LuaPlayer.sendActionbar(message) end

---@class TitleTimeTable
---@field fadeIn number The time in ticks for the title to fade in
---@field stay number The time in ticks for the title to stay on screen
---@field fadeOut number The time in ticks for the title to fade out
local TitleTimeTable = {}

---Send a title to the player
---@param message string The message to display to the player
---@param timeTable TitleTimeTable The time table for the title
---@return boolean Whether the title was sent successfully
function LuaPlayer.sendTitle(message, timeTable) end

---Send a subtitle to the player
---@param message string The message to display to the player
---@param timeTable TitleTimeTable The time table for the subtitle
---@return boolean Whether the subtitle was sent successfully
function LuaPlayer.sendSubtitle(message, timeTable) end

---Set the client side time for the player
---@param time number The time to set the client side time to
---@param relative boolean Whether the time should be kept relative to the server time
---@return boolean Whether the client side time was set successfully
function LuaPlayer.setPlayerTime(time, relative) end

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
---@return boolean Whether the player was teleported successfully
function LuaPlayer.teleport(location) end

---Determines if the player has a permission node
---@param node string The permission node to check
---@return boolean Whether the player has the permission node
function LuaPlayer.hasPermission(node) end

---Determines whether the player is in a permission group
---@param group string The name of the group to check
---@return boolean Whether the player is in the group
function LuaPlayer.isInGroup(group) end

---Sets the player's gamemode
---@param gamemode string The gamemode to set the player to. Can be "survival", "creative", "adventure", or "spectator"
---@return boolean
function LuaPlayer.setGamemode(gamemode) end

---@class LuaOfflinePlayer
---@field firstPlayed number The time the player first played
---@field lastDeathLocation LuaLocation | nil The last death location of the player
---@field lastLogin number The time the player last logged in
---@field lastSeen number The time the player was last seen
---@field location LuaLocation | nil The last known location of the player
---@field name string | nil The name of the player
---@field player LuaPlayer | nil The player instance of the offline player, if they are online
---@field respawnLocation LuaLocation | nil The respawn location of the player
---@field uuid string The UUID of the player
---@field hasPlayedBefore boolean Whether the player has played before
---@field banned boolean Whether the player is banned
---@field connected boolean Whether the player is connected
---@field online boolean Whether the player is online
---@field whitelisted boolean
local LuaOfflinePlayer = {}

