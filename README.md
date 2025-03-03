# Step-by-step guide for Object Detection Inference on Trichome

Clone the repo:
git clone https://github.com/Wulff-Lab/AI_trichome_phenotyping.git

Put MAR model (.mar) in folder local_test/serve/model-store

Run the server:
cd local_test
sudo sh run_server.sh

Deploy with TorchServe:
Register the model:
curl -X POST "http://localhost:8081/models?url=/home/model-server/model-store/best_model.mar" # replace "best_model.mar" with the .mar file name
Assign a worker:
curl -X PUT "http://localhost:8081/models/best_model?min_worker=1"
Send an image for inference:
curl http://localhost:8080/predictions/best_model -T path/to/image  # insert the path of the image


