# Gunakan TensorFlow + Jupyter Notebook + CUDA
FROM tensorflow/tensorflow:2.16.2-gpu-jupyter

# Set working directory
WORKDIR /tf

# Salin semua file dari repository ke dalam container
COPY . /tf

# Install dependensi tambahan jika diperlukan
# RUN pip install --no-cache-dir -r requirements.txt

# Expose port Jupyter Notebook
EXPOSE 8888

# Jalankan Jupyter Notebook
CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--port=8888", "--allow-root", "--NotebookApp.token=''"]
