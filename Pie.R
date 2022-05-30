



col_1 <- magma(30)

pie(table(f_mut_total$Silent), labels = c("ACC", "BLCA", "BRCA", "CESC", "CHOL", "COAD", 
                                          "DLBC", "GBM", "HNSC", "KICH", "KIRC", "KIRP", "LAML", 
                                          "LGG", "LIHC", "LUAD", "LUSC", "MESO", "OV", "PAAD",
                                          "PCPG", "READ", "SARC", "SKCM", "STAD", "THCA", "THYM",
                                          "UCEC", "UCS", "UVM" ), 
    col = col_1, main = "Silent mutations in Cancers")
table(f_mut_total$Silent)

lbs <- f_mut_total[1:30, 1]
silent <- f_mut_total[1:30, 2]

pie(as.numeric(silent), labels = lbs, col = rainbow(13), main = "Silent mutations in Cancers")


pie(cancer_mut$Total, labels = lbs, col = rainbow())


n_distinct(pan_cancer_NA$sample_id)



