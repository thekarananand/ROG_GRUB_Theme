cp -r ./ROG /boot/grub/themes/

sed -i '/GRUB_THEME=/d' /etc/default/grub
sed -i '/GRUB_GFXMODE=/d' /etc/default/grub
sed -i '/GRUB_TIMEOUT=/d' /etc/default/grub
sed -i '/GRUB_TIMEOUT_STYLE=/d' /etc/default/grub

echo "GRUB_THEME=\"/boot/grub/themes/ROG/theme.txt\"" >> /etc/default/grub
echo 'GRUB_GFXMODE="auto"' >> /etc/default/grub 
echo 'GRUB_TIMEOUT="10"' >> /etc/default/grub
sed -i '/GRUB_TIMEOUT=/d' /etc/default/grub

update-grub
