



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

#acc
acc_lbs <- race_df[1:5, 1]
acc_count <- as.numeric(race_df[ 1:5, 10])

pie(acc_count, 
    labels = paste0(round(100 * acc_count/sum(acc_count), 2), "%"), 
    col = c("lightgoldenrodyellow", "cadetblue2", "lightpink1", 
            "goldenrod1", "darkolivegreen2"), main = "TCGA-ACC", 
    cex = 0.8)

legend(0.8, 1, legend = acc_lbs, 
       fill = c("lightgoldenrodyellow", "cadetblue2", "lightpink1", 
                "goldenrod1", "darkolivegreen2"),
       cex = 0.55, title = "TCGA Races", text.font = 2, bg = "white")

#BRCA
race_lbs <- race_df[1:5, 1]
brca_count <- as.numeric(race_df[ 1:5, 5])

pie(as.numeric(brca_count), 
    labels = paste0(round(100 * brca_count/sum(brca_count), 2), "%"), 
    col = c("lightgoldenrodyellow", "cadetblue2", "lightpink1", 
            "goldenrod1", "darkolivegreen2"), main = "TCGA-BRCA", 
    cex = 0.8)

legend(0.8, 1, legend = race_lbs, 
       fill = c("lightgoldenrodyellow", "cadetblue2", "lightpink1", 
                "goldenrod1", "darkolivegreen2"),
       cex = 0.55, title = "TCGA Races", text.font = 2, bg = "white")

#par(mar=c(5.1, 4.1, 4.1, 2.1) is default bottom, left, top, right
par(mar=c(0,0,1,0))
par(mfrow = c(1,1))


#CESC
cesc_count <- as.numeric(race_df[ 1:5, 3])

pie(as.numeric(cesc_count), 
    labels = paste0(round(100 * cesc_count/sum(cesc_count), 2), "%"), 
    col = c("lightgoldenrodyellow", "cadetblue2", "lightpink1", 
            "goldenrod1", "darkolivegreen2"), main = "TCGA-CESC", 
    cex = 0.8)


#OV
ov_count <- as.numeric(race_df[ 1:5, 4])

pie(as.numeric(ov_count), 
    labels = paste0(round(100 * ov_count/sum(ov_count), 2), "%"), 
    col = c("lightgoldenrodyellow", "cadetblue2", "lightpink1", 
            "goldenrod1", "darkolivegreen2"), main = "TCGA-OV", 
    cex = 0.8)

#PRAD
prad_count <- as.numeric(race_df[ 1:5, 6])

pie(as.numeric(prad_count), 
    labels = paste0(round(100 * prad_count/sum(prad_count), 2), "%"), 
    col = c("lightgoldenrodyellow", "cadetblue2", "lightpink1", 
            "goldenrod1", "darkolivegreen2"), main = "TCGA-PRAD", 
    cex = 0.8)

#TGCT
tgct_count <- as.numeric(race_df[ 1:5, 7])

pie(as.numeric(tgct_count), 
    labels = paste0(round(100 * tgct_count/sum(tgct_count), 2), "%"), 
    col = c("lightgoldenrodyellow", "cadetblue2", "lightpink1", 
            "goldenrod1", "darkolivegreen2"), main = "TCGA-TGCT", 
    cex = 0.8)

#UCS
ucs_count <- as.numeric(race_df[ 1:5, 8])

pie(as.numeric(ucs_count), 
    labels = paste0(round(100 * ucs_count/sum(ucs_count), 2), "%"), 
    col = c("lightgoldenrodyellow", "cadetblue2", "lightpink1", 
            "goldenrod1", "darkolivegreen2"), main = "TCGA-UCS", 
    cex = 0.8)

#UCEC
ucec_count <- as.numeric(race_df[ 1:5, 9])

pie(as.numeric(ucec_count), 
    labels = paste0(round(100 * ucec_count/sum(ucec_count), 2), "%"), 
    col = c("lightgoldenrodyellow", "cadetblue2", "lightpink1", 
            "goldenrod1", "darkolivegreen2"), main = "TCGA-UCEC", 
    cex = 0.8)

#BLCA
blca_count <- as.numeric(race_df[ 1:5, 11])

pie(as.numeric(blca_count), 
    labels = paste0(round(100 * blca_count/sum(blca_count), 2), "%"), 
    col = c("lightgoldenrodyellow", "cadetblue2", "lightpink1", 
            "goldenrod1", "darkolivegreen2"), main = "TCGA-BLCA", 
    cex = 0.8)

#COAD
coad_count <- as.numeric(race_df[ 1:5, 12])

pie(as.numeric(coad_count), 
    labels = paste0(round(100 * coad_count/sum(coad_count), 2), "%"), 
    col = c("lightgoldenrodyellow", "cadetblue2", "lightpink1", 
            "goldenrod1", "darkolivegreen2"), main = "TCGA-COAD", 
    cex = 0.8)

#GBM
gbm_count <- as.numeric(race_df[ 1:5, 13])

