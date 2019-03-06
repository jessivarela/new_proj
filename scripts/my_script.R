library(tidyverse)


df_clean %>% 
  filter(., participant != "jvc" & participant != "jjgp") %>% 
  ggplot(., aes(x = stim_num, y = resp)) + 
    geom_jitter(width = 0.2, height = 0, alpha = 0.1) + 
    geom_smooth(method = "glm", method.args = list(family = "binomial"), se = T)

str(df_clean)
