local function get_buffer_count()
    local buffers = vim.fn.execute("ls")
    local count = 0
    for line in string.gmatch(buffers, "[^\r\n]+") do
        if string.match(line, "^%s*%d+") then
            count = count + 1
        end
    end
    return count
end

local function update_winbar()
    local buffer_count = get_buffer_count()
    vim.opt.winbar = "("
        .. buffer_count
        .. ") %m "
        .. "%f"
end

vim.api.nvim_create_autocmd({ "BufEnter", "WinEnter" }, {
    callback = update_winbar,
})
