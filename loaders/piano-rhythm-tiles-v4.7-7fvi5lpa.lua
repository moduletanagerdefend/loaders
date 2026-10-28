-- math helpers
local function add(a,b) return a+b end
local nums = {1,2,3,4,5}
local s = 0
for _,n in ipairs(nums) do s = add(s,n) end
return { sum = s }