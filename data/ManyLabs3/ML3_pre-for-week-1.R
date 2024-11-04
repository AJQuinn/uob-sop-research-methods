library(dplyr)
library(jmv)

data = read.csv('data/ManyLabs3/ML3AllSites.csv')

data$age <- as.numeric(as.character(data$age))

data <- data %>%
  filter(!is.na(age)) %>%
  select(c('Participant_ID', 'session_id', 'age', 'major', 
           'gender', 'Openness', 'Conscientiousness', 
           'Extraversion', 'Agreeableness', 'Neuroticism',
           'Intrinsic', 'Mood', 'NFC', 'SelfEsteem',))

write.csv(data, 'data/ManyLabs3/ML3AllSites_rmb.csv')


