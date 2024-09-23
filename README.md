# zerotier_1.4.6_mipsel-3.4
本库是手动编译的zerotier_1.4.6_mipsel-3.4.ipk，适用于mt7621 1004Kc架构，mipsel-3.4，解决了WARNING: ioctl() failed setting up Linux tap device (set MAC)的问题

这是高于1.4.6的版本可能会产生的错误，现象为加入网络后无法与其他节点通信
![image](https://github.com/user-attachments/assets/58417d6d-ffb5-45cb-92d4-307a7a7204bb)

具体解决方法详见issue
[zerotier/ZeroTierOne #issue1524](https://github.com/zerotier/ZeroTierOne/issues/1524)
