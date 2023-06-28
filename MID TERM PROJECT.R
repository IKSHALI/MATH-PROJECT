# upload the data 

# data = lung cancer 

lungcancer = read.csv("survey lung cancer.csv")

# Exploratory Data Analysis

install.packages("dplyr")
library(dplyr)
install.packages("explore")
library(explore)
install.packages("tidyverse")
library(tidyverse)
install.packages("ggplot2")
library(ggplot2)
install.packages("readr")
library(readr)
install.packages("caret")
library(caret)

describe(lungcancer)
explore_all(lungcancer)

explore_tbl(lungcancer)

lungcancer %>%
  select(GENDER,SMOKING,ALCOHOL.CONSUMING) %>%
  explore_all(target = GENDER)

lungcancer %>%
  select(GENDER,ANXIETY,PEER_PRESSURE) %>%
  explore_all(target = GENDER)

lungcancer %>%
  select(GENDER,YELLOW_FINGERS,FATIGUE,ALLERGY,WHEEZING) %>%
  explore_all(target = GENDER)

lungcancer %>%
  select(GENDER,COUGHING,SHORTNESS.OF.BREATH,SWALLOWING.DIFFICULTY,CHEST.PAIN) %>%
  explore_all(target = GENDER)

lungcancer %>%
  select(GENDER,CHRONIC.DISEASE,LUNG_CANCER) %>%
  explore_all(target = GENDER)

# View the first few rows of the dataset

head(lungcancer)  

# Get summary statistics of the variables
summary(lungcancer)  

# Check the data types and variable names
str(lungcancer)

# plotting the lungcancer data set

# Creating a scatter plot

ggplot(data = lungcancer, aes(x = AGE, y = SMOKING)) +
  geom_point() +
  labs(title = "AGE vs. SMOKING", x = "AGE", y = "SMOKING")

ggplot(data = lungcancer, aes(x = GENDER, y = SMOKING,ALCOHOL.CONSUMING)) +
  geom_point() +
  labs(title = "GENDER vs. SMOKING,ALCOHOL.CONSUMING", x = "GENDER,AGE", y = "SMOKING,ALCOHOL.CONSUMING")

ggplot(data = lungcancer, aes(x = GENDER,AGE, y = SMOKING,ALCOHOL.CONSUMING)) +
  geom_point() +
  labs(title = "GENDER,AGE vs. SMOKING,ALCOHOL.CONSUMING", x = "GENDER,AGE", y = "SMOKING,ALCOHOL.CONSUMING")


ggplot(data = lungcancer, aes(x = GENDER, y = ANXIETY,PEER_PRESSURE)) +
  geom_point() +
  labs(title = "GENDER vs. ANXIETY,PEER_PRESSURE", x = "GENDER,AGE", y = "ANXIETY,PEER_PRESSURE")

ggplot(data = lungcancer, aes(x = GENDER,AGE, y = ANXIETY,PEER_PRESSURE)) +
  geom_point() +
  labs(title = "GENDER,AGE vs. ANXIETY,PEER_PRESSURE", x = "GENDER,AGE", y = "ANXIETY,PEER_PRESSURE")

ggplot(data = lungcancer, aes(x = GENDER, y = YELLOW_FINGERS,FATIGUE,ALLERGY,WHEEZING)) +
  geom_point() +
  labs(title = "GENDER vs. YELLOW_FINGERS,FATIGUE,ALLERGY,WHEEZING", x = "GENDER", y = "YELLOW_FINGERS,FATIGUE,ALLERGY,WHEEZING")

ggplot(data = lungcancer, aes(x = GENDER, y = CHRONIC.DISEASE,LUNG_CANCER)) +
  geom_point() +
  labs(title = "GENDER vs. CHRONIC.DISEASE,LUNG_CANCER", x = "GENDER,", y = "CHRONIC.DISEASE,LUNG_CANCER")



