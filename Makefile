FILES=.bash_aliases .bash_profile .bash_prompt .vimrc .gitconfig
BASH_DIR=~/

update-local:
	@echo 'Pulling latest changes from github'
	@git pull

export:
	@echo 'Committing to repo'
	@git add .
	@git commit -m 'Updated dotfiles'
	@git push origin master
	
install: update-local
	@echo 'Copying changes to $(BASH_DIR)'
	@$(foreach file, $(FILES), echo "Copying $(file) to $(BASH_DIR)"; cp -r $(file) $(BASH_DIR) ; )
	@cp -r $(FILES) $(BASH_DIR)

update: 
	echo 'Copying changes from $(BASH_DIR)'
	@$(foreach file, $(FILES), echo "Copying $(BASH_DIR)$(file) to ."; cp -r $(BASH_DIR)$(file) . ; )
