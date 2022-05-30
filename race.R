
sum(pan_cancers_NA$gender == "female", na.rm=T)

gender_sum <- pan_cancers_NA[,c(2,3,14,15,16,17,18,19,20,21,22)]

gender_sum <- distinct(gender_sum, .keep_all = TRUE)


#pan cancer sum
sum(gender_sum$gender == "female", na.rm = TRUE) #5790
sum(gender_sum$gender == "male", na.rm = TRUE) #5188

unique(gender_sum$race)
sum(gender_sum$race == "white", na.rm = TRUE) #8343
sum(gender_sum$race == "black or african american", na.rm = TRUE) #980
sum(gender_sum$race == "asian", na.rm = TRUE) #639
sum(gender_sum$race == "american indian or alaska native", na.rm = TRUE) #28
sum(gender_sum$race == "native hawaiian or other pacific islander", na.rm = TRUE) #13
sum(gender_sum$race == "not reported", na.rm = TRUE) #979
sum(is.na(gender_sum$race)) #148

race <- c(8343,980, 639, 28, 13, 979, 148)
race_n <- c("white", "black or african american", "asian", "american indian or alaska native",
            "native hawaiian or other pacific islander","not reported", "unknown" )
race_df <- data_frame(race_n, race)


unique(gender_sum$Project)

#BRCA 
sum(gender_sum$race == "white" & gender_sum$Project == "TCGA-BRCA", na.rm = TRUE) #757
sum(gender_sum$race == "black or african american"& gender_sum$Project == "TCGA-BRCA", 
    na.rm = TRUE) #183
sum(gender_sum$race == "asian"& gender_sum$Project == "TCGA-BRCA", na.rm = TRUE) #61
sum(gender_sum$race == "american indian or alaska native"& gender_sum$Project == "TCGA-BRCA", 
    na.rm = TRUE) #1
sum(gender_sum$race == "native hawaiian or other pacific islander"& 
      gender_sum$Project == "TCGA-BRCA", na.rm = TRUE) #0
sum(gender_sum$race == "not reported"& gender_sum$Project == "TCGA-BRCA", na.rm = TRUE) #95

sum(gender_sum$Project == "TCGA-BRCA") #1098
1098-(757+183+61+1+95) # =1 NA values

race_df$BRCA <- c(757,183,61,1,0,95,1)


#TCGA-CESC
sum(gender_sum$race == "white" & gender_sum$Project == "TCGA-CESC", na.rm = TRUE) #211
sum(gender_sum$race == "black or african american"& gender_sum$Project == "TCGA-CESC", 
    na.rm = TRUE) #30
sum(gender_sum$race == "asian"& gender_sum$Project == "TCGA-CESC", na.rm = TRUE) #20
sum(gender_sum$race == "american indian or alaska native"& gender_sum$Project == "TCGA-CESC", 
    na.rm = TRUE) #8
sum(gender_sum$race == "native hawaiian or other pacific islander"& 
      gender_sum$Project == "TCGA-CESC", na.rm = TRUE) #2
sum(gender_sum$race == "not reported"& gender_sum$Project == "TCGA-CESC", na.rm = TRUE) #36

sum(gender_sum$Project == "TCGA-CESC") #307
307-(211+30+20+8+2+36) # =0 NA values

race_df$CESC <- c(211,30,20,8,2,36,0)#TCGA-CESC


#OV
sum(gender_sum$race == "white" & gender_sum$Project == "TCGA-OV", na.rm = TRUE) #498
sum(gender_sum$race == "black or african american"& gender_sum$Project == "TCGA-OV", 
    na.rm = TRUE) #34
sum(gender_sum$race == "asian"& gender_sum$Project == "TCGA-OV", na.rm = TRUE) #20
sum(gender_sum$race == "american indian or alaska native"& gender_sum$Project == "TCGA-OV", 
    na.rm = TRUE) #3
sum(gender_sum$race == "native hawaiian or other pacific islander"& 
      gender_sum$Project == "TCGA-OV", na.rm = TRUE) #1
sum(gender_sum$race == "not reported"& gender_sum$Project == "TCGA-OV", na.rm = TRUE) #31

sum(gender_sum$Project == "TCGA-OV") #608
608-(498+34+20+3+1+31) # =21 NA values

race_df$OV <- c(498,34,20,3,1,31,21)#TCGA-OV


