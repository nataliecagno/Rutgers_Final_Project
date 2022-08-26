# Rutgers_Final_Project
## Project Overview
The topic we chose to analyze was 2019 data on Shelter Dogs availble for adoption in 2019. As dog lovers and rescue dog owners, we are interested in understanding the demographics of a dog shelter and what factors of the dogs personality or appearance could effect their likelyhood of getting adopted quickly. Since our data file does not show whether or not dog was adopted, we will be going off the data of how long the dog has been in the shelter from (data pulled Dec 12, 2019).

### Questions to Answer
-Does age influence the likelihood of a dog being adopted? Are puppies more likely to be adopted than senior dogs or vice versa?\
-Does the dog’s sex influence the chances of being adopted?\
-What characteristics of the dogs personality make dogs more adoptable? For example, “likes other dogs”, “gets along with kids”, etc.\
-Does the dogs breed weigh heavily on the decision to adopt? Agressive breeds/ unknown shelter mixes vs confirmed/desired breeds

## Resources
The data is a compilation of information on 2,937 dogs who were available for adoption on December 12, 2019. Data points include dogs' names, breed, coat, age, sex, the date they were found, and some characteristics of their personalities.

Data Source: [Kaggle](https://www.kaggle.com/datasets/jmolitoris/adoptable-dogs)

- [ShelterDogs.csv](https://www.kaggle.com/datasets/jmolitoris/adoptable-dogs?select=ShelterDogs.csv)

## Group communication protocols
Working within a group of 2 had made the communication & execution of this project rather seamless. We have a shared google document as well as communication via slack.
[Team's Shared Document](https://docs.google.com/document/d/1KF-XNCNdnlLSpv6ixOsE8ZxQ-XxDwV9jrcZoqkKc6S8/edit) 
Since there are only 2 of us, we have been working together through most steps, but if we had to classify ourselves into roles we would be as follows:

**Team Responsibilties**

***Natalie*** - Square & Circle\
***Annie*** - Triangle & X

## Machine Learning Model
### Machine Learning Model phase 1
- We decided that the best machine learning model for our analysis would be a logistic regression. Because this data set provides all of the data and we were looking to see the likelihood of being adopted, a logistic regression was a perfect fit. 
- In this first phase of our machine learning model, we created a new column that calculated each dog's time spent in the shelter as of the data pull date. After having the number of days readily available, we then set conditions for adoptability where if the days in the shelter were under 1800, there was a high likelihood of being adopted and if the days were equal to or greater than 1800 there was a lower likelihood. 
- We then accounted for all null values and assessed the answer to be no if a value was not entered upon the dog's intake.
- Next, we converted all variables to binary values. Because there were 277 breeds in the data set, we opted to assess the top 10 values and group all other breeds as 'Other'. 
- Then we assigned the data to X and y values where a dog's adoptability was the y value and all other variables were part of the X value.
- After training the model, we found that there was 0.8476 accuracy. Meaning, that the model at present is able to correctly predict a dog's likliehood of being adopted 84.7% of the time.

## Database Integration
### ETL phase 1
- calculate time spent in shelter, shelter_time
- drop columns "ID" and "keep_in" for lack of relevancy
- used shelter_dogs_df.isnull().sum() to determine null variables. Replaced NaN variables with "no" to run logistic regression. 
- database shelter_dogs_df contains Name, Breed, Age, Sex, Date Found, Adoptable From, Posted, Color, Coat, size, Neutered and other characteristics about dog. Database also includes updated variabled shelter_time to show days in shelter.





