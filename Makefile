gcloud-setup:
	gcloud config set project prj-sre-d-sandbox-run-c366

gcloud-run-deploy:
	gcloud beta run deploy my-springboot-service --image=gcr.io/prj-sre-d-sandbox-run-c366/deploy/cloudrun-example --platform=managed --region=us-central1