#PRAD
sum(gender_sum$race == "white" & gender_sum$Project == "TCGA-PRAD", na.rm = TRUE) #415
sum(gender_sum$race == "black or african american"& gender_sum$Project == "TCGA-PRAD", 
    na.rm = TRUE) #58
sum(gender_sum$race == "asian"& gender_sum$Project == "TCGA-PRAD", na.rm = TRUE) #12
sum(gender_sum$race == "american indian or alaska native"& gender_sum$Project == "TCGA-PRAD", 
    na.rm = TRUE) #1
sum(gender_sum$race == "native hawaiian or other pacific islander"& 
      gender_sum$Project == "TCGA-PRAD", na.rm = TRUE) #0
sum(gender_sum$race == "not reported"& gender_sum$Project == "TCGA-PRAD", na.rm = TRUE) #14

sum(gender_sum$Project == "TCGA-PRAD") #500
500-(415+58+12+14) # =1 NA values

race_df$PRAD <- c(415,58,12,1,0,14,1)#TCGA-PRAD


#TGCT
sum(gender_sum$race == "white" & gender_sum$Project == "TCGA-TGCT", na.rm = TRUE) #119
sum(gender_sum$race == "black or african american"& gender_sum$Project == "TCGA-TGCT", 
    na.rm = TRUE) #6
sum(gender_sum$race == "asian"& gender_sum$Project == "TCGA-TGCT", na.rm = TRUE) #4
sum(gender_sum$race == "american indian or alaska native"& gender_sum$Project == "TCGA-TGCT", 
    na.rm = TRUE) #0
sum(gender_sum$race == "native hawaiian or other pacific islander"& 
      gender_sum$Project == "TCGA-TGCT", na.rm = TRUE) #0
sum(gender_sum$race == "not reported"& gender_sum$Project == "TCGA-TGCT", na.rm = TRUE) #5

sum(gender_sum$Project == "TCGA-TGCT") #150
150-(119+6+4+5) # =16 NA values

race_df$TGCT <- c(119,6,4,0,0,5,16)#TCGA-TGCT


#UCS
sum(gender_sum$race == "white" & gender_sum$Project == "TCGA-UCS", na.rm = TRUE) #44
sum(gender_sum$race == "black or african american"& gender_sum$Project == "TCGA-UCS", 
    na.rm = TRUE) #9
sum(gender_sum$race == "asian"& gender_sum$Project == "TCGA-UCS", na.rm = TRUE) #3
sum(gender_sum$race == "american indian or alaska native"& gender_sum$Project == "TCGA-UCS", 
    na.rm = TRUE) #0
sum(gender_sum$race == "native hawaiian or other pacific islander"& 
      gender_sum$Project == "TCGA-UCS", na.rm = TRUE) #0
sum(gender_sum$race == "not reported"& gender_sum$Project == "TCGA-UCS", na.rm = TRUE) #1

sum(gender_sum$Project == "TCGA-UCS") #57
57-(44+9+3+1) # =0 NA values

race_df$UCS <- c(44,9,3,0,0,1,26)


#UCEC
sum(gender_sum$race == "white" & gender_sum$Project == "TCGA-UCEC", na.rm = TRUE) #374
sum(gender_sum$race == "black or african american"& gender_sum$Project == "TCGA-UCEC", 
    na.rm = TRUE) #109
sum(gender_sum$race == "asian"& gender_sum$Project == "TCGA-UCEC", na.rm = TRUE) #20
sum(gender_sum$race == "american indian or alaska native"& gender_sum$Project == "TCGA-UCEC", 
    na.rm = TRUE) #4
sum(gender_sum$race == "native hawaiian or other pacific islander"& 
      gender_sum$Project == "TCGA-UCEC", na.rm = TRUE) #9
sum(gender_sum$race == "not reported"& gender_sum$Project == "TCGA-UCEC", na.rm = TRUE) #32

sum(gender_sum$Project == "TCGA-UCEC") #560
560-(374+109+20+4+9+32) # =12 NA values

race_df$UCEC <- c(374,109,20,4,9,32,12)

#ACC
sum(gender_sum$race == "white" & gender_sum$Project == "TCGA-ACC", na.rm = TRUE) #78
sum(gender_sum$race == "black or african american"& gender_sum$Project == "TCGA-ACC", 
    na.rm = TRUE) #1
sum(gender_sum$race == "asian"& gender_sum$Project == "TCGA-ACC", na.rm = TRUE) #2
sum(gender_sum$race == "american indian or alaska native"& gender_sum$Project == "TCGA-ACC", 
    na.rm = TRUE) #0
