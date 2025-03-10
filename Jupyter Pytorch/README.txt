docker build -t jupyter-pytorch .

docker run --gpus all -p 8001:8001 -v "C:\Users\dawwi\OneDrive\Desktop\Templet Pytorch\jupyter_notebooks:/workspace" --name jupyter-pytorch jupyter-pytorch
