Copyright (C) 2020 The LineageOS Project
 
The Xioami Mi A1 (codenamed _"tissot"_) is a smartphone from Xioami.
It was released in September 2017.

## Spec Sheet

| Feature                    | Specification                     |
| :------------------------- | :-------------------------------- |
| CPU                        | Octa-core 2.0 GHz Cortex-A53      |
| Chipset                    | Qualcomm MSM8953 Snapdragon 625   |
| GPU                        | Adreno 506                        |
| Memory                     | 4 GB                              |
| Shipped Android Version    | 7.1.1                             |
| Last Stock Android Version | 9.0                               |
| Storage                    | 32 or 64 GB                       |
| MicroSD                    | Up to 256 GB                      |
| Battery                    | 3080 mAh (non-removable)          |
| Dimensions                 | 155.4 x 75.8 x 7.3 mm             |
| Display                    | 1920x1080 pixels, 5.5 (~401 PPI)  |
| Rear Camera                | 12 MP Dual-camera , LED flash     |
| Front Camera               | 5 MP                              |
| Release Date               | September 2017                    |


## Compile
```
execute these:

```
. build/envsetup.sh
lunch omni_tissot-eng
mka recoveryimage
```

To test it:

```
fastboot boot out/target/product/tissot/recovery.img
```

### Device picture

![Mi A1](https://camo.githubusercontent.com/635fb336bc97147d31d59c043c8f98264af8941f/68747470733a2f2f312e62702e626c6f6773706f742e636f6d2f2d56526a6a7237574945544d2f576439695375754c3665492f414141414141414142506b2f384735516553635978323471763136756a5147502d37546145396e56554e674151434c63424741732f733630302f6d692d61315f616c6c636f6c6f7273312e706e67 "Mi A1")
