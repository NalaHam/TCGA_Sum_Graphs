pan_mut_types <- mut_total$

pan_mut_types$Mutation_Count <- pan_mut_types[,1]

barplot(pan_mut_types)

pan_mut_types <- t(pan_mut_types)

names(pan_mut_types)[1] <- "Mutation Count"

table <- table(pan_mut_types)

barplot(table)



cancer_mut <- mut_total[ 1:32, c(2,15)]

cancer_mut <- cancer_mut[order(cancer_mut$Total, decreasing = TRUE),]

barplot(cancer_mut$Total)

lbs <- cancer_mut[1:32, 1]

barplot(cancer_mut$Total,
        main = "Total Mutations in TCGA Cancers",
        xlab = "",
        ylab = "",
        names.arg = lbs,
        col = rainbow(32),
        horiz = FALSE, las = 2)


nonrep_cancer_mut <- nonrep_mut_total[ 1:25, c(2,15)]

nonrep_cancer_mut <- nonrep_cancer_mut[order(nonrep_cancer_mut$Total, decreasing = TRUE),]

lbs_1 <- nonrep_cancer_mut[1:25, 1]

par(mar = c(12, 5, 4.1, 2.1))
c(5.1, 4.1, 4.1, 2.1)

barplot(nonrep_cancer_mut$Total,
        main = "Total Mutations in Non-Reproductive TCGA Cancers",
        xlab = "",
        ylab = "",
        names.arg = lbs_1,
        col = rainbow(32),
        horiz = FALSE, las = 2)

Total.a <- as.numeric(unlist(nonrep_cancer_mut, nonrep_cancer_mut$Total))
Total.a <- Total.a

is.numeric(nonrep_cancer_mut$Total)