library(dplyr)
library(plyr)

unique(new_pan_cancer$Variant_Classification) #find the different types of mutations

#get info for each of the mutations. Gives TRUE or FALSE result
df <- summarise(new_pan_cancer, Project, sample_id, Variant_Classification == "Silent", 
                Variant_Classification == "Nonsense_Mutation", 
                Variant_Classification == "Missense_Mutation", 
                Variant_Classification == "Splice_Region", 
                Variant_Classification == "Frame_Shift_Del",
                Variant_Classification == "Splice_Site",
                Variant_Classification == "Frame_Shift_Ins",
                Variant_Classification == "Nonstop_Mutation",
                Variant_Classification == "RNA",
                Variant_Classification == "In_Frame_Del",
                Variant_Classification == "Translation_Start_Site",
                Variant_Classification == "In_Frame_Ins",
                Variant_Classification == "NA", gender, race, ethnicity, years_smoked) 

#Rename columns
names(df) <- c("Project", "sample_id", "Silent", "Nonsense_Mutation", "Missense_Mutation", "Splice_Region",
               "Frame_Shift_Del", "Splice_Site", "Frame_Shift_Ins", "Nonstop_Mutation",
               "RNA", "In_Frame_Del", "Translation_Start_Site", "In_Frame_Ins", 
               "unknown", "gender", "race", "ethnicity", "years_smoked") 

#change TRUE or FALSE to 1 or 0
df$Silent <- as.integer(as.logical(df$Silent))
df$Nonsense_Mutation <- as.integer(as.logical(df$Nonsense_Mutation))
df$Missense_Mutation <- as.integer(as.logical(df$Missense_Mutation))
df$Splice_Region <- as.integer(as.logical(df$Splice_Region))
df$Frame_Shift_Del <- as.integer(as.logical(df$Frame_Shift_Del))
df$Splice_Site <- as.integer(as.logical(df$Splice_Site))
df$Frame_Shift_Ins <- as.integer(as.logical(df$Frame_Shift_Ins))
df$Nonstop_Mutation <- as.integer(as.logical(df$Nonstop_Mutation))
df$RNA <- as.integer(as.logical(df$RNA))
df$In_Frame_Del <- as.integer(as.logical(df$In_Frame_Del))
df$Translation_Start_Site <- as.integer(as.logical(df$Translation_Start_Site))
df$In_Frame_Ins <- as.integer(as.logical(df$In_Frame_Ins))


mut_count <- ddply(df, "sample_id", numcolwise(sum)) #Make df of the sum of the columns with respect to the individual sample_ids. 

df_3 <- df[, c(1,2,16,17,18,19)] #Make df with just project, sample_id, and demographics

mut_count <- merge(mut_count, df_3, by = "sample_id") #combine the sum of mutations and the demographics by sample_id. This gives repeated rows of the same person.

mut_count <- distinct(mut_count, .keep_all = TRUE) #keep only the unique rows in mut_count

mut_count <- mut_count[, -14] #remove extra years smoked column

n_distinct(new_pan_cancer$sample_id) #see how many sample_ids are in df
n_distinct(mut_count$sample_id) #compare to the above and check to see if it matches

mut_count_1 <- mut_count #make copy of df

mut_total <- ddply(mut_count_1, "Project", numcolwise(sum)) #based on the project, add up all of the mutations.

mut_total <- mut_total[, -14] #leave out unknown column bc it was years smoked (not a mutation)

mut_total$Total <- rowSums(mut_total[, 2:13]) #adds total mutations per cancer (horizontal)

mut_total[nrow(mut_total) +1, ] <- "Total.y" #adds one row

#make all mutations numeric instead of a string
mut_total$Silent = as.numeric(mut_total$Silent)
mut_total$Nonsense_Mutation = as.numeric(mut_total$Nonsense_Mutation)
mut_total$Missense_Mutation = as.numeric(mut_total$Missense_Mutation)
mut_total$Splice_Region = as.numeric(mut_total$Splice_Region)
mut_total$Frame_Shift_Del = as.numeric(mut_total$Frame_Shift_Del)
mut_total$Splice_Site = as.numeric(mut_total$Splice_Site)
mut_total$Frame_Shift_Ins = as.numeric(mut_total$Frame_Shift_Ins)
mut_total$Nonstop_Mutation = as.numeric(mut_total$Nonstop_Mutation)
mut_total$RNA = as.numeric(mut_total$RNA)
mut_total$In_Frame_Del = as.numeric(mut_total$In_Frame_Del)
mut_total$Translation_Start_Site = as.numeric(mut_total$Translation_Start_Site)
mut_total$In_Frame_Ins = as.numeric(mut_total$In_Frame_Ins)
mut_total$Total = as.numeric(mut_total$Total)

#makes 33th row names total.y and every other cells the sum of the columns. 
mut_total[33,] <- c("Total.y", colSums(mut_total[, 2:14], na.rm = TRUE)) 

#save files
write.csv(mut_total,"mut_total.csv")
write.csv(mut_count,"mut_count.csv")






#same thing but for non reproductive cancers

new_nonrep_cancer <- nonrep_cancers[!is.na(nonrep_cancers$Variant_Classification), ] #remove NA mutations from nonrep_cancers
unique(new_nonrep_cancer$Variant_Classification) #find the different types of mutations
n_distinct(new_nonrep_cancer$Project)

