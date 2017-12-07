API Gateway Mock Sample
==========================

# how to use

### install tfenv

https://github.com/kamatama41/tfenv

```
git clone https://github.com/kamatama41/tfenv.git ~/.tfenv
ln -s ~/.tfenv/bin/* /usr/local/bin
```

### clone this repo & install terraform via tfenv

```
git@github.com:53ningen/apigateway-mock.git
cd apigateway-mock
tfenv install
```

### create Mock APIs

```
terraform workspace new {:workspace_name}
terraform workspace select {:workspace_name}
terraform plan
terraform apply
```

