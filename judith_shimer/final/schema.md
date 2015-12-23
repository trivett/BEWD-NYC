#New Clothes Network Schema

##User
Username
Email
First Name
Last Name
Retailer (belongs to)
Organization (belongs to)
Volunteer Organizations (has many) *Since a volunteer can work with many nonprofits, and a nonprofit can have many volunteers, how do we handle many-to-many relationships?*
Alerts (has many) *same here*

##Retailer
Name
Address (street, city, state, zip)
Employees (has many)
Stock (has many)

##Stock
Type
Season
Description
Retailer (belongs to)
Post date/time
Available until date/time
Nonprofit (belongs to)

##Nonprofit
Name
Address (street, city, state, zip)
Employees (has many)
Volunteers (has many)

##Alert
Distance
Schedule
Nonprofit (belongs to)
User (has many)