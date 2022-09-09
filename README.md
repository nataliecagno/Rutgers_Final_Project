# Rutgers_Final_Project

### Overview
Our project is multi-layered. First, we created a database and machine learning model to predict the likelihood that a dog would be available in a shelter based on the data set. Next, we integrated that with our interactive html page to allow dog adopters the ability to search and see the likelihood they will be able to find a dog they would be interested in at our shelter, Furever Friends. Finally, we conducted a deep analysis of the data to answer the questions originally posed.

### Questions Originally Posed

- Does the age of a dog influence the likelihood of them being adopted? Are puppies more likely to be adopted than senior dogs or vice versa?
- Do shelters mainly consist of older dogs or are there younger puppies available as well?
- Does the dog’s sex influence the chances of being adopted? Which sex is more desirable?
- Which sex makes up majority of available dogs?
- Does the dogs breed weigh heavily on the decision to adopt? Are Aggressive breeds/ unknown shelter mixes less likely to be adopted than known/desired breeds?
- Are there any purebred dogs available for adoption or are most dogs unknown mixes?

### Resources
[ShelterDogs.csv](https://www.kaggle.com/datasets/jmolitoris/adoptable-dogs?select=ShelterDogs.csv)


## Data Analysis

In our analysis we were interested in looking at two sides of the data set - average shelter time and overall shelter distribution at the time of the data pull. 

![census](https://github.com/nataliecagno/Rutgers_Final_Project/blob/Analysis/Resources/Census.png)

#### Average Shelter Time
We were interested in assessing how much age has an influence over adoption. To do this, we compared average shelter time in days to age. The following was the result:
![agevst](https://github.com/nataliecagno/Rutgers_Final_Project/blob/Analysis/Resources/Age%20v%20Shelter%20Time.png)
![age](https://github.com/nataliecagno/Rutgers_Final_Project/blob/Analysis/Resources/Shelter%20Time%20by%20Age.png)

As you can see, age does indeed have a correlation with increased shelter time and is a strong influencer in how likely a dog will be adopted. While there were some one off instances where some older dogs had shorter stays at the shelter, this was not the norm. Additionally, the data shows very clearly that puppies have a much shorter shelter time and are likely to be adopted fairly quickly. 


We were also interested in assessing how much a dog's sex influences the chances of being adopted. The following were the results:

![sexvst](https://github.com/nataliecagno/Rutgers_Final_Project/blob/Analysis/Resources/Shelter%20Time%20by%20Sex.png)

As can be seen in the above image, males make up a majority of the shelter dogs, though not by a large margin. Interestingly, while there are more male dogs available in the shelter, they are likely to be adopted more quickly as compared to their female counterparts. Its possible that even though there are more males, they are older dogs that are not as likely to be adopted.



Another aspect of adoption we were interested in assessing was the influence breed has. To do this, we compared known vs unknown breeds to average shelter time. The following was the result:
![breedvst](https://github.com/nataliecagno/Rutgers_Final_Project/blob/Analysis/Resources/Shelter%20Time%20by%20Breed.png)

Through the analysis we found that while breed may be something adopters are interested in, it does not have a significant influence over a dog's likelihood to be adopted. One potential explanation for this could be that while some adopters have a preference on breed, equally as many adopters do not.


Finally, we wanted to assess the influence the impact agreeability has on the shelter time a dog is likely to incur. We included variables such as likes people, likes children, gets along with females, gets along with males, gets along with cats and is housebroken under this umbrella term. The following was the result:

![agreeable](https://github.com/nataliecagno/Rutgers_Final_Project/blob/Analysis/Resources/Shelter%20Time%20by%20Agreeability.png)

Interestingly enough, there was little variance when it came to agreeability and impacts on adoption. While we suspected that liking children would be a top influencer, it was not. Instead, it seems that adopters are more interested in if their potential new dog will get along with their cat!


#### Shelter Demographics
In addition to the questions posed above, we were also interested in assessing the demographics of the shelter data. The first question posed was related to age. The following is the age distribution in the shelter where circle size is dependent on the number of dogs available: 
![agedistribution](https://github.com/nataliecagno/Rutgers_Final_Project/blob/Analysis/Resources/Age%20Distribution.png)


As can be seen here, there are a lot of dogs in the shelter around 10-13 years old. While for some small dogs this is more mid life expectancy, sadly this is the average life expectancy for a lot of larger breeds meaning those dogs are likely to spend their final days in a shelter. Here is another visual that assesses the average age of each sex:

![agevsex](https://github.com/nataliecagno/Rutgers_Final_Project/blob/Analysis/Resources/Average%20Age%20of%20Each%20Sex.png)

As can be seen above, the average age of dogs at the time of the census was 8 years old.


Finally, we were interested in assessing the demographics of breeds in the shelter. 

![breed](https://github.com/nataliecagno/Rutgers_Final_Project/blob/Analysis/Resources/Breed%20Distribution.png)

This data indicates that there are indeed both known and unknown breeds available. We decided to then compare three variables at once: age, sex and breed. The following resulted (note the numbers atop the bar graph indicate average shelter time and age respectively):

![breedandsex](https://github.com/nataliecagno/Rutgers_Final_Project/blob/Analysis/Resources/Shelter%20Time%20by%20Sex%20and%20Breed.png)

As can be seen in this visual, it seems that amongst known breeds, there are nearly an equal amount of females and males, though males are likely to be slightly older on average. Amongst unknown breeds, there are far fewer males and the average age of females is higher. This data shows us that sex and age undoubtedly have the biggest influence on adoptions. Furthermore, its possible to surmise that age is the biggest influence where adopters are likely to adopt an unknown breed as long as its younger. 


## Conclusion
Adopting a dog requires a lot of consideration on the part of the owner. While some dog characteristics have perceived influence over likelihood of being adopted, after the analysis one stood out as being a clear factor: age. 
Other influential factors include: getting along with cats and being a male.
The average life expectancy for dogs is 10-13 years (albeit longer for some smaller breeds). The longer they spend in a shelter, the odds go down they will find a forever home. Help give these friends a chance at a happy life, adopt don’t shop! Or, perhaps consider fostering a shelter dog… every bit counts!

