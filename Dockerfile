FROM nginx:1.11.3-alpine
COPY run.sh /etc/utils/
CMD ["sh", "/etc/utils/run.sh"]