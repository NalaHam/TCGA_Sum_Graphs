library(qcc)
library(plyr)
library(dplyr)

#pan cancer heatmaps:
#female
df_a <- f_mut_total[1:30,]

row.names(df_a) <- df_a$Project

df_a <- df_a[, 2:13]

df_a <- df_a[order(df_a$Nonsense_Mutation),]

df_a_matrix <- data.matrix(df_a)

f_df_heatmap <- heatmap(df_a_matrix, Rowv=NA, Colv=NA, 
                        col = heat.colors(256), scale="column", margins=c(11,7), 
                        xlab="Coding Mutations", ylab="Cancer Projects", 
                        main="Female TCGA Pan Cancer Mutations")
#both male and female
df_c <- mut_total[1:32,]

row.names(df_c) <- df_c$Project

df_c <- df_c[, 3:14]

df_c <- df_c[order(df_c$Nonsense_Mutation),]

df_c_matrix <- data.matrix(df_c)

df_heatmap <- heatmap(df_c_matrix, Rowv=NA, Colv=NA, 
                      col = heat.colors(256), scale="column", margins=c(11,7), 
                      xlab="Coding Mutations", ylab="Cancer Projects", 
                      main="TCGA Pan Cancer Mutations")
#male
df_d <- m_mut_total[1:28,]

row.names(df_d) <- df_d$Project

df_d <- df_d[, 2:13]

df_d <- df_d[order(df_d$Nonsense_Mutation),]

df_d_matrix <- data.matrix(df_d)

m_df_heatmap <- heatmap(df_c_matrix, Rowv=NA, Colv=NA, 
                        col = heat.colors(256), scale="column", margins=c(11,7), 
                        xlab="Coding Mutations", ylab="Cancer Projects", 
                        main="Male TCGA Pan Cancer Mutations")



#non-reproductive cancers 
#female
df_e <- f_nonrep_mut[1:25,]

row.names(df_e) <- df_e$Project

df_e <- df_e[, 2:13]

df_e <- df_e[order(df_e$Nonsense_Mutation),]

df_e_matrix <- data.matrix(df_e)

f_df_heatmap <- heatmap(df_e_matrix, Rowv=NA, Colv=NA, 
                        col = heat.colors(256), scale="column", margins=c(11,7), 
                        xlab="Coding Mutations", ylab="Cancer Projects", 
                        main="Female TCGA Non-Reproductive Cancer Mutations")


#both male and female
df_f <- nonrep_mut_total[1:25,]

row.names(df_f) <- df_f$Project

df_f <- df_f[, 2:13]

df_f <- df_f[order(df_f$Nonsense_Mutation),]

df_f_matrix <- data.matrix(df_f)

df_heatmap <- heatmap(df_f_matrix, Rowv=NA, Colv=NA, 
                      col = heat.colors(256), scale="column", margins=c(11,7), 
                      xlab="Coding Mutations", ylab="Cancer Projects", 
                      main="TCGA Non-Reproductice Cancer Mutations")
#male
df_g <- m_nonrep_mut[1:25,]

row.names(df_g) <- df_g$Project

df_g <- df_g[, 2:13]

df_g <- df_g[order(df_g$Nonsense_Mutation),]

df_g_matrix <- data.matrix(df_g)

m_df_heatmap <- heatmap(df_g_matrix, Rowv=NA, Colv=NA, 
                        col = heat.colors(256), scale="column", margins=c(11,7), 
                        xlab="Coding Mutations", ylab="Cancer Projects", 
                        main="Male TCGA Non-Reproductive Cancer Mutations")