sum(gender_sum$race == "native hawaiian or other pacific islander"& 
      gender_sum$Project == "TCGA-ACC", na.rm = TRUE) #0
sum(gender_sum$race == "not reported"& gender_sum$Project == "TCGA-ACC", na.rm = TRUE) #11

sum(gender_sum$Project == "TCGA-ACC") #92
92-(78+1+2+11) # =0 NA values

race_df$ACC <- c(78,1,2,0,0,11,0)


#BLCA
sum(gender_sum$race == "white" & gender_sum$Project == "TCGA-BLCA", na.rm = TRUE) #327
sum(gender_sum$race == "black or african american"& gender_sum$Project == "TCGA-BLCA", 
    na.rm = TRUE) #23
sum(gender_sum$race == "asian"& gender_sum$Project == "TCGA-BLCA", na.rm = TRUE) #44
sum(gender_sum$race == "american indian or alaska native"& gender_sum$Project == "TCGA-BLCA", 
    na.rm = TRUE) #0
sum(gender_sum$race == "native hawaiian or other pacific islander"& 
      gender_sum$Project == "TCGA-BLCA", na.rm = TRUE) #0
sum(gender_sum$race == "not reported"& gender_sum$Project == "TCGA-BLCA", na.rm = TRUE) #18

sum(gender_sum$Project == "TCGA-BLCA") #412
412-(327+23+44+18) # =0 NA values

race_df$BLCA <- c(327,23,44,0,0,18,0)


#COAD
sum(gender_sum$race == "white" & gender_sum$Project == "TCGA-COAD", na.rm = TRUE) #214
sum(gender_sum$race == "black or african american"& gender_sum$Project == "TCGA-COAD", 
    na.rm = TRUE) #59
sum(gender_sum$race == "asian"& gender_sum$Project == "TCGA-COAD", na.rm = TRUE) #11
sum(gender_sum$race == "american indian or alaska native"& gender_sum$Project == "TCGA-COAD", 
    na.rm = TRUE) #1
sum(gender_sum$race == "native hawaiian or other pacific islander"& 
      gender_sum$Project == "TCGA-COAD", na.rm = TRUE) #0
sum(gender_sum$race == "not reported"& gender_sum$Project == "TCGA-COAD", na.rm = TRUE) #174

sum(gender_sum$Project == "TCGA-COAD") #461
461-(214+59+11+1+0+174) # =2 NA values

race_df$COAD <- c(211,30,20,8,2,36,192)


#GBM
sum(gender_sum$race == "white" & gender_sum$Project == "TCGA-GBM", na.rm = TRUE) #507
sum(gender_sum$race == "black or african american"& gender_sum$Project == "TCGA-GBM", 
    na.rm = TRUE) #51
sum(gender_sum$race == "asian"& gender_sum$Project == "TCGA-GBM", na.rm = TRUE) #13
sum(gender_sum$race == "american indian or alaska native"& gender_sum$Project == "TCGA-GBM", 
    na.rm = TRUE) #0
sum(gender_sum$race == "native hawaiian or other pacific islander"& 
      gender_sum$Project == "TCGA-GBM", na.rm = TRUE) #0
sum(gender_sum$race == "not reported"& gender_sum$Project == "TCGA-GBM", na.rm = TRUE) #28

sum(gender_sum$Project == "TCGA-GBM") #617
617-(507+51+13+28) # =18 NA values

race_df$GBM <- c(507,51,13,0,0,28,18)


#HNSC
sum(gender_sum$race == "white" & gender_sum$Project == "TCGA-HNSC", na.rm = TRUE) #452
sum(gender_sum$race == "black or african american"& gender_sum$Project == "TCGA-HNSC", 
    na.rm = TRUE) #48
sum(gender_sum$race == "asian"& gender_sum$Project == "TCGA-HNSC", na.rm = TRUE) #11
sum(gender_sum$race == "american indian or alaska native"& gender_sum$Project == "TCGA-HNSC", 
    na.rm = TRUE) #2
sum(gender_sum$race == "native hawaiian or other pacific islander"& 
      gender_sum$Project == "TCGA-HNSC", na.rm = TRUE) #0
sum(gender_sum$race == "not reported"& gender_sum$Project == "TCGA-HNSC", na.rm = TRUE) #15

