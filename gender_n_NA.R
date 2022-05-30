f_mut <- filter(mut_count, mut_count$gender == "female")
m_mut <- filter(mut_count, mut_count$gender == "male")

n_distinct(pan_cancer$sample_id) #pan_cancer does not include mutations with NA 

n_distinct(pan_cancers_NA$sample_id) #pan_cancer_NA includes mutations with NA
