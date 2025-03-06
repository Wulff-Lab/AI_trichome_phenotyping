# AI Trichome Phenotyping - Setup Guide

## 1. Clone the Repository

```sh
git clone https://github.com/Wulff-Lab/AI_trichome_phenotyping.git
```

## 2. Run the Server

```sh
cd local_test
sudo sh run_server.sh
```

## 3. Deploy with TorchServe

### Register the Model

Replace `best_model.mar` with the actual `.mar` file name:

```sh
curl -X POST "http://localhost:8081/models?url=/home/model-server/model-store/best_model.mar"
```

### Unregister a Model

If you have a model already registered with best_model name, you can unregister it with this command:

```sh
curl-X DELETE http://localhost:8081/models/best_model
```

### Assign a Worker

```sh
curl -X PUT "http://localhost:8081/models/best_model?min_worker=1"
```

### Send an Image for Inference

```sh
curl http://localhost:8080/predictions/best_model -T local_test/serve/006-3.jpg
```

