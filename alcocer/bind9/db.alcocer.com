$TTL    86400
$ORIGIN alcocer.com.
@       IN      SOA     ns1 servermaster (
                       17011500         ; Serial
                         604800         ; Refresh
                          86400         ; Retry
                        2419200         ; Expire
                          86400 )       ; Negative Cache TTL
;
@       IN      NS      ns1
@       IN      MX 10   correo
$ORIGIN alcocer.com.
ns1             A       172.22.201.69
hosting         A       172.22.201.69
correo          A       172.22.201.69
ldap            CNAME   hosting
ftp             CNAME   hosting
www             CNAME   hosting
