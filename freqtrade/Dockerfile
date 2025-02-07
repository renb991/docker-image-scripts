FROM freqtradeorg/freqtrade:2025.1

USER root

RUN apt-get update && apt-get install -y proxychains4 gettext

COPY proxychains.conf.tpl /etc/proxychains.conf.tpl
COPY 99-generate-proxychains-config.sh /docker-entrypoint.d/99-generate-proxychains-config.sh
COPY entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh && mkdir /home/ftuser/.proxychains && chown -R ftuser:ftuser /home/ftuser/.proxychains && chmod -R 775 /home/ftuser/.proxychains

USER ftuser

ENTRYPOINT ["/entrypoint.sh"]