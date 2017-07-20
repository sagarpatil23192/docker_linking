
1. For running mysql as standalone

a.) Run the start.sh script which will do the following:

	i. Launch a mysql container and populate the DB called 'domo_mom_db' with some entries in 'directory' table. These entries are mentioned in rolloutScriptMOMv1.4.sql file. 


	ii. Command : ./start.sh


	iii. Once the container is up and running check the container for the db entries.

		a. login into the container using the cmd: docker exec -it db /bin/bash


		b. Connect to the mysql db using the command: mysql -uroot -p
		It will ask for password then give 'root' as the password

		c. Switch to the database domo_mom_db using : use domo_mom_db;

		d. Execute the command : select * from directory;
		to check the entries in the table.

2. To stop the mysql container

Run the stop.sh script  which will stop and remove the mysql container. Command to do the same is:
CMD: ./start.sh


3. To link the python and mysql container follow the steps given below:


	1. Launch the mysql container as specified above. Check for the mysql running container using command: 

		docker ps

	2. For lauching the python container follow the steps mentioned below:


		i. Build the docker image for python application using the following command:

			a. cd python 
			b. docker build -t "python_demo" .

		ii. Now run the python application by linking it to the mysql container i.e. the db container.

		
			docker run -it --link db:db python_demo /bin/bash	 

		iii. Once you are in the container execute the python application which will fetch the data from mysql container.

			python test.py

	3. Once you are done one the testing exit the python application and stop the mysq container.



