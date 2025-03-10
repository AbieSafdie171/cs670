# CS670 Project - Abie Safdie


## The CalCOFI Dataset

[comment]: <d> (You must provide background on the dataset or datasets you worked with, such as who created it, why, how it was collected, for what purpose it was collected, what attributes are included, what representation decisions were made and how that affects the data, etc.)

The CalCOFI (California Cooperative Oceanic Fisheries Investigations) dataset tracks oceanic data off the coast of California. It is jointly managed by NOAA’s Fisheries Service, the California Department of Fish & Wildlife, and various academic institutions.

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

Accordingly, the CalCOFI dataset tracks one of the most important indicators of ocean health: Chlorophyll-A levels. Chlorophyll-A is the pigment associated with phytoplankton, which is a keystone species and primary producer in marine ecosystems. On top of being a keystone species in local ecosystems, plankton absorb roughly 30-50 percent of all carbon emitted by humans, making them the largest carbon sink in the world. Therefore, it is of critical importance that plankton levels remain within a healthy range for marine ecosystems to be healthy.

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

First, I plotted plankton levels with respect to ocean temperautre. Notably, there is an interseting, Gaussian-like relationship with plankton and temperature.

[comment]: <insert TEMP-PLANKTON> (graph)

Given this, it invites the need to explore how increasing temperatures might influence the amount of phytoplankton.

Second, I plotted various productivity and nutrients in relation to phytoplankton and temperature

[comment]: <insert CARBON - PLANKTON> (graph)
[comment]: <insert PRODUCTIVITY - PLANKTON> (graph)
[comment]: <insert OXYGEN - PLANKTON> (graph)
[comment]: <insert Temperature - Phosphate> (graph)
[comment]: <insert Plankton - Phosphate> (graph)




## Models

I fit multiple linear regression models and boosted trees...
	- cross-validation
	- ridge regression bc of multicollinearity

















