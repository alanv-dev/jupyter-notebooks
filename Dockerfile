FROM continuumio/miniconda3

RUN conda install \
    numpy \
    pandas \
    matplotlib \
    jupyterlab \
    -y --quiet

CMD ["jupyter-lab","--notebook-dir=/miniconda/notebooks","--ip=0.0.0.0","--no-browser","--allow-root"]