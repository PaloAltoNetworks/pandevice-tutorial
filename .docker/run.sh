#!/bin/sh
docker run -d --name jupyter_notebooks -p 80:8888 --restart unless-stopped -v /home/ubuntu/pandevice:/home/jovyan/work -w /home/jovyan/work jupyter-notebook start-notebook.sh --NotebookApp.token=''
