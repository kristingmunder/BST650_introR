wcgs_df <- read.csv(file = "/Users/KristinGmunder/Documents/wcgs.csv", header = TRUE, stringsAsFactors = FALSE)
head(wcgs_df)
plot(x = wcgs_df$sbp, y = wcgs_df$dbp)
bp_mod <- lm(sbp ~ dbp, data = wcgs_df)
bp_mod
summary(bp_mod)
# -1 after the x to get no intercept

c(2,3) * 4:5