#get info for each of the mutations. Gives TRUE or FALSE result
df <- summarise(new_nonrep_cancer, Project, sample_id, Variant_Classification == "Silent", 
                Variant_Classification == "Nonsense_Mutation", 
                Variant_Classification == "Missense_Mutation", 
                Variant_Classification == "Splice_Region", 
                Variant_Classification == "Frame_Shift_Del",
                Variant_Classification == "Splice_Site",
                Variant_Classification == "Frame_Shift_Ins",
                Variant_Classification == "Nonstop_Mutation",
                Variant_Classification == "RNA",
                Variant_Classification == "In_Frame_Del",
                Variant_Classification == "Translation_Start_Site",
                Variant_Classification == "In_Frame_Ins", gender, race, ethnicity, years_smoked) 

#Rename columns
names(df) <- c("Project", "sample_id", "Silent", "Nonsense_Mutation", "Missense_Mutation", "Splice_Region",
               "Frame_Shift_Del", "Splice_Site", "Frame_Shift_Ins", "Nonstop_Mutation",
               "RNA", "In_Frame_Del", "Translation_Start_Site", "In_Frame_Ins", 
               "gender", "race", "ethnicity", "years_smoked") 

#change TRUE or FALSE to 1 or 0
df$Silent <- as.integer(as.logical(df$Silent))
df$Nonsense_Mutation <- as.integer(as.logical(df$Nonsense_Mutation))
df$Missense_Mutation <- as.integer(as.logical(df$Missense_Mutation))
df$Splice_Region <- as.integer(as.logical(df$Splice_Region))
df$Frame_Shift_Del <- as.integer(as.logical(df$Frame_Shift_Del))
df$Splice_Site <- as.integer(as.logical(df$Splice_Site))
df$Frame_Shift_Ins <- as.integer(as.logical(df$Frame_Shift_Ins))
df$Nonstop_Mutation <- as.integer(as.logical(df$Nonstop_Mutation))
df$RNA <- as.integer(as.logical(df$RNA))
df$In_Frame_Del <- as.integer(as.logical(df$In_Frame_Del))
df$Translation_Start_Site <- as.integer(as.logical(df$Translation_Start_Site))
df$In_Frame_Ins <- as.integer(as.logical(df$In_Frame_Ins))


nonrep_mut_count <- ddply(df, "sample_id", numcolwise(sum)) #Make df of the sum of the columns with respect to the individual sample_ids. 

df_3 <- df[, c(1,2,15,16,17,18)] #Make df with just project, sample_id, and demographics

nonrep_mut_count <- merge(nonrep_mut_count, df_3, by = "sample_id") #combine the sum of mutations and the demographics by sample_id. This gives repeated rows of the same person.

nonrep_mut_count <- distinct(nonrep_mut_count, .keep_all = TRUE) #keep only the unique rows in nonrep_mut_count

nonrep_mut_count <- nonrep_mut_count[, -14] #remove extra years smoked column

n_distinct(new_nonrep_cancer$sample_id) #see how many sample_ids are in df
n_distinct(nonrep_mut_count$sample_id) #compare to the above and check to see if it matches

nonrep_mut_count_1 <- nonrep_mut_count #make copy of df

nonrep_mut_total <- ddply(nonrep_mut_count_1, "Project", numcolwise(sum)) #based on the project, add up all of the mutations.

nonrep_mut_total <- nonrep_mut_total[, -14] #leave out unknown column bc it was years smoked (not a mutation)

nonrep_mut_total$Total <- rowSums(nonrep_mut_total[, 2:13]) #adds total mutations per cancer (horizontal)

nonrep_mut_total[nrow(nonrep_mut_total) +1, ] <- "Total.y" #adds one row

#make all mutations numeric instead of a string
nonrep_mut_total$Silent = as.numeric(nonrep_mut_total$Silent)
nonrep_mut_total$Nonsense_Mutation = as.numeric(nonrep_mut_total$Nonsense_Mutation)
nonrep_mut_total$Missense_Mutation = as.numeric(nonrep_mut_total$Missense_Mutation)
nonrep_mut_total$Splice_Region = as.numeric(nonrep_mut_total$Splice_Region)
nonrep_mut_total$Frame_Shift_Del = as.numeric(nonrep_mut_total$Frame_Shift_Del)
nonrep_mut_total$Splice_Site = as.numeric(nonrep_mut_total$Splice_Site)
nonrep_mut_total$Frame_Shift_Ins = as.numeric(nonrep_mut_total$Frame_Shift_Ins)
nonrep_mut_total$Nonstop_Mutation = as.numeric(nonrep_mut_total$Nonstop_Mutation)
nonrep_mut_total$RNA = as.numeric(nonrep_mut_total$RNA)
nonrep_mut_total$In_Frame_Del = as.numeric(nonrep_mut_total$In_Frame_Del)
nonrep_mut_total$Translation_Start_Site = as.numeric(nonrep_mut_total$Translation_Start_Site)
nonrep_mut_total$In_Frame_Ins = as.numeric(nonrep_mut_total$In_Frame_Ins)
nonrep_mut_total$Total = as.numeric(nonrep_mut_total$Total)

#makes 33th row names total.y and every other cells the sum of the columns. 
nonrep_mut_total[26,] <- c("Total.y", colSums(nonrep_mut_total[, 2:14], na.rm = TRUE)) 