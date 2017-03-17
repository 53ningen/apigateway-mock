API Gateway Mock Sample
==========================

# how to use

### install tfenv

https://github.com/kamatama41/tfenv

```
git clone https://github.com/kamatama41/tfenv.git ~/.tfenv
ln -s ~/.tfenv/bin/* /usr/local/bin
```

### create Mock APIs

```
terraform env new {:env_name}
terraform env select {:env_name}
terraform plan
terraform apply
```
