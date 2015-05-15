
s = 4
h = math.sqrt(3)/2 * s
f = 50

for i = 1, 2 do
move(76)
turn(90)
move(110)
turn(90)
end

total_width = 96
total_height = 135

if false then
turn(180)
move((total_width-76)/2)
turn(-180)
turn(-90)
mid = (math.ceil((total_height-110) / h)/2) * h 
move(mid)
turn(90)
end

-- align 
turn(180)
move(4)
turn(-180)

turn(90)
move(h/2)
turn(-90)

-- move down
pitch(90)
cut(0.5, 40)
pitch(-90)

for y = 1, 33 do
    print ("( row " .. y .. " )")
    local even_row = y % 2 == 0
    local dir
    if not even_row then
        dir = 1
    else
        dir = -1
    end
    if y % 2 == 0 then
        --cut(s, f)
    end
    for x = 1, 7 do
        turn(-60*dir)
        cut(s, f)
        turn(60*dir)
        cut(s, f)
        turn(60*dir)
        cut(s, f)

        turn(-60*dir)
        cut(s, f)
    end
    if y % 2 ~= 0 then
        --cut(s, f)
    end
    turn(90*dir)
    move(h)
    turn(90*dir)
end

pitch(-90)
move(5.5)
pitch(90)
move_to(0,0,0)
