library(tidyverse)

people <- read.csv("C:/Users/shobi/OneDrive/Desktop/Woxsen/Term 2/R Programming/train.csv")
people

summary(people)
people %>%
  summary()
people %>%
  drop_na()%>%
  people %>%
  filter(Gender=="male")
people %>%
  filter(Gender=="female")
people %>%
  arrange(Fare)
people%>%
  arrange(desc(Fare))
people%>%
  mutate(FamSize=Parch+SibSp)
people%>%
  mutate(FamSize=Parch+SibSp) %>%
  arrange(desc(FamSize))
#people1<-people %>%
  # Plot bar plot of passenger Sex
  ggplot(people, aes(x = Gender)) +
  geom_bar()
ggplot(people, aes(x = Age, y = Fare)) +
  geom_point()
# Scatter plot of Age vs Fare colored by Sex
ggplot(people %>% drop_na(), aes(x = Age, y = Fare, color = Gender)) +
  geom_point()
# Plot bar plot of passenger Sex & fill according to Survival
ggplot(people1, aes(x = Gender, fill = Survived)) +
  geom_bar()

