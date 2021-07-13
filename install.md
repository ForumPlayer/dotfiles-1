# Important
This is my own way of setting up my system, this probably won't apply 100% to you, so check the commands and always read the [Arch Wiki](https://wiki.archlinux.org/)

# Manual Base Installation Guide:
## Boot into the Arch Linux live enviroment
Load your key layout and sync time, in my case:
```
loadkeys br-abnt2
timedatectl set-ntp true
```

## Format your disk
Using `fdisk`, you can format your disk with the following commands:
 - (n): new partition
 - (d): delete partition
 - (p): print partition table
 - (m): help menu
 - (g): create gpt partition table
 - (t): change partition type
   - 1 for EFI
   - 19 for SWAP
   - 20 for Linux FS
 - (w): write changes to disk
 - (q): quit without saving

After that, set the appropriate flags for each partition with:
```
mkfs.fat -F32 /dev/BOOT_PARTITION
mkswap /dev/SWAP_PARTITION
swapon /dev/SWAP_PARTITION
mkfs.ext4 /dev/FILE_SYSTEM_PARTITION
```

And mount the file system partition to `/mnt`:
```
mount /dev/FILE_SYSTEM_PARTITION /mnt
```

## Pacstrap and fstab
Run pacstrap and generate fstab with:
```
pacstrap /mnt base base-devel linux linux-firmware
genfstab -U /mnt >> /mnt/etc/fstab
```
You can add fstabs entries after, for example - SMB file sharing:
```
//SERVER_ADDRESS/REMOTE_FOLDER /LOCAL_FOLDER cifs credentials=/etc/sambacreds,uid=USERNAME 0 0
```
While, the `/etc/sambacreds` should be:
```
username=USERNAME
password=PASSWORD
```

Don't forget to lock it with `chmod 600 /etc/sambacreds`

And, when adding smb shares to fstab, don't forget to:
```
systemctl enable systemd-networkd-wait-online
```

## Chrooting
Chroot into `/mnt` with `arch-chroot /mnt` and run the following commands:
```
ln -sf /usr/share/zoneinfo/COUNTRY_OR_REGION/AREA
hwclock --systohc
```
Install the necessary packages with `pacman -S vi vim git sudo man-db curl`

Edit the `/etc/locale.gen` file, uncommenting the preferred locale lines:
```
#en_US.UTF-8 UTF-8
#ja_JP.UTF-8 UTF-8
#pt_BR.UTF-8 UTF-8
```
Edit locale.conf as well, inserting `LANG=en_US.UTF-8`

Generate the locale with `locale-gen`

## Users and Hostname
Create your hostname and insert it into `/etc/hostname`

Edit `/etc/hosts` and add the following lines:
```
127.0.0.1	localdomain
::1		localdomain
127.0.1.1	HOSTNAME.localdomain	HOSTNAME
```

Add your user with `useradd -m USERNAME` and change their password with `passwd USERNAME`

Don't forget to change root password with `passwd`

Mod the user with
```
usermod -aG wheel,audio,video,optical,storage,games,users,input <username>
```
Change the wheel group permission with `visudo`, uncommenting:
```
# %wheel ALL=(ALL) ALL
```

## Setting up boot with grub
Install the necessary packages:
```
pacman -S grub efibootmgr dosfstools os-prober mtools
```

Create `/boot/EFI` with `mkdir`

Setup GRUB:
```
mount /dev/BOOT_PARTITION /boot/EFI
grub-install --target=x86_64-efi --bootloader-id=grub_uefi --recheck
grub-mkconfig -o /boot/grub/grub.cfg
```
# [Post Install](/post_install.md)
