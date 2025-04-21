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

---@class location
location = {}

---@param x number The x coordinate of the location
---@param y number The y coordinate of the location
---@param z number The z coordinate of the location
---@param world string The name or UUID of the world
---@param yaw? number The yaw of the location (default: 0)
---@param pitch? number The pitch of the location (default: 0)
---@return LuaLocation
function location.new(x, y, z, world, yaw, pitch) end

---@class LuaLocation
---@field x number The x coordinate of the location
---@field y number The y coordinate of the location
---@field z number The z coordinate of the location
---@field world string The name  of the world
---@field worldUUID string The UUID of the world
---@field yaw number The yaw of the location
---@field pitch number The pitch of the location 
local LuaLocation = {}
