#female
f_mut_total <- ddply(f_mut, "Project", numcolwise(sum)) #based on the project, add up all of the mutations.

f_mut_total <- f_mut_total[, -c(2,15)] #leave out nonmutations

f_mut_total$Total <- rowSums(f_mut_total[, 2:13]) #adds total mutations per cancer (horizontal)

f_mut_total[nrow(f_mut_total) +1, ] <- "Total.y" #adds one row

#make all mutations numeric instead of a string
f_mut_total$Silent = as.numeric(f_mut_total$Silent)
f_mut_total$Nonsense_Mutation = as.numeric(f_mut_total$Nonsense_Mutation)
f_mut_total$Missense_Mutation = as.numeric(f_mut_total$Missense_Mutation)
f_mut_total$Splice_Region = as.numeric(f_mut_total$Splice_Region)
f_mut_total$Frame_Shift_Del = as.numeric(f_mut_total$Frame_Shift_Del)
f_mut_total$Splice_Site = as.numeric(f_mut_total$Splice_Site)
f_mut_total$Frame_Shift_Ins = as.numeric(f_mut_total$Frame_Shift_Ins)
f_mut_total$Nonstop_Mutation = as.numeric(f_mut_total$Nonstop_Mutation)
f_mut_total$RNA = as.numeric(f_mut_total$RNA)
f_mut_total$In_Frame_Del = as.numeric(f_mut_total$In_Frame_Del)
f_mut_total$Translation_Start_Site = as.numeric(f_mut_total$Translation_Start_Site)
f_mut_total$In_Frame_Ins = as.numeric(f_mut_total$In_Frame_Ins)
f_mut_total$Total = as.numeric(f_mut_total$Total)

#makes 33th row names total.y and every other cells the sum of the columns. 
f_mut_total[31,] <- c("Total.y", colSums(f_mut_total[, 2:14], na.rm = TRUE)) 

#save files
write.csv(f_mut_total,"f_mut_total.csv")

#male
m_mut_total <- ddply(m_mut, "Project", numcolwise(sum)) #based on the project, add up all of the mutations.

m_mut_total <- m_mut_total[, -c(2,15)] #leave out nonmutations

m_mut_total$Total <- rowSums(m_mut_total[, 2:13]) #adds total mutations per cancer (horizontal)

m_mut_total[nrow(m_mut_total) +1, ] <- "Total.y" #adds one row

#make all mutations numeric instead of a string
m_mut_total$Silent = as.numeric(m_mut_total$Silent)
m_mut_total$Nonsense_Mutation = as.numeric(m_mut_total$Nonsense_Mutation)
m_mut_total$Missense_Mutation = as.numeric(m_mut_total$Missense_Mutation)
m_mut_total$Splice_Region = as.numeric(m_mut_total$Splice_Region)
m_mut_total$Frame_Shift_Del = as.numeric(m_mut_total$Frame_Shift_Del)
m_mut_total$Splice_Site = as.numeric(m_mut_total$Splice_Site)
m_mut_total$Frame_Shift_Ins = as.numeric(m_mut_total$Frame_Shift_Ins)
m_mut_total$Nonstop_Mutation = as.numeric(m_mut_total$Nonstop_Mutation)
m_mut_total$RNA = as.numeric(m_mut_total$RNA)
m_mut_total$In_Frame_Del = as.numeric(m_mut_total$In_Frame_Del)
m_mut_total$Translation_Start_Site = as.numeric(m_mut_total$Translation_Start_Site)
m_mut_total$In_Frame_Ins = as.numeric(m_mut_total$In_Frame_Ins)
m_mut_total$Total = as.numeric(m_mut_total$Total)

#makes 33th row names total.y and every other cells the sum of the columns. 
m_mut_total[29,] <- c("Total.y", colSums(m_mut_total[, 2:14], na.rm = TRUE)) 

#save files
write.csv(m_mut_total,"m_mut_total.csv")