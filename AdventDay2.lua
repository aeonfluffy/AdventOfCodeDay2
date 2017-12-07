function findLandS(lstring)
	local Largest = 0
	local Smallest = 10000
	for i in string.gmatch(lstring, "%S+")do
		if Largest < tonumber(i) then
			Largest = tonumber(i)
		end
		if Smallest > tonumber(i) then
			Smallest = tonumber(i)
		end
	end
	return Largest, Smallest
end


minus = 0
addition = 0

file = io.open("input.txt", "r")
io.input(file)
for i = 1, 16 do
	local smallest = 0
	local largest = 0
	largest, smallest = findLandS(io.read())
	print(largest, smallest)
	minus = largest - smallest
	addition = addition + minus
end
io.close(file)

print(addition)