sum(gender_sum$Project == "TCGA-HNSC") #528
528-(452+48+11+2+0+15) # =0 NA values

race_df$HNSC <- c(452,48,11,2,0,15,0)


#KIRC
sum(gender_sum$race == "white" & gender_sum$Project == "TCGA-KIRC", na.rm = TRUE) #466
sum(gender_sum$race == "black or african american"& gender_sum$Project == "TCGA-KIRC", 
    na.rm = TRUE) #56
sum(gender_sum$race == "asian"& gender_sum$Project == "TCGA-KIRC", na.rm = TRUE) #8
sum(gender_sum$race == "american indian or alaska native"& gender_sum$Project == "TCGA-KIRC", 
    na.rm = TRUE) #0
sum(gender_sum$race == "native hawaiian or other pacific islander"& 
      gender_sum$Project == "TCGA-KIRC", na.rm = TRUE) #0
sum(gender_sum$race == "not reported"& gender_sum$Project == "TCGA-KIRC", na.rm = TRUE) #7

sum(gender_sum$Project == "TCGA-KIRC") #537
537-(466+56+8+0+0+7) # =0 NA values

race_df$KIRC <- c(466,56,8,0,0,7,0)


#LUAD
sum(gender_sum$race == "white" & gender_sum$Project == "TCGA-LUAD", na.rm = TRUE) #393
sum(gender_sum$race == "black or african american"& gender_sum$Project == "TCGA-LUAD", 
    na.rm = TRUE) #53
sum(gender_sum$race == "asian"& gender_sum$Project == "TCGA-LUAD", na.rm = TRUE) #8
sum(gender_sum$race == "american indian or alaska native"& gender_sum$Project == "TCGA-LUAD", 
    na.rm = TRUE) #1
sum(gender_sum$race == "native hawaiian or other pacific islander"& 
      gender_sum$Project == "TCGA-LUAD", na.rm = TRUE) #0
sum(gender_sum$race == "not reported"& gender_sum$Project == "TCGA-LUAD", na.rm = TRUE) #67

sum(gender_sum$Project == "TCGA-LUAD") #585
585-(393+53+8+1+0+67) # =63 NA values

race_df$LUAD <- c(393,53,8,1,0,67,63)


#CHOL
sum(gender_sum$race == "white" & gender_sum$Project == "TCGA-CHOL", na.rm = TRUE) #41
sum(gender_sum$race == "black or african american"& gender_sum$Project == "TCGA-CHOL", 
    na.rm = TRUE) #3
sum(gender_sum$race == "asian"& gender_sum$Project == "TCGA-CHOL", na.rm = TRUE) #3
sum(gender_sum$race == "american indian or alaska native"& gender_sum$Project == "TCGA-CHOL", 
    na.rm = TRUE) #0
sum(gender_sum$race == "native hawaiian or other pacific islander"& 
      gender_sum$Project == "TCGA-CHOL", na.rm = TRUE) #0
sum(gender_sum$race == "not reported"& gender_sum$Project == "TCGA-CHOL", na.rm = TRUE) #1

sum(gender_sum$Project == "TCGA-CHOL") #51
51-(41+3+3+0+0+1) # =3 NA values

race_df$CHOL <- c(41,3,3,0,0,1,3)


#KICH
sum(gender_sum$race == "white" & gender_sum$Project == "TCGA-KICH", na.rm = TRUE) #95
sum(gender_sum$race == "black or african american"& gender_sum$Project == "TCGA-KICH", 
    na.rm = TRUE) #12
sum(gender_sum$race == "asian"& gender_sum$Project == "TCGA-KICH", na.rm = TRUE) #4
sum(gender_sum$race == "american indian or alaska native"& gender_sum$Project == "TCGA-KICH", 
    na.rm = TRUE) #0
sum(gender_sum$race == "native hawaiian or other pacific islander"& 
      gender_sum$Project == "TCGA-KICH", na.rm = TRUE) #0
sum(gender_sum$race == "not reported"& gender_sum$Project == "TCGA-KICH", na.rm = TRUE) #2

sum(gender_sum$Project == "TCGA-KICH") #113
113-(95+12+4+2) # =0 NA values

race_df$KICH <- c(95,12,4,0,0,2,113)


#KIRP
sum(gender_sum$race == "white" & gender_sum$Project == "TCGA-KIRP", na.rm = TRUE) #207
sum(gender_sum$race == "black or african american"& gender_sum$Project == "TCGA-KIRP", 
    na.rm = TRUE) #61
