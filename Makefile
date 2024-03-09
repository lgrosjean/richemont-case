TF_DIR=infrastructure
TF_OUTPUT=plan.tfplan

init:
	cd $(TF_DIR) && \
	terraform init

validate: init
	cd $(TF_DIR) && \
	terraform validate

plan: validate
	cd $(TF_DIR) && \
	terraform plan -out $(TF_OUTPUT)

apply: plan
	cd $(TF_DIR) && \
	terraform apply  -auto-approve $(TF_OUTPUT)