# SWISS STYLE PAIRING TOURNAMENT
Implemented in Python and PostgresSQL

### Required software
* [VirtualBox]()
* [Vagrant]()

### To run test code
 *  Clone or download .zip of this repo
 *  Open terminal and cd into repo directory
 *  Run the following from terminal prompt
    1. vagrant up (this will take a while)
    2. vagrant ssh 
    3. cd /vagrant/tournament
    4. psql -f tournament.sql 
    5. python tournament_results.py
 


##### TODO
* Implement odd number of players

### Resources referenced
* [Udacity - The Backend: Databases & Applications](https://classroom.udacity.com/nanodegrees/nd004)
* [PostgreSQL: The world's most advanced open source database](https://postgresql.org)
* [PostgreSQL Tutorial](http://www.postgresqltutorial.com/)
* [Wikipedia: Swiss System Tournament](https://en.wikipedia.org/wiki/Swiss-system_tournament)

# Credits
Test file provided by Udacity

Vagrantfile copied from [fullstack-nanodegree-vm](https://github.com/udacity/fullstack-nanodegree-vm)