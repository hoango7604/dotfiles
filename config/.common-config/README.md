# Common config

### Description
- This is some common alias on zsh that speed up my working flow: git, gcloud, kubectl, etc
- These configs are based on [vxr-shared-config](https://gitlab.vexere.net/internal/vxr-shared-config)

### How to use

Run this command to install

```bash
echo "export COMMON_CONFIG_DIR=/path/to/.common-config" >> ~/.zshrc
echo "source $COMMON_CONFIG_DIR/.common-config" >> ~/.zshrc
source ~/.zshrc
```

After that to change to *kafka-prod cluster* just type *kafka-prod*, or *vexere* to change to *vexere* cluster
