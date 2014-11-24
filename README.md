---
title: "Data Exploratory Tool - mtcars"
author: "Ashutosh Prasad"
date: "Sunday, November 23, 2014"
output: html_document
---

The Data Exploratory Tool - mtcars is an application deployed on shiny server for anyone to access and use on the internet. For using web-version of the application, click on the following url, and start using the application. On the left side of the page, in the side panel, there are varibales you can choose; on the right side of the page, in the main panel, the inter-relationship of the chosen variables are plotted.

URL for the web-deployed application: 
https://dataexploratorytool-mtcars.shinyapps.io/mtcars/

For running the "Data Exploratory Tool - mtcars" locally, do the following:
    i. Create a working directory on your local disc.
    ii. Download ui.R and server.R from this github repository in your local directory.
        You may clone using the following command:
        git clone https://github.com/DrAshuPrasad/Developing-Data-Products-Assignment.git
    iii. Invoke RStudio, load library(shiny), and setwd() to the local directory having the code downloaded.
    iv. In RStudio, invoke command: runAPP(). This will start the application, where you can choose different variables and see their inter-relationships plotted.
    v. To come out of the application, you may simply close the application window.

This application is submitted as an assignment for the course of Data Science run by Johns Hopkins University on the portal of coursera.


