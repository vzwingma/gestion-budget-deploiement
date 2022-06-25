# Installation de docker sur la VM Ubuntu 22.04 en WSL2

Après l'initialisation de la VM sur WSL2, certains problèmes, notamment au niveau du réseau, nécessite une configuration complémentaire

### Gestion du réseau

- Recopier les fichiers `wsl.conf` et `resolv.conf` dans `/etc/`
- Redémarrer la VM WSL

### Installation de `docker` et `docker-compose`

- Installer `docker` et `docker-compose` via la procédure décrire sur le site
- Configuration d'`IpTables`

Ces commandes permettent de gérer IpTables et initialiser correctement le daemon `dockerd` lorsqu'il y a l'erreur suivante lors de l'exécution de `dockerd`

```
sudo update-alternatives --set iptables /usr/sbin/iptables-legacy
sudo update-alternatives --set ip6tables /usr/sbin/ip6tables-legacy
```