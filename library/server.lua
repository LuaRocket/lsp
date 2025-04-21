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

---@class server
---@field ip string The IP address of the server
---@field port number The port of the server
---@field maxPlayers number The maximum number of players allowed on the server
---@field minecraftVersion string The version of Minecraft the server is running
---@field operators LuaOfflinePlayer[] A list of all operators on the server
---@field resourcePack string The URL of the resource pack for the server
---@field resouercePackHash string The hash of the resource pack for the server
---@field resourcePackPrompt string The prompt message for the resource pack
---@field resourcePackRequired boolean Whether the resource pack is required
---@field spawnProtectionRadius number The radius of the spawn protection area
---@field tps number[] The TPS of the server from 1m, 5m, and 10m
---@field tickTImes number[] The tick times sample of the server
---@field viewDistance number The view distance of the server
---@field whitelisted boolean Whether the server is whitelisted
---@field whitelistEnforced boolean Whether the whitelist is enforced
---@field acceptingTransfers boolean
---@field enforcingSecureProfiles boolean Whether the server is enforcing secure profiles
---@field hardcore boolean Whether the server is in hardcore mode
---@field loggingIPs boolean Whether the server is logging IPs
---@field stopping boolean Whether the server is stopping
---@field permissionMessage string The current Bukkit permission message foratted as a MiniMessage string
---@field defaultGameMode string The default game mode of the server
---@field paused boolean Whether the server is paused
---@field pauseWhenEmptyTIme number The time in seconds the server will pause when empty
---@field allowEnd boolean Whether the server allows the end dimension
---@field allowNether boolean Whether the server allows the nether dimension
---@field allowFlight boolean Whether the server allows flight
---@field idleTimeout number The idle timeout in seconds for players
server = {}

---Sets whether the server allows pausing when empty
---@param value boolean Whether the server allows pausing when empty
function server.allowPausing(value) end

---Broadcasts a formatted message to all plauers on the server
---@param message string The message to broadcast
function server.broadcast(message) end

---Reloads the server and all of its plugins and data.
---Equivalent to doing /reload
function server.reload() end

---Reloads all Minecraft data and datapacks on thr server.
---Equivalent to doing /minecraft:reload
function server.reloadMinecraftData() end

---Reloads the whitelist from file
function server.reloadWhitelist() end

---Reloads the permissions data from Bukkit's permissions.yml
function server.reloadPermissions() end

---Reloads all command aliases on the server
function server.reloadCommandAliases() end

---Shuts down the server and saves all data
function server.shutdown() end

---Restarts the server using Spigot's restart script config value
function server.restart() end