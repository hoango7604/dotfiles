
Run this command to install
```bash
git clone git@gitlab.vexere.net:internal/vxr-shared-config.git
echo "export VXR_ALIASRC_DIR=/path/to/vxr-shared-config" >> ~/.zshrc
echo "source $VXR_ALIASRC_DIR/vxr-all-aliasrc" >> ~/.zshrc

```

OR

# Add to end of file ~/.zshrc
export VXR_ALIASRC_DIR=/path/to/vxr-shared-config
source $VXR_ALIASRC_DIR/vxr-all-aliasrc

# exit editor and reload
source ~/.zshrc

# After that to change to kafka-prod cluster just type kafka-prod, or vexere to change to vexere cluster
# Or type vexere to change to vexere cluster, kafka-prod to change to kafka-prod cluster, kafka-uat to change to kafka-uat cluster

