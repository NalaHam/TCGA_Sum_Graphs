

ods <- race_df[, c("race", "BLCA","BRCA", "CESC", "COAD", "DLBC", "THYM", "LIHC", "STAD", 
                   "THCA", "KIRP", "UCEC")]
write.csv(ods, "odd_cancer_per.csv")