pie(as.numeric(gbm_count), 
    labels = paste0(round(100 * gbm_count/sum(gbm_count), 2), "%"), 
    col = c("lightgoldenrodyellow", "cadetblue2", "lightpink1", 
            "goldenrod1", "darkolivegreen2"), main = "TCGA-GBM", 
    cex = 0.8)

#HNSC
hnsc_count <- as.numeric(race_df[ 1:5, 14])

pie(as.numeric(hnsc_count), 
    labels = paste0(round(100 * hnsc_count/sum(hnsc_count), 2), "%"), 
    col = c("lightgoldenrodyellow", "cadetblue2", "lightpink1", 
            "goldenrod1", "darkolivegreen2"), main = "TCGA-HNSC", 
    cex = 0.8)

#KIRC
kirc_count <- as.numeric(race_df[ 1:5, 15])

pie(as.numeric(kirc_count), 
    labels = paste0(round(100 * kirc_count/sum(kirc_count), 2), "%"), 
    col = c("lightgoldenrodyellow", "cadetblue2", "lightpink1", 
            "goldenrod1", "darkolivegreen2"), main = "TCGA-KIRC", 
    cex = 0.8)

#LUAD
luad_count <- as.numeric(race_df[ 1:5, 16])

pie(as.numeric(luad_count), 
    labels = paste0(round(100 * luad_count/sum(luad_count), 2), "%"), 
    col = c("lightgoldenrodyellow", "cadetblue2", "lightpink1", 
            "goldenrod1", "darkolivegreen2"), main = "TCGA-LUAD", 
    cex = 0.8)

#CHOL
chol_count <- as.numeric(race_df[ 1:5, 17])

pie(as.numeric(chol_count), 
    labels = paste0(round(100 * chol_count/sum(chol_count), 2), "%"), 
    col = c("lightgoldenrodyellow", "cadetblue2", "lightpink1", 
            "goldenrod1", "darkolivegreen2"), main = "TCGA-CHOL", 
    cex = 0.8)

#KICH
kich_count <- as.numeric(race_df[ 1:5, 18])

pie(as.numeric(kich_count), 
    labels = paste0(round(100 * kich_count/sum(kich_count), 2), "%"), 
    col = c("lightgoldenrodyellow", "cadetblue2", "lightpink1", 
            "goldenrod1", "darkolivegreen2"), main = "TCGA-KICH", 
    cex = 0.8)

#KIRP
kirp_count <- as.numeric(race_df[ 1:5, 19])

pie(as.numeric(kirp_count), 
    labels = paste0(round(100 * kirp_count/sum(kirp_count), 2), "%"), 
    col = c("lightgoldenrodyellow", "cadetblue2", "lightpink1", 
            "goldenrod1", "darkolivegreen2"), main = "TCGA-KIRP", 
    cex = 0.8)

#LIHC
lihc_count <- as.numeric(race_df[ 1:5, 20])

pie(as.numeric(lihc_count), 
    labels = paste0(round(100 * lihc_count/sum(lihc_count), 2), "%"), 
    col = c("lightgoldenrodyellow", "cadetblue2", "lightpink1", 
            "goldenrod1", "darkolivegreen2"), main = "TCGA-LIHC", 
    cex = 0.8)

#LUSC
lusc_count <- as.numeric(race_df[ 1:5, 21])

pie(as.numeric(lusc_count), 
    labels = paste0(round(100 * lusc_count/sum(lusc_count), 2), "%"), 
    col = c("lightgoldenrodyellow", "cadetblue2", "lightpink1", 
            "goldenrod1", "darkolivegreen2"), main = "TCGA-LUSC", 
    cex = 0.8)

#MESO
meso_count <- as.numeric(race_df[ 1:5, 22])

pie(as.numeric(meso_count), 
    labels = paste0(round(100 * meso_count/sum(meso_count), 2), "%"), 
    col = c("lightgoldenrodyellow", "cadetblue2", "lightpink1", 
            "goldenrod1", "darkolivegreen2"), main = "TCGA-MESO", 
    cex = 0.8)

#READ
read_count <- as.numeric(race_df[ 1:5, 23])

pie(as.numeric(read_count), 
    labels = paste0(round(100 * read_count/sum(read_count), 2), "%"), 
    col = c("lightgoldenrodyellow", "cadetblue2", "lightpink1", 
            "goldenrod1", "darkolivegreen2"), main = "TCGA-READ", 
    cex = 0.8)

#STAD
stad_count <- as.numeric(race_df[ 1:5, 24])

pie(as.numeric(stad_count), 
    labels = paste0(round(100 * stad_count/sum(stad_count), 2), "%"), 
    col = c("lightgoldenrodyellow", "cadetblue2", "lightpink1", 
            "goldenrod1", "darkolivegreen2"), main = "TCGA-STAD", 
    cex = 0.8)

#THCA
thca_count <- as.numeric(race_df[ 1:5, 25])

pie(as.numeric(thca_count), 
    labels = paste0(round(100 * thca_count/sum(thca_count), 2), "%"), 
    col = c("lightgoldenrodyellow", "cadetblue2", "lightpink1", 
            "goldenrod1", "darkolivegreen2"), main = "TCGA-THCA", 
    cex = 0.8)