sum(gender_sum$race == "asian"& gender_sum$Project == "TCGA-KIRP", na.rm = TRUE) #6
sum(gender_sum$race == "american indian or alaska native"& gender_sum$Project == "TCGA-KIRP", 
    na.rm = TRUE) #2
sum(gender_sum$race == "native hawaiian or other pacific islander"& 
      gender_sum$Project == "TCGA-KIRP", na.rm = TRUE) #0
sum(gender_sum$race == "not reported"& gender_sum$Project == "TCGA-KIRP", na.rm = TRUE) #15

sum(gender_sum$Project == "TCGA-KIRP") #291
291-(207+61+6+2+0+15) # =0 NA values

race_df$KIRP <- c(207,61,6,2,0,15,0)


#LIHC
sum(gender_sum$race == "white" & gender_sum$Project == "TCGA-LIHC", na.rm = TRUE) #187
sum(gender_sum$race == "black or african american"& gender_sum$Project == "TCGA-LIHC", 
    na.rm = TRUE) #17
sum(gender_sum$race == "asian"& gender_sum$Project == "TCGA-LIHC", na.rm = TRUE) #161
sum(gender_sum$race == "american indian or alaska native"& gender_sum$Project == "TCGA-LIHC", 
    na.rm = TRUE) #2
sum(gender_sum$race == "native hawaiian or other pacific islander"& 
      gender_sum$Project == "TCGA-LIHC", na.rm = TRUE) #0
sum(gender_sum$race == "not reported"& gender_sum$Project == "TCGA-LIHC", na.rm = TRUE) #10

sum(gender_sum$Project == "TCGA-LIHC") #377
377-(187+17+161+2+0+10) # =0 NA values

race_df$LIHC <- c(187,17,161,2,0,10,0)


#LUSC
sum(gender_sum$race == "white" & gender_sum$Project == "TCGA-LUSC", na.rm = TRUE) #351
sum(gender_sum$race == "black or african american"& gender_sum$Project == "TCGA-LUSC", 
    na.rm = TRUE) #31
sum(gender_sum$race == "asian"& gender_sum$Project == "TCGA-LUSC", na.rm = TRUE) #9
sum(gender_sum$race == "american indian or alaska native"& gender_sum$Project == "TCGA-LUSC", 
    na.rm = TRUE) #0
sum(gender_sum$race == "native hawaiian or other pacific islander"& 
      gender_sum$Project == "TCGA-LUSC", na.rm = TRUE) #0
sum(gender_sum$race == "not reported"& gender_sum$Project == "TCGA-LUSC", na.rm = TRUE) #113

sum(gender_sum$Project == "TCGA-LUSC") #504
504-(351+31+9+0+0+113) # =0 NA values

race_df$LUSC <- c(351,31,9,0,0,113,0)


#MESO
sum(gender_sum$race == "white" & gender_sum$Project == "TCGA-MESO", na.rm = TRUE) #85
sum(gender_sum$race == "black or african american"& gender_sum$Project == "TCGA-MESO", 
    na.rm = TRUE) #1
sum(gender_sum$race == "asian"& gender_sum$Project == "TCGA-MESO", na.rm = TRUE) #1
sum(gender_sum$race == "american indian or alaska native"& gender_sum$Project == "TCGA-MESO", 
    na.rm = TRUE) #0
sum(gender_sum$race == "native hawaiian or other pacific islander"& 
      gender_sum$Project == "TCGA-MESO", na.rm = TRUE) #0
sum(gender_sum$race == "not reported"& gender_sum$Project == "TCGA-MESO", na.rm = TRUE) #0

sum(gender_sum$Project == "TCGA-MESO") #87
87-(85+1+1+0+0+0) # =0 NA values

race_df$MESO <- c(85,1,1,0,0,0,0)


#READ
sum(gender_sum$race == "white" & gender_sum$Project == "TCGA-READ", na.rm = TRUE) #82
sum(gender_sum$race == "black or african american"& gender_sum$Project == "TCGA-READ", 
    na.rm = TRUE) #6
sum(gender_sum$race == "asian"& gender_sum$Project == "TCGA-READ", na.rm = TRUE) #1
sum(gender_sum$race == "american indian or alaska native"& gender_sum$Project == "TCGA-READ", 
    na.rm = TRUE) #0
