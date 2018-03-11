format(Sys.Date(), '%A, %B, %d, %Y')

# R code for the render function

rmarkdown::render("steakArticleParams.Rmd",
                  params = list(region = "Mountain"))


# R code to create the custom function

library(purrr)
render_report <-function(regionvar){
    template <-"Steak_article_params_list.Rmd"
    outfile <-sprintf("steakArticle_%s.html",regionvar)
    parameters <-list(region = regionvar)
    rmarkdown::render(template,
                      output_file=outfile,
                      params=parameters)
    invisible(TRUE)
}

render_report("Pacific")

