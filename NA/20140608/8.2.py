#encoding=utf-8
y = [1.5836494, 1.7974426, 2.0442376, 2.3275054, 2.6510818]

args = [
	[-25, 48, -36,  16, -3],
	[-3, -10,  18, -6,   1],
	[1,  -8,   0,   8,  -1],
	[-1,  6,  -18,  10,  3],
	[3,  -16,  36, -16,  3],
]

for arg in args:
    print(sum(map(lambda x: x[1]*x[0], list(zip(arg, y))))/1.2)