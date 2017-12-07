division = 0

function highLow(a, b)
	return a > b
end


file = io.open("input.txt", "r")
io.input(file)
for i = 1, 16 do
	string1  = io.read()

	ar = {}
	count = 1

	for i in string.gmatch(string1, "%S+") do
		ar[count] = tonumber(i)
		count = count + 1
	end

	table.sort(ar, highLow)

	for i = 1, 16 do
		for j = 1, 16 do
			if(ar[i] % ar[j] == 0)then
				if(ar[i] ~= ar[j]) then
					division = division + (ar[i] / ar[j])
				end
			end
		end
	end

end
io.close(file)

print(division)