sum(gender_sum$race == "native hawaiian or other pacific islander"& 
      gender_sum$Project == "TCGA-READ", na.rm = TRUE) #0
sum(gender_sum$race == "not reported"& gender_sum$Project == "TCGA-READ", na.rm = TRUE) #82

sum(gender_sum$Project == "TCGA-READ") #172
172-(82+6+1+0+0+82) # =1 NA values

race_df$READ <- c(82,6,1,0,0,82,1)


#STAD
sum(gender_sum$race == "white" & gender_sum$Project == "TCGA-STAD", na.rm = TRUE) #278
sum(gender_sum$race == "black or african american"& gender_sum$Project == "TCGA-STAD", 
    na.rm = TRUE) #13
sum(gender_sum$race == "asian"& gender_sum$Project == "TCGA-STAD", na.rm = TRUE) #89
sum(gender_sum$race == "american indian or alaska native"& gender_sum$Project == "TCGA-STAD", 
    na.rm = TRUE) #0
sum(gender_sum$race == "native hawaiian or other pacific islander"& 
      gender_sum$Project == "TCGA-STAD", na.rm = TRUE) #1
sum(gender_sum$race == "not reported"& gender_sum$Project == "TCGA-STAD", na.rm = TRUE) #62

sum(gender_sum$Project == "TCGA-STAD") #443
443-(278+13+89+0+1+62) # =0 NA values

race_df$STAD <- c(278,13,89,0,1,62,0)


#THCA
sum(gender_sum$race == "white" & gender_sum$Project == "TCGA-THCA", na.rm = TRUE) #334
sum(gender_sum$race == "black or african american"& gender_sum$Project == "TCGA-THCA", 
    na.rm = TRUE) #27
sum(gender_sum$race == "asian"& gender_sum$Project == "TCGA-THCA", na.rm = TRUE) #52
sum(gender_sum$race == "american indian or alaska native"& gender_sum$Project == "TCGA-THCA", 
    na.rm = TRUE) #1
sum(gender_sum$race == "native hawaiian or other pacific islander"& 
      gender_sum$Project == "TCGA-THCA", na.rm = TRUE) #0
sum(gender_sum$race == "not reported"& gender_sum$Project == "TCGA-THCA", na.rm = TRUE) #93

sum(gender_sum$Project == "TCGA-THCA") #507
507-(334+27+52+1+0+93) # =0 NA values

race_df$THCA <- c(334,27,52,1,0,93,0)


#UVM
sum(gender_sum$race == "white" & gender_sum$Project == "TCGA-UVM", na.rm = TRUE) #55
sum(gender_sum$race == "black or african american"& gender_sum$Project == "TCGA-UVM", 
    na.rm = TRUE) #0
sum(gender_sum$race == "asian"& gender_sum$Project == "TCGA-UVM", na.rm = TRUE) #0
sum(gender_sum$race == "american indian or alaska native"& gender_sum$Project == "TCGA-UVM", 
    na.rm = TRUE) #0
sum(gender_sum$race == "native hawaiian or other pacific islander"& 
      gender_sum$Project == "TCGA-UVM", na.rm = TRUE) #0
sum(gender_sum$race == "not reported"& gender_sum$Project == "TCGA-UVM", na.rm = TRUE) #25

sum(gender_sum$Project == "TCGA-UVM") #80
80-(55+25) # =0 NA values

race_df$UVM <- c(80,0,0,0,0,25,0)


#DLBC
sum(gender_sum$race == "white" & gender_sum$Project == "TCGA-DLBC", na.rm = TRUE) #29
sum(gender_sum$race == "black or african american"& gender_sum$Project == "TCGA-DLBC", 
    na.rm = TRUE) #1
sum(gender_sum$race == "asian"& gender_sum$Project == "TCGA-DLBC", na.rm = TRUE) #18
sum(gender_sum$race == "american indian or alaska native"& gender_sum$Project == "TCGA-DLBC", 
    na.rm = TRUE) #0
sum(gender_sum$race == "native hawaiian or other pacific islander"& 
      gender_sum$Project == "TCGA-DLBC", na.rm = TRUE) #0
sum(gender_sum$race == "not reported"& gender_sum$Project == "TCGA-DLBC", na.rm = TRUE) #0

sum(gender_sum$Project == "TCGA-DLBC") #58
58-(29+1+18+0+0+0) # =10 NA values

race_df$DLBC <- c(29,1,18,0,0,0,10)


