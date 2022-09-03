# Rutgers_Final_Project
## Project Overview
The topic we chose to analyze was 2019 data on Shelter Dogs availble for adoption in 2019. As dog lovers and rescue dog owners, we are interested in understanding the demographics of a dog shelter and what factors of the dogs personality or appearance could effect their likelyhood of getting adopted quickly. Since our data file does not show whether or not dog was adopted, we will be going off the data of how long the dog has been in the shelter from (data pulled Dec 12, 2019).

### Questions to Answer
- Does the age of a dog influence the likelihood of them being adopted? Are puppies more likely to be adopted than senior dogs or vice versa?
- Does the dog’s gender influence the chances of being adopted? Which gender is more desirable?
- What characteristics of the dogs personality make dogs more adoptable? For example, “likes other dogs”, “gets along with kids”, etc.
- Does the dogs breed weigh heavily on the decision to adopt? Are Aggressive breeds/ unknown shelter mixes less likely to be adopted than known/desired breeds?


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

## Machine Learning Model & Data Analysis
### Machine Learning Model phase 1
- We decided that the best machine learning model for our analysis would be a logistic regression. Because this data set provides all of the data and we were looking to see the likelihood of being adopted, a logistic regression was a perfect fit. 
- In this first phase of our machine learning model, we created a new column that calculated each dog's time spent in the shelter as of the data pull date. After having the number of days readily available, we then set conditions for adoptability where if the days in the shelter were under 1800, there was a high likelihood of being adopted and if the days were equal to or greater than 1800 there was a lower likelihood. 
- We then accounted for all null values and assessed the answer to be no if a value was not entered upon the dog's intake.
- Next, we converted all variables to binary values. Because there were 277 breeds in the data set, we opted to assess the top 10 values and group all other breeds as 'Other'. 
- Then we assigned the data to X and y values where a dog's adoptability was the y value and all other variables were part of the X value.
- After training the model, we found that there was 0.8476 accuracy. Meaning, that the model at present is able to correctly predict a dog's likliehood of being adopted 84.7% of the time.
** More details **
[![](Resources/click.PNG)](https://github.com/nataliecagno/Rutgers_Final_Project/tree/Natalie)

## Database Integration
- Our dataset contains a lot of vital information, such as ID, Name, Breed, Age, Sex, Date Found, Adoptable From, Posted, Color, Coat, size, Neutered and other characteristics about dog. Like most data sets, it also included a lot of data points that do not impact our analysis. Columns we considered less value were Name, Keep In and Posted. These variables did not add any value to our analysis and were therefore removed.
- One variable we noticed would be an interesting datapoint was the time the dog has spent in the shelter. This information can be found by taking the “adoptable from” date subtracted from the date the data was pulled, which was 12/12/2019. We stored this data in a variable titled shelter_time. From here, we determined that if a dog had spent longer than 1825 days in the shelter (5 years) their likelihood of being adopted was low. This new information was stored in a new variable, adoptability, and shelter_time was removed from our dataset.
- When cleaning the data, we uncovered there were several null variables in columns such as neutered, breed and all of the characteristic categories. It is not uncommon for an animal shelter to not know the dog’s breed or characteristics since the animals can be found in various situations. Therefore, using .fillna(), we adjusted these columns to reflect no/unknown rather than NaN. This allows us to continue with our analysis; by adjusted bree to unknown we are able to categorize dogs as either having their breed known or unknowns; and assuming that if the characteristic is unknown, it is better to assume the answer is no.

### Database
We used SQL to store our data and create tables for our desired breakout groups. 
![ERD]()
 ** More Details **
 [![](Resources/click.PNG)](https://github.com/nataliecagno/Rutgers_Final_Project/tree/Annie)

## Presentation
Check out our presentation [here](https://docs.google.com/presentation/d/1pDOwgm4KDFHsqqZ5XA-lx-JEhnzCCqGH-2m1Bs0F4_8/edit#slide=id.p)

## Dashboard
Using Tableau and HTML, we plan to create an interactive dashboard with plenty of visualizations on the demographics of the shelter dogs avaialble for adoption. We plan to make this user friendly where potentially adopters can enter certain characteristics such as age, gender, breed, etc. and it will tell them the likelihood the dog is still avaialble for adoption. 
