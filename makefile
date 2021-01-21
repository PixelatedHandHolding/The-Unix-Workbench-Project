README.md: guessinggame.sh
	touch README.md
	echo "# Project for The Unix Workbench" >> README.md
	echo "-*Make* **was run:**" >> README.md
	echo | date -u -r README.md "+%A %d %B %Y %T" >> README.md
	echo "-**Lines of code used to make the** *Guessing Game*:" >> README.md
	echo | wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md
