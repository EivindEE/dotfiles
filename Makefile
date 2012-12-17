FILES=.bash_aliases .bash_profile .promt_command_config
BASH_FILES=~/.bash_aliases ~/.bash_profile ~/.promt_command_config
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
	@cp $(FILES) $(BASH_DIR)

update: 
	@echo 'Copying changes from $(BASH_DIR)'
	@cp $(BASH_FILES) .
