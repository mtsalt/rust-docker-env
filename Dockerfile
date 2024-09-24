FROM rust:slim

ARG USER_ID=1000
ARG GROUP_ID=1000

RUN groupadd -g ${GROUP_ID} rustuser \
 && useradd -u ${USER_ID} -g ${GROUP_ID} -m rustuser

USER rustuser

WORKDIR /home/rustuser
