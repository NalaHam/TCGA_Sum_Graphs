
#non-reproductive cancers and gender 
f_nonrep_mut <- filter(nonrep_mut_count, nonrep_mut_count$gender =="female")

write.csv(f_nonrep_mut,"f_nonrep_mut_individual.csv")

#female
f_nonrep_mut <- ddply(f_nonrep_mut, "Project", numcolwise(sum)) #based on the project, add up all of the mutations.

f_nonrep_mut <- f_nonrep_mut[, -14] #leave out nonmutations

f_nonrep_mut$Total <- rowSums(f_nonrep_mut[, 2:13]) #adds total mutations per cancer (horizontal)

f_nonrep_mut[nrow(f_nonrep_mut) +1, ] <- "Total.y" #adds one row

#make all mutations numeric instead of a string
f_nonrep_mut$Silent = as.numeric(f_nonrep_mut$Silent)
f_nonrep_mut$Nonsense_Mutation = as.numeric(f_nonrep_mut$Nonsense_Mutation)
f_nonrep_mut$Missense_Mutation = as.numeric(f_nonrep_mut$Missense_Mutation)
f_nonrep_mut$Splice_Region = as.numeric(f_nonrep_mut$Splice_Region)
f_nonrep_mut$Frame_Shift_Del = as.numeric(f_nonrep_mut$Frame_Shift_Del)
f_nonrep_mut$Splice_Site = as.numeric(f_nonrep_mut$Splice_Site)
f_nonrep_mut$Frame_Shift_Ins = as.numeric(f_nonrep_mut$Frame_Shift_Ins)
f_nonrep_mut$Nonstop_Mutation = as.numeric(f_nonrep_mut$Nonstop_Mutation)
f_nonrep_mut$RNA = as.numeric(f_nonrep_mut$RNA)
f_nonrep_mut$In_Frame_Del = as.numeric(f_nonrep_mut$In_Frame_Del)
f_nonrep_mut$Translation_Start_Site = as.numeric(f_nonrep_mut$Translation_Start_Site)
f_nonrep_mut$In_Frame_Ins = as.numeric(f_nonrep_mut$In_Frame_Ins)
f_nonrep_mut$Total = as.numeric(f_nonrep_mut$Total)

#makes last row name total.y and every other cells the sum of the columns. 
f_nonrep_mut[26,] <- c("Total.y", colSums(f_nonrep_mut[, 2:14], na.rm = TRUE)) 

#save files
write.csv(f_nonrep_mut,"f_nonrep_mut.csv")



#male
m_nonrep_mut <- filter(nonrep_mut_count, nonrep_mut_count$gender =="male")

write.csv(m_nonrep_mut,"m_nonrep_mut_individual.csv")


m_nonrep_mut <- ddply(m_nonrep_mut, "Project", numcolwise(sum)) #based on the project, add up all of the mutations.

m_nonrep_mut <- m_nonrep_mut[, -14] #leave out nonmutations

m_nonrep_mut$Total <- rowSums(m_nonrep_mut[, 2:13]) #adds total mutations per cancer (horizontal)

m_nonrep_mut[nrow(m_nonrep_mut) +1, ] <- "Total.y" #adds one row

#make all mutations numeric instead of a string
m_nonrep_mut$Silent = as.numeric(m_nonrep_mut$Silent)
m_nonrep_mut$Nonsense_Mutation = as.numeric(m_nonrep_mut$Nonsense_Mutation)
m_nonrep_mut$Missense_Mutation = as.numeric(m_nonrep_mut$Missense_Mutation)
m_nonrep_mut$Splice_Region = as.numeric(m_nonrep_mut$Splice_Region)
m_nonrep_mut$Frame_Shift_Del = as.numeric(m_nonrep_mut$Frame_Shift_Del)
m_nonrep_mut$Splice_Site = as.numeric(m_nonrep_mut$Splice_Site)
m_nonrep_mut$Frame_Shift_Ins = as.numeric(m_nonrep_mut$Frame_Shift_Ins)
m_nonrep_mut$Nonstop_Mutation = as.numeric(m_nonrep_mut$Nonstop_Mutation)
m_nonrep_mut$RNA = as.numeric(m_nonrep_mut$RNA)
m_nonrep_mut$In_Frame_Del = as.numeric(m_nonrep_mut$In_Frame_Del)
m_nonrep_mut$Translation_Start_Site = as.numeric(m_nonrep_mut$Translation_Start_Site)
m_nonrep_mut$In_Frame_Ins = as.numeric(m_nonrep_mut$In_Frame_Ins)
m_nonrep_mut$Total = as.numeric(m_nonrep_mut$Total)

#makes last row name total.y and every other cells the sum of the columns. 
m_nonrep_mut[26,] <- c("Total.y", colSums(m_nonrep_mut[, 2:14], na.rm = TRUE)) 

#save files
write.csv(m_nonrep_mut,"m_nonrep_mut.csv")