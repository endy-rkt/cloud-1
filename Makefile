setup:
	@echo "Install dependancy..."
	./scripts/ansible-install.sh

config:
	@echo "Run config provisionning with anisble..."
	ansible-playbook -i ansible/inventory --vault-pass-file=ansible/.vault.pass ansible/playbook.yaml

.PHONY: setup config
