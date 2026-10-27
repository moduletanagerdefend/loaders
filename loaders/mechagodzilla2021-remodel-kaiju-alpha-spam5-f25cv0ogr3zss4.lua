-- string utilities
local S = {}
function S.trim(s) return (s:gsub("^%s*(.-)%s*$", "%1")) end
return S