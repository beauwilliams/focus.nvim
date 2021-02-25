local DEFAULT_WIDTH = 120
local DEFAULT_HEIGHT = 0

local defaults = {
    enable = true,
    width = DEFAULT_WIDTH,
    height = DEFAULT_HEIGHT,
    cursorline = true,
    signcolumn = true,
    winhighlight = false,
    excluded_filetypes = {'NvimTree','NerdTree','CHADTree', 'java'}
}

local function verify()
    if type(defaults.width) ~= 'number' then
        defaults.width = DEFAULT_WIDTH
    end

    if type(defaults.height) ~= 'number' then
        defaults.height = DEFAULT_HEIGHT
    end
end

local function set(table, key, value)
    defaults[key] = value
end

local function get(table, key)
    return defaults[key]
end

return {
    defaults = defaults,
    get = get,
    set = set,
    verify = verify,
}
