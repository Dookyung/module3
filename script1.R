library(fivethirtyeight)
library(tidyverse)

data("steak_survey", package="fivethirtyeight")
View(steak_survey)

sdat <- na.omit(steak_survey) %>%
    filter(region=="Mountain")

ggplot(sdat, 
       aes(x = steak_prep, fill = female)) + 
    geom_bar(position="dodge") +
    ggtitle(paste0("Steak Preparation Preference by Gender for ","Mountain"," Region"))


rmarkdown::render("Steak_article_params_list.Rmd",
                  params = list(region= 'Mountain'))
