FROM alerta/alerta-web:9.0.4
USER root
COPY src/ /src
RUN /venv/bin/pip install /src/plugins/slackthread/
RUN /venv/bin/pip install /src/plugins/override/
USER alerta
