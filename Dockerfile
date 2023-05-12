ARG MATLAB_RELEASE=r2022b
FROM mathworks/matlab:${MATLAB_RELEASE}

ARG MATLAB_RELEASE
ARG MATLAB_ROOT=/opt/matlab/R2022b
ARG ADDITIONAL_TOOLBOXES="Simulink"

RUN wget -nv https://www.mathworks.com/mpm/glnxa64/mpm && chmod +x mpm

RUN sudo ./mpm install --release ${MATLAB_RELEASE} --products ${ADDITIONAL_TOOLBOXES} --destination ${MATLAB_ROOT}

