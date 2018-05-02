FROM jupyter/minimal-notebook

USER root
RUN apt-get update && apt-get install -y graphviz && rm -rf /var/lib/apt/lists/*
USER jovyan
RUN pip install --upgrade pip
RUN pip install jupyter_contrib_nbextensions graphviz
RUN jupyter contrib nbextension install --user
RUN jupyter nbextension enable rubberband/main
RUN jupyter nbextension enable exercise2/main
RUN jupyter nbextension enable splitcell/splitcell
RUN jupyter nbextension enable highlighter/highlighter
RUN jupyter nbextension enable varInspector/main
RUN jupyter nbextension enable skip-traceback/main
RUN python -c "from notebook.services.config import ConfigManager; ConfigManager().update('notebook', {'skip-traceback': {'show_copy_buttons': False}})"
