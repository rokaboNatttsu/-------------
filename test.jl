#using StatsBase
items = [i for i = 1:10]
weights = [i/10 for i = 1:10]
sample(items, Weights(weights), 10)