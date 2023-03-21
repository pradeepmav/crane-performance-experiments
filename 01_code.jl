using CSV, DataFrames, StatsPlots, GLM
cranedata = CSV.read("crane_p_reg_2.csv", DataFrame)

@df cranedata plot(:hour_of_the_shift, :avg_crane_moves, seriestype = :scatter, legend = :none, xlabel = "Hour of the (8 hour) Shift", ylabel = "Average No of Moves at the end of the Hour")
