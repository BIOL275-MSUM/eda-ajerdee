
# Load Packages -----------------------------------------------------------

library(tidyverse)   #load tidyverse package 

# Read --------------------------------------------------------------------
table1 <- read_csv("data/CRDT Data - CRDT.csv")  #read data 

table1

# Clean Data --------------------------------------------------------------

cleandata <-
  table1 %>% 
  rename(date = Date, state = State) %>% 
  mutate(date = as.Date(as.character(date), format = "%Y%m%d")) %>% 
  pivot_longer(
    cols = !(date | state), 
    names_to = "variable",
    values_to = "num"
  ) %>% 
  separate(
    col = variable, 
    into = c("variable", "race"), 
    sep = "_", 
    extra = "merge"
  ) %>% 
  mutate(
    variable = str_to_lower(variable), 
    race = as_factor(race)
  ) %>% 
  pivot_wider(
    id_cols = c(date, state, race),
    names_from = variable,
    values_from = num
  )



# plotting data -----------------------------------------------------------

cleandata %>% 
  filter(race == "Total") %>% 
  pivot_longer(
    cols = !(date | state | race), 
    names_to = "variable",
    values_to = "num"
  ) %>% 
  ggplot()+
  geom_histogram(aes(x = num))+
  facet_wrap(~ variable, scales = "free")+
  labs(
    x ="Number",
    y = "Days/State",
    title = "Distribution of Total Cases, Deaths, Hospitalizations, and Tests\nacross all Days and States"
  )

cleandata %>% 
  filter(
    state == "CA", 
    !str_starts(race, "Ethnicity"), 
    race != "Total",
    ) %>% 
  ggplot()+
  geom_area(aes(x = date, y = deaths, fill = race))+
  labs(
    fill = "Race"
  )

  


