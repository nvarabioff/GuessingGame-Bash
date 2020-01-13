README.md:guessinggame.sh
	touch README.md
	echo "# Guessing Game - Bash" > README.md
	echo "\`\`\`" >> README.md
	date '+%m/%d/%Y' >> README.md
	echo "\`\`\`" >> README.md
	echo "### Number of Lines:" >> README.md
	echo "\`\`\`" >> README.md
	wc -l < guessinggame.sh | bc >> README.md
	echo "\`\`\`" >> README.md

clean:
	rm README.md
