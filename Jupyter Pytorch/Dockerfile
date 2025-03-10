# Gunakan PyTorch dengan CUDA dan runtime
FROM pytorch/pytorch:2.6.0-cuda12.4-cudnn9-runtime

# Set working directory
WORKDIR /workspace

# Salin semua file dari folder host ke dalam container
COPY . /workspace

# Install Jupyter Notebook
RUN pip install --no-cache-dir jupyterlab notebook

# Expose port Jupyter Notebook
EXPOSE 8001

# Jalankan Jupyter Notebook
CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--port=8001", "--allow-root", "--NotebookApp.token=''"]
