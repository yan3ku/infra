test:
	ansible-playbook spearhead.yml -l yaneko.net --check

install:
	ansible-playbook spearhead.yml -l yaneko.net

vault:
	ansible-vault edit group_vars/spearhead/vault.yml
