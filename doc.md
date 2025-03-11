# CS670 Project - Abie Safdie


## The CalCOFI Dataset

[comment]: <d> (You must provide background on the dataset or datasets you worked with, such as who created it, why, how it was collected, for what purpose it was collected, what attributes are included, what representation decisions were made and how that affects the data, etc.)

The CalCOFI (California Cooperative Oceanic Fisheries Investigations) dataset tracks oceanic data off the coast of California. It is jointly managed by NOAA’s Fisheries Service, the California Department of Fish & Wildlife, and various academic institutions. (https://calcofi.org/data/oceanographic-data/bottle-database/)

The data is retrieved via bottle samples dropped at various depths at different oceanic locations. These samples retrieve data on many different indicators of ocean health. For example, CO2 measurements, pH levels, nutrient densities (e.g. phostphate, nitrite, ammonium, etc), ocean temperatures, oxygen saturations, and plankton levels. 

The CalCOFI dataset is managed with the intent to monitor the ocean's overall health and the health of coastal marine ecosystems. 

Currently, CalCOFI is still collecting and publishing data, however, the data I retrieved from Kaggle has data from 1949 to 2016. Hence, those are the years of data that I have used in this project.

Below is a visual (all visualizations were created by me using R, unless stated otherwise) of the locations off the coast of California where data samples were taken. 

[comment]: <insert locations graph> (This is a comment, it will not be included)

## Questions

[comment]: <insert visual> (You must clearly state the questions you’re attempting to answer. Some questions could be a bit vague or broad, such as determining the basic properties of the different attributes, but others should be more specific, such as determining if a particular relationship exists.
)


According to NASA, the ocean's are warming at an unprecedented rate due to human-caused greenhouse gas emissions. Notably, about 90 percent of global warming is occuring in the ocean. (cite: https://climate.nasa.gov/vital-signs/ocean-warming/?intent=121)

[comment]: <insert nasa chart> (caption: OCEAN HEAT CONTENT CHANGES SINCE 1955. 2024 was the Ocean's warmest year on record with a recorded 372 zettajoules of heat.)


This increase in ocean tempereature raises the question as to what effect this will have on the health of the ocean and its ecosystems. 

Accordingly, the CalCOFI dataset tracks one of the most important indicators of ocean health: Chlorophyll-A levels. Chlorophyll-A is the pigment associated with phytoplankton, which is a keystone species and primary producer in marine ecosystems. On top of being a keystone species in local ecosystems, plankton absorb roughly 30-50 percent of all carbon emitted by humans, making them the largest carbon sink in the world. Therefore, it is of critical importance that plankton levels remain within a healthy range for marine -- and land-based -- ecosystems to be healthy.

As a result, this project intends to answer a few questions regarding the relationship between ocean temperature, plankton levels, and other nutrients. 

More specifically these are: 
	- How does the amount of plankton change with respect to temperature?
		- How does this then impact oxygen and nutrient levels?
		- Can we form a model that can accurately predict plankton levels?
	- How does the level of nutrients change with temperature?
	- How does the primary productivity rate change with plankton and temperature levels?

Further, I hypothesize that with an increase in ocean temperature, the amount of plankton will decrease and the amount of productivity and nutrients in an ecosystem will also decline.


## Visualizations

Given the questions I am attempting to answer, below are several important visualizations that provide insightful context on the CalCOFI dataset. 

First, I plotted plankton levels with respect to ocean temperautre.

[comment]: <insert TEMP-PLANKTON> (plankton_temperature.png)

Notably, there is an interseting, Gaussian-like relationship with plankton and temperature. Given this, it invites the need to explore how increasing temperatures might influence the amount of phytoplankton. 

Second, I plotted various productivity and nutrients in relation to phytoplankton and temperature.

[comment]: <insert PRODUCTIVITY - PLANKTON> (productivity_plankton.png)

One of the most important indicators of the health of an ecosystem is its producutivity. Producutivity is measured in how much carbon gets absorbed by the environment. As seen in the above plot, plankton are needed to reach a productivity of above 50 mg of Carbon per cubic meter per half light day. After a certain threshold, however, it seems the more plankton does not neccassrily correlate to a more productive ecosystem. I added a linear regression line to this plot to illustrate a broad interpretation of this relationship.


[comment]: <insert OXYGEN - PLANKTON> (oxygen_plankton.png)

Due to plankton being primary producers (they conduct photosynthesis and release oxygen), there is a notable trend with how much oxygen is in the water in relation to the amount of plankton. Oxygen, of course, is necessary for all marine life that conduct cellular respiration. Without enough oxygen in the water, a marine ecosystem can become hypoxic (lack of oxygen) and cause massive die-offs. In this plot, we can the importance plankton play in oxygen levels in an ecosystem.

[comment]: <insert Temperature - Phosphate> (temp-phosphate.png)
[comment]: <insert Plankton - Phosphate> (phosphate-chlorophyll.png)

Phosphate is a key nutrient that is needed for plankton growth. Therefore, we can see a unique trend where phosphate levels decline as plankton increase. This is due to the plankton absorbing the phosphate and using it for growth. Accordingly with temperature, phosphate also sees this general trend. 


[comment]: <insert AVERAGE NUTRIENT CONCENTRATIONS> (avg-concentrations.png)

Zooming out, I conducted an average of plankton levels and all key nutrients against ocean temperature. In this plot we can see how these nutrients interact with each other against temperature. Notably, we can see the phosphate-plankton trend more clearly -- as plankton begin to increase, we can see phosphate decline. Further, we can see the similar normal-like distribution of chorophyll across temperature. Nitrite and Ammonium are other forms of nitrogen that plankton use for growth. However, something interesting is occuring with those values. Below is a plot with chlorphyll removed, so we can more easily see ammonium and nitrite. Notably, they mirror chlorophyll levels. This is because these nutrients get recycled more quickly as there are more plankton in the water. This is because zooplankton -- and other organisms that eat phytoplankton -- release ammonium as a byproduct. Therefore, there is rapid recycling of these nitogrens when plankton levels are high.

[comment]: <insert AVERAGE NUTRIENT CONCENTRATIONS> (avg-NOCHLOR.png)


[comment]: <insert AVERAGE PRODUCTIVITY CONCENTRATIONS> (avg-productivity.png)


With regards to productivity, it can be seen that these metrics mirror chlorophyll levels. That is, carbon absorbtion (C14AS1) and average carbon absorbtion (MeanAS). Further, we can see that oxygen saturation climbs significantly when chlorophyll increases.


## Models

I fit multiple linear regression models
	- cross-validation
	- ridge regression bc of multicollinearity

I fit boosted trees...?
	- simple boosted trees etc.



## Analysis and discussion

Draw what conclusions you can and observe what remains inconclusive. Explain the evidence.


## Impact

Explain the likely impact your methods could have if adopted widely.


