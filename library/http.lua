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

---@class http
http = {}

---@class HTTPOptions
---@field timeout number | nil The timeout for the request in milliseconds (default: 30000)
---@field followRedirects boolean | nil Whether to follow redirects (default: true)
local HTTPOptions = {}

---@class HTTPResponse
---@field text string The response body as text
---@field json table | nil The response body as JSON (if applicable)
local HTTPResponse = {}

---Send a GET request to the specified URL
---@param url string The URL to send the request to
---@param options HTTPOptions The options for the request
---@return HTTPResponse
function http.get(url, options) end