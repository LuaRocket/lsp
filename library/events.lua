---@meta

---@class events
events = {}

---Register a callback function for when an event occurs
---@param event string The name of the event to listen for
---| "PlayerJoinEvent"
---| "BlockBreakEvent"
---| "BlockPlaceEvent"
---| "PlayerMoveEvent"
---| "PlayerQuitEvent"
---| "PlayerInteractEvent"
---| "AsyncChatEvent"
---@param callback function The function to call when the event occurs
function events.on(event, callback) end
