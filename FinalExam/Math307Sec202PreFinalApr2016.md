# Final Exam Preparatory Questions
## Math 307 Section 202 Jan-Apr 2016

The following questions will be presented at the final exam at 8:30am on Wednesday 27 April 2016.  In addition to these questions, there will also be a short-answer section.

Read and answer these questions carefully as a part of your exam preparation.

## Question 1

## Question 2

## Question 3

This question is about comparing modeling using least-squares fitting to modeling using the SVD.  The dataset we'll be using represents qualities of music originating in different parts of the world, and we're attempting to see if these data illustrate whether or not music style is correlated with its place of origin.

### Getting the data

Visit [the UCI data archive](https://archive.ics.uci.edu/ml/datasets/Geographical+Original+of+Music) and click on the [data folder link](https://archive.ics.uci.edu/ml/machine-learning-databases/00315/).  This link directs you to download a zip file.  Unpack the zip file and import the file ``default_features_1059_tracks.txt`` into your favourite programming environment.

This file is a CSV.  Each line represents a sample of music.  The first 68 entries in each line are 68-dimensional vectors representing musical features.  The last 2 entries are the latitude and longitude of the location of the music's origin.

We will use the pair $(p_i, q_i)$ as the music's latitude and longitude.  We will call vector ${\bf x}_i \in \mathbb{R}^{68}$ the feature vector for music sample $i \in 1\ldots N$.  The matrix
$$
X =
\begin{bmatrix}
{\bf x}_1 \\
{\bf x}_2 \\
\vdots \\
{\bf x}_N
\end{bmatrix}
$$
is the feature matrix.

### Predict music origin using a linear model

Perform two least-squares fits of matrix $X$ against latitude, and of $X$ against longitude.  That is, suppose that
$$
p_i \approx {\bf x}_i^T {\bf a} \\
q_i \approx {\bf x}_i^T {\bf b}
$$
and solve the least-squares problems for the unknown model parameter vectors ${\bf a}, {\bf b}$.

Once you have ${\bf a}, {\bf b}$, determine the latitudes and longitudes they predict for each music sample, namely,
$$
\hat{p}_i \approx {\bf x}_i^T {\bf a} \\
\hat{q}_i \approx {\bf x}_i^T {\bf b}
$$
(Note the hats representing *predicted* p's and q's).

Plot the actual latitudes and longitudes on scatterplot, and also plot the predicted latitudes and longitudes.  (The actual latitudes and longitudes should roughly remind you of a map of locations on the world map -- if it doesn't look right, try swapping the x/y axes.)

Is the proposed linear model a good model for predicting the location of music origin based on musical features?

### Summarize the music dataset using the SVD

