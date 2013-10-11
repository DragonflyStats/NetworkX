with(PlantGrowth, tapply(weight, group, mean))
with(PlantGrowth, aov(weight ~ group)) -> aov.out
summary.aov(aov.out)
summary.lm(aov.out)
