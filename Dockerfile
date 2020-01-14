FROM quay.io/numigi/odoo-public:11.0
LABEL maintainer="contact@numigi.com"

USER root

COPY .docker_files/test-requirements.txt .
RUN pip3 install -r test-requirements.txt

USER odoo

COPY sale_stock_move_no_merge /mnt/extra-addons/sale_stock_move_no_merge

COPY .docker_files/main /mnt/extra-addons/main
COPY .docker_files/odoo.conf /etc/odoo