#UVM
uvm_count <- as.numeric(race_df[ 1:5, 26])

pie(as.numeric(uvm_count), 
    labels = paste0(round(100 * uvm_count/sum(uvm_count), 2), "%"), 
    col = c("lightgoldenrodyellow", "cadetblue2", "lightpink1", 
            "goldenrod1", "darkolivegreen2"), main = "TCGA-UVM", 
    cex = 0.8)

#DLBC
dlbc_count <- as.numeric(race_df[ 1:5, 27])

pie(as.numeric(dlbc_count), 
    labels = paste0(round(100 * dlbc_count/sum(dlbc_count), 2), "%"), 
    col = c("lightgoldenrodyellow", "cadetblue2", "lightpink1", 
            "goldenrod1", "darkolivegreen2"), main = "TCGA-DLBC", 
    cex = 0.8)

#LGG
lgg_count <- as.numeric(race_df[ 1:5, 28])

pie(as.numeric(lgg_count), 
    labels = paste0(round(100 * lgg_count/sum(lgg_count), 2), "%"), 
    col = c("lightgoldenrodyellow", "cadetblue2", "lightpink1", 
            "goldenrod1", "darkolivegreen2"), main = "TCGA-LGG", 
    cex = 0.8)

#SARC
sarc_count <- as.numeric(race_df[ 1:5, 29])

pie(as.numeric(sarc_count), 
    labels = paste0(round(100 * sarc_count/sum(sarc_count), 2), "%"), 
    col = c("lightgoldenrodyellow", "cadetblue2", "lightpink1", 
            "goldenrod1", "darkolivegreen2"), main = "TCGA-SARC", 
    cex = 0.8)

#THYM
thym_count <- as.numeric(race_df[ 1:5, 30])

pie(as.numeric(thym_count), 
    labels = paste0(round(100 * thym_count/sum(thym_count), 2), "%"), 
    col = c("lightgoldenrodyellow", "cadetblue2", "lightpink1", 
            "goldenrod1", "darkolivegreen2"), main = "TCGA-THYM", 
    cex = 0.8)

#PCPG
pcpg_count <- as.numeric(race_df[ 1:5, 31])

pie(as.numeric(pcpg_count), 
    labels = paste0(round(100 * pcpg_count/sum(pcpg_count), 2), "%"), 
    col = c("lightgoldenrodyellow", "cadetblue2", "lightpink1", 
            "goldenrod1", "darkolivegreen2"), main = "TCGA-PCPG", 
    cex = 0.8)

#LAML
laml_count <- as.numeric(race_df[ 1:5, 32])

pie(as.numeric(laml_count), 
    labels = paste0(round(100 * laml_count/sum(laml_count), 2), "%"), 
    col = c("lightgoldenrodyellow", "cadetblue2", "lightpink1", 
            "goldenrod1", "darkolivegreen2"), main = "TCGA-LAML", 
    cex = 0.8)

#PAAD
paad_count <- as.numeric(race_df[ 1:5, 33])

pie(as.numeric(paad_count), 
    labels = paste0(round(100 * paad_count/sum(paad_count), 2), "%"), 
    col = c("lightgoldenrodyellow", "cadetblue2", "lightpink1", 
            "goldenrod1", "darkolivegreen2"), main = "TCGA-PAAD", 
    cex = 0.8)

#SKCM
skcm_count <- as.numeric(race_df[ 1:5, 34])

pie(as.numeric(skcm_count), 
    labels = paste0(round(100 * skcm_count/sum(skcm_count), 2), "%"), 
    col = c("lightgoldenrodyellow", "cadetblue2", "lightpink1", 
            "goldenrod1", "darkolivegreen2"), main = "TCGA-SKCM", 
    cex = 0.8)

plot(NULL ,xaxt='n',yaxt='n',bty='n',ylab='',xlab='', xlim=0:1, ylim=0:1)
legend("topleft", legend = race_lbs, 
       pch=16, pt.cex=3, cex=1.2, bty='n',
       col = c("lightgoldenrodyellow", "cadetblue2", "lightpink1", 
               "goldenrod1", "darkolivegreen2"))


#US Census
par(mfrow = c(1,2))
census_count <- as.numeric(race_per[ 1:5, 3])

pie(as.numeric(census_count), 
    labels = paste0(census_count,"%"),
    col = c("lightgoldenrodyellow", "cadetblue2", "lightpink1", 
            "goldenrod1", "darkolivegreen2"), 
    main = "US Population Census", 
    cex = 0.8)

#TCGA Total
tcga_count <- as.numeric(race_df[ 1:5, 2])

pie(as.numeric(tcga_count), 
    labels = paste0(round(100 * tcga_count/sum(tcga_count), 2), "%"),
    col = c("lightgoldenrodyellow", "cadetblue2", "lightpink1", 
            "goldenrod1", "darkolivegreen2"), 
    main = "Total TCGA", 
    cex = 0.8)