#LGG
sum(gender_sum$race == "white" & gender_sum$Project == "TCGA-LGG", na.rm = TRUE) #472
sum(gender_sum$race == "black or african american"& gender_sum$Project == "TCGA-LGG", 
    na.rm = TRUE) #21
sum(gender_sum$race == "asian"& gender_sum$Project == "TCGA-LGG", na.rm = TRUE) #8
sum(gender_sum$race == "american indian or alaska native"& gender_sum$Project == "TCGA-LGG", 
    na.rm = TRUE) #1
sum(gender_sum$race == "native hawaiian or other pacific islander"& 
      gender_sum$Project == "TCGA-LGG", na.rm = TRUE) #0
sum(gender_sum$race == "not reported"& gender_sum$Project == "TCGA-LGG", na.rm = TRUE) #10

sum(gender_sum$Project == "TCGA-LGG") #516
516-(472+21+8+1+0+10) # =4 NA values

race_df$LGG <- c(472,21,8,1,0,10,4)


#SARC
sum(gender_sum$race == "white" & gender_sum$Project == "TCGA-SARC", na.rm = TRUE) #228
sum(gender_sum$race == "black or african american"& gender_sum$Project == "TCGA-SARC", 
    na.rm = TRUE) #18
sum(gender_sum$race == "asian"& gender_sum$Project == "TCGA-SARC", na.rm = TRUE) #6
sum(gender_sum$race == "american indian or alaska native"& gender_sum$Project == "TCGA-SARC", 
    na.rm = TRUE) #0
sum(gender_sum$race == "native hawaiian or other pacific islander"& 
      gender_sum$Project == "TCGA-SARC", na.rm = TRUE) #0
sum(gender_sum$race == "not reported"& gender_sum$Project == "TCGA-SARC", na.rm = TRUE) #9

sum(gender_sum$Project == "TCGA-SARC") #261
261-(228+18+6+0+0+9) # =0 NA values

race_df$SARC<- c(228,18,6,0,0,9,0)


#THYM
sum(gender_sum$race == "white" & gender_sum$Project == "TCGA-THYM", na.rm = TRUE) #103
sum(gender_sum$race == "black or african american"& gender_sum$Project == "TCGA-THYM", 
    na.rm = TRUE) #6
sum(gender_sum$race == "asian"& gender_sum$Project == "TCGA-THYM", na.rm = TRUE) #13
sum(gender_sum$race == "american indian or alaska native"& gender_sum$Project == "TCGA-THYM", 
    na.rm = TRUE) #0
sum(gender_sum$race == "native hawaiian or other pacific islander"& 
      gender_sum$Project == "TCGA-THYM", na.rm = TRUE) #0
sum(gender_sum$race == "not reported"& gender_sum$Project == "TCGA-THYM", na.rm = TRUE) #2

sum(gender_sum$Project == "TCGA-THYM") #124
124-(103+6+13+0+0+2) # =0 NA values

race_df$THYM <- c(103,6,13,0,0,2,0)


#PCPG
sum(gender_sum$race == "white" & gender_sum$Project == "TCGA-PCPG", na.rm = TRUE) #148
sum(gender_sum$race == "black or african american"& gender_sum$Project == "TCGA-PCPG", 
    na.rm = TRUE) #20
sum(gender_sum$race == "asian"& gender_sum$Project == "TCGA-PCPG", na.rm = TRUE) #6
sum(gender_sum$race == "american indian or alaska native"& gender_sum$Project == "TCGA-PCPG", 
    na.rm = TRUE) #1
sum(gender_sum$race == "native hawaiian or other pacific islander"& 
      gender_sum$Project == "TCGA-PCPG", na.rm = TRUE) #0
sum(gender_sum$race == "not reported"& gender_sum$Project == "TCGA-PCPG", na.rm = TRUE) #4

sum(gender_sum$Project == "TCGA-PCPG") #179
179-(148+20+6+1+0+4) # =0 NA values

race_df$PCPG <- c(148,20,6,1,0,4,0)


#LAML
sum(gender_sum$race == "white" & gender_sum$Project == "TCGA-LAML", na.rm = TRUE) #181
sum(gender_sum$race == "black or african american"& gender_sum$Project == "TCGA-LAML", 
    na.rm = TRUE) #15
sum(gender_sum$race == "asian"& gender_sum$Project == "TCGA-LAML", na.rm = TRUE) #2
sum(gender_sum$race == "american indian or alaska native"& gender_sum$Project == "TCGA-LAML", 
    na.rm = TRUE) #0
