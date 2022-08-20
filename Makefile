init:
	./setup.sh

syntax:
	ansible-playbook --inventory-file ./hosts wsl.yml --syntax-check  --connection=local

dry-run:
	ansible-playbook --inventory-file ./hosts wsl.yml --check  --connection=local

play:
	ansible-playbook --inventory-file ./hosts wsl.yml --connection=local