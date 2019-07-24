# Update when ebarault/letsencrypt-autorenew-docker PR accepted
FROM 687049393369.dkr.ecr.us-east-1.amazonaws.com/fieldops/letsencrypt-autorenew-docker:4
LABEL Maintainer="Austin Hanson (austin.hanson@centralsquare.com)"

RUN /usr/local/bin/python2.7 -m pip install --upgrade certbot-dns-route53

ENTRYPOINT [ "/scripts/entrypoint.sh" ]