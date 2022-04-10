FROM jupyter/datascience-notebook:r-4.0.3

ARG NB_USER=jovyan
ARG NB_UID=1000
ENV USER ${NB_USER}
ENV NB_UID ${NB_UID}
ENV HOME /home/${NB_USER}
    
RUN pip install sweetviz && pip install xgboost && pip install scikit-plot && pip install graphviz

COPY . ${HOME}
USER root
RUN chown -R ${NB_UID} ${HOME}
USER ${NB_USER}    



