rm -rf /etc/krb5.conf
rm -rf /var/kerberos/krb5kdc/kdc.conf
rm -rf /var/kerberos/krb5kdc/kadm5.acl

cp /opt/docker/krb5.conf /etc/krb5.conf
cp /opt/docker/kdc.conf /var/kerberos/krb5kdc/kdc.conf
cp /opt/docker/kadm5.acl /var/kerberos/krb5kdc/kadm5.acl

kdb5_util create -s -P masterkey

kadmin.local -q "addprinc -pw kpere pere"
kadmin.local -q "addprinc -pw kanna anna"
kadmin.local -q "addprinc -pw kpau pau"
kadmin.local -q "addprinc -pw kpau pau/admin"

kadmin.local -q "addprinc -randkey host/sshd.edt.org"
