local function _GdN9mluJ(h,k)
  local r={}
  for i=1,#h,2 do
    r[#r+1]=string.char((tonumber(string.sub(h,i,i+1),16)-k)%256)
  end
  return table.concat(r)
end
local ok, err = pcall(function()
    
    local new = Instance.new
    local c3 = Color3.fromRGB
    local u2 = UDim2.new
    local v2 = Vector2.new
    local delay = task.delay
    local random = math.random
    local pcall = pcall
    local type = type

    local Players = game:GetService(_GdN9mluJ("6682778f7b8889",22))
    local CoreGui = game:GetService(_GdN9mluJ("a1cdd0c3a5d3c7",94))
    local LocalPlayer = Players.LocalPlayer

    local guiParent
    pcall(function()
        if type(gethui) == _GdN9mluJ("c8d7d0c5d6cbd1d0",98) then guiParent = gethui() end
    end)
    if not guiParent then
        pcall(function() guiParent = CoreGui end)
    end
    if not guiParent then
        guiParent = LocalPlayer:WaitForChild(_GdN9mluJ("7b978ca4909d72a094",43))
    end

    
    local setclipboardFn = setclipboard
    local toclipboardFn = toclipboard
    local function copyText(text)
        local success = false
        if setclipboardFn then
            success = pcall(setclipboardFn, text)
        end
        if not success and toclipboardFn then
            pcall(toclipboardFn, text)
        end
    end

    local executors = {
        { label = _GdN9mluJ("e4d1dadbacd1e4d1cfe1e0dbde",140),   domain = _GdN9mluJ("a28f989957999090938d938b96589e999a",42) },
        { label = _GdN9mluJ("f3e7eaeffbf3c6ebfeebe9fbfaf5f8",166), domain = _GdN9mluJ("5145484d595111495c494712585354",228) },
        { label = _GdN9mluJ("a79bae9da29b7a9fb29f9dafaea9ac",90), domain = _GdN9mluJ("2c2033222720ec2437242234332e31ed373839",191) },
    }

    local C = {
        bg      = c3(240, 240, 240), 
        card    = c3(255, 255, 255), 
        border  = c3(200, 200, 200), 
        text    = c3(30, 30, 30),    
        subtext = c3(100, 100, 100), 
        btn     = c3(0, 162, 255),   
        btnText = c3(255, 255, 255),
        green   = c3(0, 180, 80),    
    }

    
    local fonts = Enum.Font
    local fGothamBold = fonts.GothamBold
    local fGotham = fonts.Gotham
    local fCode = fonts.Code
    local alignX = Enum.TextXAlignment
    local alignLeft = alignX.Left
    local alignY = Enum.TextYAlignment
    local alignTop = alignY.Top
    local corner = UDim.new(0, 8)
    local corner6 = UDim.new(0, 6)

    local function buildGUI()
        local gui = new(_GdN9mluJ("e8f807fafa03dc0afe",149))
        gui.Name = _GdN9mluJ("86a396a0a3ac79a6a6a3a67ba99d93",52) .. random(10000, 99999)
        gui.ResetOnSpawn = false
        gui.IgnoreGuiInset = true
        gui.DisplayOrder = 999999
        gui.Parent = guiParent

        
        local bd = new(_GdN9mluJ("1e4a39453d",216))
        bd.Size = u2(1, 0, 1, 0)
        bd.BackgroundColor3 = c3(0, 0, 0)
        bd.BackgroundTransparency = 0.6
        bd.BorderSizePixel = 0
        bd.Parent = gui

        
        local card = new(_GdN9mluJ("dc08f703fb",150))
        card.AnchorPoint = v2(0.5, 0.5)
        card.Position = u2(0.5, 0, 0.5, 0)
        card.Size = u2(0, 480, 0, 320)
        card.BackgroundColor3 = C.card
        card.BorderSizePixel = 0
        card.Parent = gui

        new(_GdN9mluJ("2f231d494c483f4c",218), card).CornerRadius = corner

        local stroke = new(_GdN9mluJ("625660817f7c7872",13), card)
        stroke.Color = C.border
        stroke.Thickness = 1.5

        
        local title = new(_GdN9mluJ("1c2d403c14292a2d34",200))
        title.Size = u2(1, -40, 0, 28)
        title.Position = u2(0, 20, 0, 20)
        title.BackgroundTransparency = 1
        title.Text = _GdN9mluJ("3568555365645f6210456054516455104255616559625554",240)
        title.TextColor3 = C.text
        title.TextSize = 20
        title.Font = fGothamBold
        title.TextXAlignment = alignLeft
        title.Parent = card

        
        local line = new(_GdN9mluJ("79a594a098",51))
        line.Size = u2(1, -40, 0, 1)
        line.Position = u2(0, 20, 0, 56)
        line.BackgroundColor3 = C.border
        line.BorderSizePixel = 0
        line.Parent = card

        
        local subtitle = new(_GdN9mluJ("728396926a7f80838a",30))
        subtitle.Size = u2(1, -40, 0, 34)
        subtitle.Position = u2(0, 20, 0, 66)
        subtitle.BackgroundTransparency = 1
        subtitle.Text = _GdN9mluJ("5e747a7725687a77776a7379256a7d6a687a797477256e7825747a796966796a6925667369256e736874727566796e67716a330f55716a66786a25686d7474786a256673256a7d6a687a79747725676a71747c3f",5)
        subtitle.TextColor3 = C.subtext
        subtitle.TextSize = 14
        subtitle.Font = fGotham
        subtitle.TextWrapped = true
        subtitle.TextXAlignment = alignLeft
        subtitle.TextYAlignment = alignTop
        subtitle.LineHeight = 1.3
        subtitle.Parent = card

        
        local START_Y = 120
        local ROW_H = 52
        local GAP = 10

        for i, item in ipairs(executors) do
            local y = START_Y + (i - 1) * (ROW_H + GAP)

            local row = new(_GdN9mluJ("4874636f67",2))
            row.Size = u2(1, -40, 0, ROW_H)
            row.Position = u2(0, 20, 0, y)
            row.BackgroundColor3 = C.bg
            row.BorderSizePixel = 0
            row.Parent = card
            new(_GdN9mluJ("b8aca6d2d5d1c8d5",99), row).CornerRadius = corner6

            local rowStroke = new(_GdN9mluJ("f4e8f213110e0a04",159), row)
            rowStroke.Color = C.border
            rowStroke.Thickness = 1

            local nameLbl = new(_GdN9mluJ("a4b5c8c49cb1b2b5bc",80))
            nameLbl.Size = u2(1, -140, 0, 14)
            nameLbl.Position = u2(0, 12, 0, 9)
            nameLbl.BackgroundTransparency = 1
            nameLbl.Text = item.label
            nameLbl.TextColor3 = C.text
            nameLbl.TextSize = 12
            nameLbl.Font = fGothamBold
            nameLbl.TextXAlignment = alignLeft
            nameLbl.Parent = row

            local domLbl = new(_GdN9mluJ("344558542c4142454c",224))
            domLbl.Size = u2(1, -140, 0, 16)
            domLbl.Position = u2(0, 12, 0, 25)
            domLbl.BackgroundTransparency = 1
            domLbl.Text = item.domain
            domLbl.TextColor3 = C.subtext
            domLbl.TextSize = 13
            domLbl.Font = fCode
            domLbl.TextXAlignment = alignLeft
            domLbl.Parent = row

            local copyBtn = new(_GdN9mluJ("4556696533666565605f",241))
            copyBtn.Size = u2(0, 100, 0, 32)
            copyBtn.Position = u2(1, -112, 0.5, -16)
            copyBtn.BackgroundColor3 = C.btn
            copyBtn.Text = _GdN9mluJ("fb272831d804212623",184)
            copyBtn.TextColor3 = C.btnText
            copyBtn.TextSize = 13
            copyBtn.Font = fGothamBold
            copyBtn.BorderSizePixel = 0
            copyBtn.AutoButtonColor = true
            copyBtn.Parent = row
            new(_GdN9mluJ("6458527e817d7481",15), copyBtn).CornerRadius = corner6

            copyBtn.MouseButton1Click:Connect(function()
                copyText(item.domain)
                copyBtn.Text = _GdN9mluJ("4a7677706c6b28",7)
                copyBtn.BackgroundColor3 = C.green
                delay(2, function()
                    if copyBtn and copyBtn.Parent then
                        copyBtn.Text = _GdN9mluJ("caf6f700a7d3f0f5f2",135)
                        copyBtn.BackgroundColor3 = C.btn
                    end
                end)
            end)
        end

        
        local footer = new(_GdN9mluJ("dff003ffd7ecedf0f7",139))
        footer.Size = u2(1, -40, 0, 16)
        footer.Position = u2(0, 20, 1, -26)
        footer.BackgroundTransparency = 1
        footer.Text = _GdN9mluJ("5e8391828f3d928d817e91868b84493d8f8290917e8f913d968c928f3d847e8a824c8295828092918c8f4b",29)
        footer.TextColor3 = C.subtext
        footer.TextSize = 11
        footer.Font = fGotham
        footer.TextXAlignment = alignLeft
        footer.Parent = card

        gui.Enabled = true
    end

    
    buildGUI()
end)

if not ok then
    pcall(function() warn(_GdN9mluJ("a9b7ab82a7d4d4d1d49c82",98) .. tostring(err)) end)
end