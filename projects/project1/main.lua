-- pages describes all of the different information that we want to display
pages = {
    { characters = {2,2,2,2,6,6,6,6}, text = "god fuck my baka life i finally found an empty room", color=1},
    { characters = {1, 2}, text = "who the fuck are you??", color=2},
    { characters = {1, 2}, text = "1: ignore her 2: say your name", color=1}, 
    { characters = {1, 2}, text = "...", color=1},
    { characters = {1, 2}, text = "...", color=2},
    { characters = {1, 2}, text = "not much of a talkerrr are we", color=2},
    { characters = {1,2}, text = "im lilian, whats your problem", color=1},}




-- some preset colors to set the text too (bugged sets whole screen to that color)
textcolors = {
    {r = 255/255, g = 255/255, b = 255/255},
    {r = 237/255, g = 140/255, b = 133/255},
    {r= 162/255, g = 232/255, b = 165/255},
    {r = 162/255, g = 175/255, b = 232/255},}

-- describes the positons for each of the 8 character slots
characterslot = {
    {x = 130, y = 30},
    {x = 1400, y = 30},
    {x = 500, y = 30},
    {x = 900, y = 30},
    {x = 480, y = 750},
    {x = 1750, y = 750},
    {x = 850, y = 750},
    {x = 1250, y = 750},}

-- list of the character images 
    -- 1. stoner girl
    -- 2. spotty girl
    -- 6. spotty girls boyfriend
    -- 3. coke desk girl
    -- 4. laying down girl
    -- 5. ghost girl

character = {}
--
function love.load()
    -- load the images
    background = love.graphics.newImage("background.png")
        character1 = love.graphics.newImage("1.png")
        character2 = love.graphics.newImage("2.png")
        character2b = love.graphics.newImage("2b.png")
        character3 = love.graphics.newImage("3.png")
        character4 = love.graphics.newImage("4.png")
        character5 = love.graphics.newImage("5.png")

    -- assigning all the character images to the character table
    character[1] = character1
        character[2] = character2
        character[3] = character3
        character[4] = character4
        character[5] = character5
        character[6] = character2b
        blank = love.graphics.newImage("blank.png")
        character[7] = blank

    -- fullscreen
    love.window.setFullscreen(true, "desktop")
end
--
function love.draw()
    love.graphics.draw(background, 0, 0)


    -- draw a black rectangle at the bottom of the screen
    love.graphics.setColor(black.r, black.g, black.b, 255)
    love.graphics.rectangle("fill", 0, 900, 1920, 180)
    
    -- 
    -- put the text in the rectangle
    love.graphics.setColor(textcolors[curslide.color].r, textcolors[curslide.color].g, textcolors[curslide.color].b, 255)
    love.graphics.print(curslide.text, 10, 910, 0, 3, 3)

end


