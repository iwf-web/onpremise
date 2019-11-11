ARG SENTRY_IMAGE
FROM ${SENTRY_IMAGE:-sentry:9.1.2}-onbuild
RUN apt-get update && apt-get install -y libsasl2-dev python-dev libldap2-dev libssl-dev
RUN pip install sentry-ldap-auth
