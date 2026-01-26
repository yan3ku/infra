test:
	ansible-playbook spearhead.yml -l yaneko.net --check

run:
	ansible-playbook spearhead.yml -l yaneko.net
