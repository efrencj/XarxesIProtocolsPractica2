# Usamos una imagen base de FRR basada en Alpine Linux
FROM frrouting/frr:latest

# Mantenedor del Dockerfile
LABEL maintainer="tucorreo@example.com"

# Instalar OpenSSH y otros paquetes necesarios
RUN apk update && apk add openssh \
    && mkdir /var/run/sshd \
    && echo 'PermitRootLogin yes' >> /etc/ssh/sshd_config \
    && echo 'root:xip' | chpasswd  # Cambia 'rootpassword' a la contraseña que prefieras

RUN ssh-keygen -A

# Crear la configuración de vtysh
RUN echo "service integrated-vtysh-config" > /etc/frr/vtysh.conf

# añadir vtysh a .profile para que se ejecute automáticamente al inciar sesión


RUN echo 'vtysh' >> /root/.profile

# Exponer el puerto SSH (por defecto es el puerto 22)
EXPOSE 22

# Iniciar el servicio SSH y los daemons de FRR al ejecutar el contenedor
CMD /usr/sbin/sshd && /usr/lib/frr/frrinit.sh start && bash
