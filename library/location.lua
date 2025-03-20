---@meta

---@class location
location = {}

---@param x number The x coordinate of the location
---@param y number The y coordinate of the location
---@param z number The z coordinate of the location
---@param world? string The name or UUID of the world
---@param yaw? number The yaw of the location
---@param pitch? number The pitch of the location
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
