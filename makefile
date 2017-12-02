README.md :
	touch README.md
	
	echo "#the title of the project is Guessing-Game" >> README.md
		
	date '+%d/%m/%Y %H:%M:%S' >> README.md
	
	wc guessinggame.sh -l >> README.md

clean:
	rm README.md
