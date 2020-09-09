# Review_2

Digital music company, which produces music filters and works with musicians

# Requirement
band pass filter

range of frequencies - [10,20,30]
default_lower_value: 40
default_higher_value: 1000

INPUT                |OUTPUT
---------------------|--------------|
|[40]                 |[40] // yes
|[30], 40, 1000       |[40] # adjusting the lower value // yes
[50], 40, 1000       |[50] # returning the same frequency // yes
[1001], 40, 1000     |[1000] # adjusting the higher value 
[30, 800], 40, 1000  |[40, 800] # adjusting the lower value
[50, 1002], 40, 1000 |[50, 1000] # adkusting the higher value
[30, 1002], 40, 1000 |[40, 1000] # adjusting both values
[], 40, 1000         |raise error "No frequencies provided"
[30]                 |[40] # magic numbers 
[10,20,30], 40, 1000 |[40,40,40]
