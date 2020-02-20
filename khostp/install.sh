cp /opt/docker/krb5.conf /etc/krb5.conf
useradd local01
useradd local02
useradd local03

useradd kpere
useradd kpau
useradd kmarta

echo "local01" | passwd --stdin local01
echo "local02" | passwd --stdin local02
echo "local03" | passwd --stdin local03

cp /opt/docker/system-auth /etc/pam.d/system-auth
