# where to download the base R docker image from
FROM rocker/r-base

# system libraries commonly required by R packages
RUN apt-get update && apt-get install -y \
    sudo \
    pandoc \
    pandoc-citeproc \
    libcurl4-gnutls-dev \
    libcairo2-dev \
    libxt-dev \
    libssl-dev \
    libssh2-1-dev


# Install required packages
RUN R -e "install.packages(c('shiny', 'rmarkdown'), repos='https://cloud.r-project.org/')"


# copy the app to the image
RUN mkdir /root/iris
COPY iris /root/iris


COPY Rprofile.site /usr/lib/R/etc/

EXPOSE 3333

CMD ["R", "-e", "shiny::runApp('/root/iris')"]
