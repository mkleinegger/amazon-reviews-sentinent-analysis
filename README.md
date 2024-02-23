# Amazon Reviews Analysis

This repository contains code and resources for analyzing Amazon reviews.

## Introduction

The purpose of this project is to analyze Amazon reviews, for the course `188.995 Data-oriented Programming Paradigms` at TU Wien, using various techniques and tools. It aims to provide insights into customer sentiments, product ratings, and other relevant information.

## Amazon Review Data

For our project we decided to use the Amazon Review Data available at the following link: https://nijianmo.github.io/amazon/index.html

It contains data about 233.1 million Amazon reviews and metadata about the products which are reviewed. This data amounts to a toal size of almost 300GB of data, distributed across two JSON files per product category.

Since this large amount of data is too much to upload, we wrote a bash script which automatically downloads the files from the providing website. The instructions and the commands can be found in our notebook `notebook.ipynb` in the section "Data Loading".


## Python Packages

Most of our code is written in Python. In order to provide a Python environment in which our experiments can be reproduced, we use the library `poetry`. More detailed instructions on how to create such an environment can be found in the notebook in the section "Prerequisites".

The command to create the Python environment is: `poetry install --no-root`

It can then be used as the kernel to run our Jupyter notebook.
