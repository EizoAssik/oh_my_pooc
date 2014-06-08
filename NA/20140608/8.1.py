#encoding=utf-8
y = [0.2500, 0.2268, 0.2066]

args = [
	[-3, 4, -1],
	[-1, 0, 1],
	[1, -4, 3]
]

for arg in args:
	# print(list(zip(arg,y)))
    print(sum(map(lambda x: x[1]*x[0], list(zip(arg, y))))/0.2)