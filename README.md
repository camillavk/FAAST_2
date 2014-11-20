Faast System
=======================

## Synopsis

This is the challange for the first week of Makers Academy.

# Scenario:

Create a tube system to be deployed into the undergound. The FAAST system needs to cater for the following;
- There will be a number of trains inside the system
- Trains will travel from station to station
- Inside of a station, when the train stops, passengers will alight and enter the carriages of the train
A passenger will touch in at the station and touch out at the destination station
- Each carriage of a train can hold up to 40 passengers
- Each train is made of a number of coaches

There are four objects within this system, the Passenger(s), carriages, train and station and they will interact in the following ways;
1. Passenger touches in at Station
2. Passenger boards Carriage *
3. Train transports Carriage from one Station to another Station
4. Passenger disembarks from Carriage
5. Passenger touches out at Station

* Carriage rejects Passenger if it is already at its capacity (40 Passengers)

* The passenger is charged 2GBP when they touch out of a station (unless the station specifies a different amount to charge the passenger)

## Technologies Used

Ruby, Rspec
