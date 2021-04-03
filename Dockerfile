FROM jupyter/tensorflow-notebook:latest

USER root

RUN conda install -c conda-forge xeus-python jupyterlab jupyterlab-git 
RUN jupyter labextension install @jupyterlab/debugger 

#RUN pip install --quiet --no-cache-dir plotly \
#    fix-permissions "${CONDA_DIR}" && \
#    fix-permissions "/home/${NB_USER}"

ENV JUPYTER_ENABLE_LAB=yes
USER $NB_UID
