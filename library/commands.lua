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

---@class commands
commands = {}

---Register a command
---@param command string The name of the command
---@param callback fun(): LuaCommand The registration function for the command
function commands.register(command, callback) end

---Unregister a command
---@param command string The name of the command
function commands.unregister(command) end

---Create a LuaCommand object to pass to `commands.register`
---@return LuaCommand
function commands.new() end

---@class LuaCommand
local LuaCommand = {}

---Set the aliases of the command
---@param aliases string[] The aliases of the command
---@return LuaCommand
function LuaCommand.aliases(aliases) end

---Set the executor function of the command
---@param executor fun(sender: LuaPlayer, args: string[]) The function to execute when the command is called
---@return LuaCommand
function LuaCommand.executor(executor) end

---Set the description of the command
---@param description string The description of the command
---@return LuaCommand
function LuaCommand.description(description) end

---Set the usage of the command
---@param usage string The usage of the command
---@return LuaCommand
function LuaCommand.usage(usage) end

---Set the permission node required to use the command
---@param permission string The permission node required to use the command
---@return LuaCommand
function LuaCommand.permission(permission) end

---Set the permission message to show when the player does not have permission to use the command
---@param message string The message to show when the player does not have permission to use the command
---@return LuaCommand
function LuaCommand.permissionMessage(message) end

---Set the minimum number of arguments required to use the command
---@param minArgs integer The minimum number of arguments required to use the command
---@return LuaCommand
function LuaCommand.minArgs(minArgs) end

---Returns the command object
---@return LuaCommand
function LuaCommand.reference() end
