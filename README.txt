#Run dengan normal

docker run --gpus all -p 8888:8888 jupyter-tf

## kalua ini dengan line ini code nya hanya akan ke save pada jupyter notebook nya

================================================================================================

# Run untuk save pada docker nya

docker run --gpus all -p 8888:8888 -v jupyter_data:/tf jupyter-tf

## Docker volume menyimpan data secara persisten di system kamu, termasuk code code nya dan kalua mau liat file nya bisa menggunakan command line "cd volume ls".

================================================================================================

# Run untuk save pada Local atau system kamu (RECOMENDASI PENULIS)

docker run --gpus all -p 8888:8888 -v "C:\Users\[Folder Name]\jupyter_notebooks:/tf" jupyter-tf

## Semua file akan di save di local file sesuai directory yang tadi di tentukan saat kamu masukan CLI nya, Lalu code semua file akan ke save setelah docker di berhentikan 

================================================================================================

NOTE : Kalau sudah pernah menjalana Code line ini di CLI, CMD, Powershell seharus nya docker akan selalu terlihat pada "Docker Desktop" dan bisa START dan STOP melalui Docker Desktop