sum(gender_sum$race == "native hawaiian or other pacific islander"& 
      gender_sum$Project == "TCGA-LAML", na.rm = TRUE) #0
sum(gender_sum$race == "not reported"& gender_sum$Project == "TCGA-LAML", na.rm = TRUE) #2

sum(gender_sum$Project == "TCGA-LAML") #200
200-(181+15+2+0+0+2) # =0 NA values

race_df$LAML <- c(181,15,2,0,0,2,0)


#PAAD
sum(gender_sum$race == "white" & gender_sum$Project == "TCGA-PAAD", na.rm = TRUE) #162
sum(gender_sum$race == "black or african american"& gender_sum$Project == "TCGA-PAAD", 
    na.rm = TRUE) #7
sum(gender_sum$race == "asian"& gender_sum$Project == "TCGA-PAAD", na.rm = TRUE) #11
sum(gender_sum$race == "american indian or alaska native"& gender_sum$Project == "TCGA-PAAD", 
    na.rm = TRUE) #0
sum(gender_sum$race == "native hawaiian or other pacific islander"& 
      gender_sum$Project == "TCGA-PAAD", na.rm = TRUE) #0
sum(gender_sum$race == "not reported"& gender_sum$Project == "TCGA-PAAD", na.rm = TRUE) #5

sum(gender_sum$Project == "TCGA-PAAD") #185
185-(162+7+11+0+0+5) # =0 NA values

race_df$PAAD <- c(162,7,11,0,0,5,0)


#SKCM
sum(gender_sum$race == "white" & gender_sum$Project == "TCGA-SKCM", na.rm = TRUE) #447
sum(gender_sum$race == "black or african american"& gender_sum$Project == "TCGA-SKCM", 
    na.rm = TRUE) #1
sum(gender_sum$race == "asian"& gender_sum$Project == "TCGA-SKCM", na.rm = TRUE) #12
sum(gender_sum$race == "american indian or alaska native"& gender_sum$Project == "TCGA-SKCM", 
    na.rm = TRUE) #0
sum(gender_sum$race == "native hawaiian or other pacific islander"& 
      gender_sum$Project == "TCGA-SKCM", na.rm = TRUE) #0
sum(gender_sum$race == "not reported"& gender_sum$Project == "TCGA-SKCM", na.rm = TRUE) #10

sum(gender_sum$Project == "TCGA-SKCM") #470
470-(447+1+12+10) # =0 NA values

race_df$SKCM <- c(447,1,12,0,0,10,0)

names(race_df)[c(1,2)] <- c("race", "total")


race_df <- as.data.frame(race_df)
race_df[nrow(race_df) +1, ] <- "n" #adds one row

race_df$total = as.numeric(race_df$total)

race_df[,2:34] <- sapply(race_df[,2:34],as.numeric)


race_df[8,] <- c("n", colSums(race_df[, 2:34], na.rm = TRUE)) 


race_per <- c("white", "black or african american", "asian", "american indian or alaska native",
              "native hawaiian or other pacific islander")


8343/11130 *100 # 74.96 white
980/11130 *100 # 8.81 black or african american
639/11130 *100 #5.74 asian
28/11130 *100 #0.25 american indian or alaska native
13/11130 *100 #0.12 native hawaiian or other pacific islander

or 
8343+980+639+28+13 #10003

8343/10003 *100 # 83.40 white
980/10003 *100 # 9.80 black or african american
639/10003 *100 #6.39 asian
28/10003 *100 #0.28 american indian or alaska native
13/10003 *100 #0.13 native hawaiian or other pacific islander

race_per_2 <- c(83.40, 9.80, 6.39,0.28,0.13)

race_per <- data.frame(race_per, race_per_2)

pop <- c(76.30, 13.40, 	5.90, 1.30, 0.20)

race_per$US_Census <- pop

unique(gender_sum$ethnicity)
sum(gender_sum$ethnicity == "hispanic or latino", na.rm = TRUE)


mat <- as.matrix(race_df)
mat <- mat[, -1]
             
vec <- c(11130, 307, 608, 1098, 501, 150, 83, 560, 92, 412, 499, 617, 528, 537,
         585, 51, 226, 291, 377, 504, 87, 172, 443, 507, 105, 58, 516, 261, 124, 
         179, 200, 185, 470)

sweep(mat, 2, vec, `/`)








