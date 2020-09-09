#!/bin/bash

rm -rf sezzle-magento1 && mkdir -p sezzle-magento1 && \
cp README.md Troubleshooting.md sezzle-magento1 && \
cp -R app sezzle-magento1 && \
cp -R js sezzle-magento1 && \
zip -r sezzle-magento1.zip sezzle-magento1 && \
rm -rf sezzle-magento1