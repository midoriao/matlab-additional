# Matlab-additional

This repository provides docker images for MATLAB with additional toolboxes. The images are based on the [official Matlab images](https://hub.docker.com/r/mathworks/matlab) from MathWorks (`mathworks/matlab`).

## Pulling the images

```bash
docker pull ghcr.io/midoriao/matlab-additional:r2022b-simulink
```

The usage of the images is the same as the official images. For example, to start MATLAB R2022b with Simulink support, run:

```bash
docker run -it --rm --shm-size=512M ghcr.io/midoriao/matlab-additional:r2022b-simulink
```

Further options (e.g. VNC support, logging, licensing) are available. See the [official documentation](https://hub.docker.com/r/mathworks/matlab) for more information.

## Building the images

If you want to customize the images, you can build them yourself. The following command builds the image for MATLAB R2023a with Simulink and parallel computing support:

```bash
docker build \
    --build-arg MATLAB_RELEASE=r2023a \
    --build-arg MATLAB_ROOT=/opt/matlab/R2023a \
    --build-arg ADDITIONAL_TOOLBOXES="Simulink Parallel_Computing_Toolbox" \
    -t matlab-additional:r2023a-simulink-parallel .
```

## Acknowledgements

This repository is based on the [official Matlab images](https://hub.docker.com/r/mathworks/matlab) from MathWorks (`mathworks/matlab`) and the [matlab package manager](https://github.com/mathworks-ref-arch/matlab-dockerfile/blob/main/MPM.md).
