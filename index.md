---
title       : DEVELOPING DATA PRODUCTS
subtitle    : SELECTING THE BEST CAR FOR A TRIP
author      : HUMPHREY MULENGA
job         : DATA MANAGER
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : []            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides

---

##      INTRODUCTION AND AIMS

* The amount of miles travelled per gallon of fuel is a very good and important indicator of a vehicle's fuel efficiency and is something consumers look out for when making a vehicle purchase. The more miles travelled per gallon of fuel, the better the effeiciency. However, there are some factors that may affect this MPG efficiency, such as the vehicle load, meinatance, age and possibly transmission type.
We aimed to make an application that will help users select the best vehicle for their travel requirements based on the variables they choose.

* The Shyny application is availalable at: 
[https://mulengah.shinyapps.io/DDPCoursPJ/](https://mulengah.shinyapps.io/DDPCoursPJ/)

* The ui.R and server.R files are available at: [https://github.com/MulengaH/DataProducts/](https://github.com/MulengaH/DataProducts/)

---

##      DATA SOURCE
* The data used in this application is part of the datasets found within R and in particular it is the mtcars dataset. The original data comes from the 1974 motor trends US magazine. It looks at various characteristics of performance and design of 32 motor vehicles made between 1973 and 1974. T
* The characteristics of the data included miles per gallon, weight, displacement,horsepower, transmission type, number of gears etc.

---

##   SELECTING THE CAR THAT BEST SUITS THE TRIP

* This application aids the user in the selection of the car that best suits their trip based on the variables provided by the user.

* All the user need to do is provide trip information such as distance to be travelled,gasoline price and maximum amount of money they are prepered to spend. * Furthermore, the user needs to choose their desired vehicle charectristics such as number of cylinders, displacement, horse power and transmission type.

---

##   APPLICATION RESULTS
* The application will then use all the provided information to filter out the cars that match the provided criteria.

* The application will only return the cars that match the specied criteria and if the user is not happy they car repeat the process by changing the variable.
