host ?= vm

test:
	ansible-playbook spearhead.yml -l $(host) --check -K

install:
	ansible-playbook spearhead.yml -l $(host) -K

ssh:
	ssh -o "UserKnownHostsFile=/dev/null" -o "StrictHostKeyChecking=no" yaneko@10.10.10.10

vault:
	ansible-vault edit group_vars/spearhead/vault.yml
