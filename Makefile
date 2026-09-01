setup:
	@echo "Install dependancy..."
	bash scripts/ansible-install.sh

config:
	@echo "Run config automation with anisble..."
	ansible-playbook -i ansible/inventory --vault-pass-file=ansible/vault.pass ansible/playbook.yaml

provision:
	@echo "Run provisionning..."

.PHONY: setup config provision
