FROM nfcore/base:1.7
LABEL authors="Abhinav Sharma" \
      description="Docker image containing all requirements for nf-core/singlegenometese pipeline"

COPY environment.yml /
RUN conda env create -f /environment.yml && conda clean -a
ENV PATH /opt/conda/envs/nf-core-singlegenometese-1.0dev/bin:$PATH
