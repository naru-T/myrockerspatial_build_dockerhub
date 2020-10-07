FROM rsnaru/myrockerspatial_build:latest

RUN chown rstudio:rstudio -R /home/rstudio/
RUN chmod -R 775 /home/rstudio/
COPY ./ /home/rstudio/
RUN chmod -R 775 /home/rstudio/
RUN chown rstudio:rstudio -R /home/rstudio/

RUN Rscript -e "remotes::install_github('naru-T/MyRMiscFunc')"
