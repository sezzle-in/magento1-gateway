FROM trafex/alpine-nginx-php7

ARG MAGENTO_VERSION

USER root

RUN apk --no-cache add less mysql-client sudo php7-simplexml php7-pdo_mysql php7-iconv php7-mcrypt php7-soap

RUN rm -f *

COPY ./scripts/install.sh /usr/local/bin/install
RUN chmod +x /usr/local/bin/install

ADD --chown=nobody:nobody scripts/magento1-* ./

USER nobody

RUN curl https://codeload.github.com/OpenMage/magento-mirror/zip/${MAGENTO_VERSION} -o magento.zip

RUN unzip -q magento.zip && \
    rm magento.zip && \
    mv magento-mirror-${MAGENTO_VERSION}/* ./ && \
    rm -rf magento-mirror-${MAGENTO_VERSION}
