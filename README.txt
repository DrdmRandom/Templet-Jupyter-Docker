<<<<<<< HEAD
=============================================
= STEP 1 : Pull TensorFlow Image for Docker =
=============================================
=======
#Run dengan normal
>>>>>>> 8a4928501c0118f6b714de236a4ba07ef2eebef5

$ docker pull tensorflow/tensorflow:2.16.2-gpu-jupyter

====================================================
= STEP 2 : Verifikasi Docker dapat menggunakan GPU =
====================================================
 
$ docker run --rm --gpus all nvidia/cuda:12.3.2-base-ubuntu22.04 nvidia-smi

==============================
= STEP 3 : alankan Container =
==============================

   ==============================
   = OPSI 1 : Run dengan normal =
   ==============================

   	$ docker run --gpus all -p 8888:8888 jupyter-tf
   
   	# kalua ini dengan line ini code nya hanya akan ke save pada jupyter notebook nya

   ============================
   = OPSI 2 : Run Save Docker =
   ============================

   	$ docker run --gpus all -p 8888:8888 -v jupyter_data:/tf jupyter-tf
   
   	# Docker volume menyimpan data secara persisten di system kamu, termasuk code code nya dan kalua mau liat file nya bisa menggunakan command line "cd volume ls".

   ============================
   = OPSI 3 : Run Save Local =   (RECOMENDASI PENULIS)
   ============================

	$ docker run --gpus all -p 8888:8888 -v "C:\Users\[Folder Name]\jupyter_notebooks:/tf" jupyter-tf
   
   # Semua file akan di save di local file sesuai directory yang tadi di tentukan saat kamu masukan CLI nya, Lalu code semua file akan ke save setelah docker di berhentikan 



<<<<<<< HEAD
=======================================================================================================================================================================================

NOTE : Kalau sudah pernah menjalana Code line ini di CLI, CMD, Powershell seharus nya docker akan selalu terlihat pada "Docker Desktop" dan bisa START dan STOP melalui Docker Desktop

=======================================================================================================================================================================================

=======
NOTE : Kalau sudah pernah menjalana Code line ini di CLI, CMD, Powershell seharus nya docker akan selalu terlihat pada "Docker Desktop" dan bisa START dan STOP melalui Docker Desktop
>>>>>>> 8a4928501c0118f6b714de236a4ba07ef2eebef5
