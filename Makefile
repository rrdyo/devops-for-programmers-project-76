install:
	ansible-galaxy install -r requirements.yml
deploy:
	ansible-playbook playbook.yml -i inventory.ini --vault-password-file pwd_vault
encrypt_vault:
	ansible-vault encrypt --vault-password-file pwd_vault group_vars/webservers/vault.yml
decrypt_vault:
	ansible-vault decrypt --vault-password-file pwd_vault group_vars/webservers/vault.yml